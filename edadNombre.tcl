#!/usr/bin/tclsh
# Solicitar nombre
puts -nonewline "Ingresa tu nombre: "
flush stdout
gets stdin nombre

# Solicitar edad
puts -nonewline "Ingresa tu edad: "
flush stdout
gets stdin edad

# Mostrar mensaje
puts "Hola $nombre, tienes $edad anos."

# Calcular edad en 10 anos
set edad_futura [expr {$edad + 10}]
puts "Edad en 10 anos: $edad_futura"
