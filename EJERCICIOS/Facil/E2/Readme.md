# Script de Análisis de Errores en Logs
## Enunciado
Se requiere crear un script llamado `analisisError.sh` que analice un archivo de registros (logs) para identificar y contar las líneas que contienen el término "ERROR". Este script deberá ordenar estos errores por su frecuencia de aparición, de la más frecuente a la menos frecuente, y mostrar el resultado en la salida estándar.

## Ejemplos de ejecución
```bash
$ ./analizaErrores.sh
      3 ERROR Fallo al enviar email de notificación
      3 ERROR Fallo al cargar el módulo de autenticación
      3 ERROR Conexión perdida con el servidor de base de datos
      1 ERROR El archivo config.xml no se encontró
```

## Condiciones
* Para que el script test corrija tu código es necesario que lo llames `analisisError.sh`.
* Descarga el archivo `archivo.log` y ponlo en el mismo directorio donde ejecutes tu script
* El código del script debe hacerse en una sola línea

## Consejos
* Investiga y comprende los siguientes términos y conceptos para mejorar tu script y evitar errores comunes:
    - `cat`, pipe y `grep`
* No hagas todas las funciones a la vez, comprueba una por una a la hora de realizar el script
