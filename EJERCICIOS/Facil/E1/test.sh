#!/bin/bash

#####################################
#                                   #
#   Autor: Sebastian J. Gutierrez   #
#                                   #
#####################################


testing(){
    local valorInicial=$1
    local valorEsperado=$2

    local resultado=$(echo "$valorInicial" | ./absoluto.sh | grep -o '[0-9]*')

    printf "\nPrueba con valor %s: " "$valorInicial"

    if [[ "$resultado" -eq "$valorEsperado" ]]; then
        echo -e "\e[1;32m Prueba superada\e[0m"
    else 
        echo -e "\e[1;31m Prueba no superada\e[0m"
        exit 1
    fi
}

# Función principal del script de prueba
main(){
    
    # Test con números positivos
    testing 1 1
    testing 1000000 1000000

    # Test con números negativos
    testing -1 1
    testing -1000000 1000000
    
    # Test con el 0
    testing 0 0

    echo -e "\e[42mEjercicio aprobado\e[0m"
}

# Llama a la funcion principal
main
