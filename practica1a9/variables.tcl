# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 2 - Variables y operaciones

puts -nonewline "Ingrese tu nombre: "
flush stdout
gets stdin nombre

puts -nonewline "Ingrese tu edad: "
flush stdout
gets stdin edad

set edadFutura [expr {$edad + 10}]

puts ""
puts "Hola $nombre, tienes $edad años."
puts "Edad en 10 años: $edadFutura"
