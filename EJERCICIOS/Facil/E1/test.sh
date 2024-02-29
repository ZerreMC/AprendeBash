#!/bin/bash

#####################################
#                                   #
#   Autor: Sebastian J. Gutierrez   #
#                                   #
#####################################


testing(){
    local valorInicial=$1
    local valorEsperado=$2
    local tipoPrueba=$3

    local resultado

    if [ "$tipoPrueba" == "num" ]; then
        resultado=$(echo "$valorInicial" | ./absoluto.sh | grep -o '[0-9]*')
    else
        resultado=$(echo "$valorInicial" | ./absoluto.sh 2>&1 >/dev/null)
    fi

    printf "\nPrueba con valor %s: " "$valorInicial"

    if [[ "$resultado" == "$valorEsperado" ]]; then
        echo -e "\e[1;32m Prueba superada\e[0m"
    else
        echo -e "\e[1;31m Prueba no superada\e[0m"
        exit 1
    fi
}

# Función principal del script de prueba
main(){
    
    # Test con números positivos
    testing 1 1 num
    testing 1000000 1000000 num

    # Test con números negativos
    testing -1 1 num
    testing -1000000 1000000 num
    
    # Test con el 0
    testing 0 0 num

    # Test en el canal de errores
    testing "asdfgh" "ERROR - No es un valor válido" err

    echo -e "\e[42mEjercicio aprobado\e[0m"
}

# Llama a la funcion principal
main
