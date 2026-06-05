# Obtener nombre del equipo
set equipo [exec hostname]

# Obtener usuario actual
set usuario $::env(USER)

# Obtener fecha actual
set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

# Mostrar reporte
puts "=== REPORTE DEL SISTEMA ==="
puts ""
puts "Equipo: $equipo"
puts "Usuario: $usuario"
puts "Fecha: $fecha"
