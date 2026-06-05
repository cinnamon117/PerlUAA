#!/bin/bash

# 1. Solicitar el nombre
echo "Introduce tu nombre:"
read nombre

# 2. Solicitar la edad
echo "Introduce tu edad:"
read edad

# 3. Mostrar el mensaje de saludo
echo "Hola $nombre, tienes $edad años."

# 4. Calcular la edad en 10 años
# Usamos $(( ... )) para indicarle a Bash que haga una operación aritmética
edad_futura=$((edad + 10))

# 5. Mostrar el resultado del cálculo
echo "Edad en 10 años: $edad_futura"
