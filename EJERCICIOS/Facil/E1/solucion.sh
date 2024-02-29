#!/bin/bash

#####################################
#                                   #
#   Autor: Sebastian J. Gutierrez   #
#                                   #
#####################################

# Pre: --
# Post: retorna el valor absoluto del numero entrado
convertirPositivo(){
    local numero=$1   # Guarda en una variable local el primer argumento de la funcion
    
    local resultado  # Define una variable local para el resultado
    if [[ $numero -lt 0 ]]; then    # Si el numero es menor que 0
        let resultado=-$numero
    else
        let resultado=$numero
    fi

    echo $resultado # Muestra el valor absoluto del parametro entrado
}

# Funcion principal del script
main(){
    local numero    # Creacion de una variable local para ahorrar memoria
    read -p "Introduce un número: " numero
    
    local regex='^-?[0-9]+$'    # Expresion regular para asegurarnos que es un número

    if ! [[ $numero =~ $regex ]]; then
        printf "ERROR - No es un valor válido\n" >&2    # Mensaje de error redirigido al canal de errores
        exit 2  # Salida con error de compilacion
    fi

    local resultado=$(convertirPositivo "$numero") # En resultado guardamos el resultado retornado de la funcion convertirPositivo con parametro numero
    printf "El valor absoluto es: %s\n" "$resultado" 
}

# Llama a la funcion principal
main
