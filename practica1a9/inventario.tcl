# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 7 - Inventario del sistema

set hostname [exec hostname]
set usuario $::env(USER)
set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

puts "=== REPORTE DEL SISTEMA ==="
puts ""
puts "Equipo: $hostname"
puts "Usuario: $usuario"
puts "Fecha: $fecha"
