#!/usr/bin/tclsh
#Actividad 3, Suarez, V.V.

set archivo [open "usuarios.txt"]

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

puts "\nTotal: $contador usuarios"