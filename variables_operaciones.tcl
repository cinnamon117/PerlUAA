#!/usr/bin/tclsh
#Actividad 2, Suarez, V.V.

puts "Ingresa tu nombre: "
set nombre  [gets stdin]

puts "Ingresa tu edad: "
set edad  [gets stdin]

puts "Hola $nombre, tienes $edad"

set edad10 [expr {$edad + 10}]

puts "Edad en 10 años: $edad10"