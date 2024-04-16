#!/bin/bash

#####################################
#                                   #
#   Autor: Sebastian J. Gutierrez   #
#                                   #
#####################################

salidaEsperada="3 ERROR Fallo al enviar email de notificación
3 ERROR Fallo al cargar el módulo de autenticación
3 ERROR Conexión perdida con el servidor de base de datos
1 ERROR El archivo config.xml no se encontró"

contarLineas() {
    local nLineas=$(awk 'NR==1 && /^#!/{next} /^[[:space:]]*#/{next} /^[[:space:]]*$/{next} {command_count++} END{print command_count+0}' "$1")
    if [ "$nLineas" -ne 1 ]; then
        echo -e "\e[1;31m Prueba no aceptada: El script $1 debe contener solo una línea de comandos.\e[0m"
        exit 1
    fi
}

contarPipes() {
    local nPipes=$(grep -o '|' "$1" | wc -l)
    if [ "$nPipes" -eq 0 ]; then
        echo -e "\e[1;31m Prueba no aceptada: El script $1 debe utilizar al menos un pipe '|'.\e[0m"
        exit 1
    fi
}

comprovarSalida() {
    local salida=$(bash "$1")
    if diff <(echo "$salida") <(echo "$salidaEsperada") --ignore-all-space > /dev/null; then
        echo -e "\e[1;32m Prueba superada: La salida del script $1 es correcta\e[0m"
    else
        echo -e "\e[1;31m Prueba no superada: La salida del script $1 no es correcta\e[0m"
        echo "Se esperaba:"
        echo "$salidaEsperada"
        echo "Pero se obtuvo:"
        echo "$salida"
        exit 1
    fi
}

main() {
    local script="analisisError.sh"

    echo -e "\e[1;34m Comenzando pruebas para $script...\e[0m"

    contarLineas "$script"
    contarPipes "$script"
    comprovarSalida "$script"

    echo -e "\e[1;32m Ejercicio superado\e[0m"
}

main "$@"
