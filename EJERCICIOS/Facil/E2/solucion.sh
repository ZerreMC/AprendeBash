#!/bin/bash

#####################################
#                                   #
#   Autor: Sebastian J. Gutierrez   #
#                                   #
#####################################

cat archivo.log | grep "ERROR" | sort | uniq -c | sort -nr

# 1. "cat archivo.log" lee y muestra el contenido de archivo.log y se pasa al siguiente pipeline.
# 2. "grep "ERROR" " filtra las líneas con contenido ERROR y se pasa al siguiente pipeline.
# 3. "sort" ordena las líneas de entrada alfabéticamente.
# 4. "uniq -c" elimina las líneas duplicadas consecutivas. (como solo elimina las duplicadas si son consecutivas por eso es necesario el sort anterior)
# 5. "sort -nr" ordena las líneas, con -n ordena los resultados numéricamente, con -r invierte el orden del sort haciéndolo descendente.
