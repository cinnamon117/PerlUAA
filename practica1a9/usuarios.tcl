# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 3 - Procesamiento de archivos

set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo

set usuarios [split $contenido "\n"]

set contador 0

foreach usuario $usuarios {
    if {$usuario ne ""} {
        incr contador
        puts "$contador. $usuario"
    }
}

puts ""
puts "Total: $contador usuarios"
