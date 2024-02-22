# TARIFA DEL PARQUE DE ATRACCIONES

## Enunciado
Estás en un parque de atracciones y necesitas crear un script para determinar el precio de la entrada en función de la edad del cliente. El proceso continuará solicitando edades hasta que el usuario introduzca `-1` para terminar el programa. Los precios son los siguientes:

- Mayores de 18 años: 30€
- Entre 14 y 18 años: 20€
- Entre 6 y 13 años: 10€
- 5 años o menos: Entrada gratuita

Si se introduce una edad no válida (por ejemplo, un número negativo diferente de `-1` o un valor no numérico), el script debe enviar un mensaje de error al canal de errores y solicitar de nuevo la edad.

## Recomendaciones
- Comienza tu script con `#!/bin/bash` para indicar que debe ejecutarse con Bash.
- Usa el comando `read` para recoger la entrada del usuario.
- Implementa la validación de la entrada usando expresiones regulares o comprobando si la entrada es numérica.
- Busca qué son las redirecciones de canales en bash
- Recuerda comentar tu código para hacerlo más entendible para ti y para otros desarrolladores.
