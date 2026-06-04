#!/usr/bin/tclsh
#Actividad 7, Suarez, V.V.

set equipo [exec hostname]

set usuario $::env(USER)

set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

puts "=== REPORTE DEL SISTEMA ===\n"

puts "Equipo: $equipo\n"
puts "Usuario: $usuario\n"
puts "Fecha: $fecha\n"