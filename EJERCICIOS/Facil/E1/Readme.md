# Script de Conversión a Valor Absoluto

## Enunciado
Se necesita crear un script con el nombre `absoluto.sh` para convertir cualquier número en su valor absoluto. Cuando se ejecuta el script, este solicitará al usuario que introduzca un número, comprobará si es un valor válido y, en caso afirmativo, lo convertirá en su valor absoluto.

## Ejemplos de ejecución

```bash
$ ./absoluto.sh
Introduce un número: 5
El valor absoluto es: 5
```

```bash
$ ./absoluto.sh
Introduce un número: -1
El valor absoluto es: 1
```

```bash
$ ./absoluto.sh
Introduce un número: asdfg
ERROR - No es un valor válido
```

## Condiciones
* Para que el script test corrija tu código es necesario que lo llames `absoluto.sh`.
* El script `test.sh` deberá estar en el mismo directorio que el script `absoluto.sh`.
* Deberás usar el canal de errores cuando el parámetro no es válido

## Consejos
* Asegúrate de incluir la línea #!/bin/bash al inicio de tu script para definir el intérprete de comandos.
* Recuerda en dar permisos de ejecución a los scripts, para poder usarlos.
* Investiga y comprende los siguientes términos y conceptos para mejorar tu script y evitar errores comunes:
    - `read`, `echo` y `printf`
    - Expresión regular
    - Manejo de errores en Bash
    - Funciones en Bash
