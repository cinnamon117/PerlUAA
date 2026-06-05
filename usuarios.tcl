#abrir el archivo en modo lectura
set archivo [open "usuarios.txt" r]

#leer todo el contenido
set contenido [read $archivo]

#cerrar el archivo
close $archivo

#convertir el contenido en una lista de líneas
set usuarios [split [string trim $contenido] "\n"]

#mostrar usuarios numerados
set contador 1
foreach usuario $usuarios {
    puts "$contador. $usuario"
    incr contador
}

#mostrar total
puts ""
puts "Total: [llength $usuarios] usuarios"
