#!/usr/bin/tclsh
#Actividad 9, Suarez, V.V.


#Rutinas de procedimientos
proc mostrarHostname {} {
    puts "\nEquipo: [exec hostname]\n"
}

proc mostrarUsuario {} {
    puts "\nUsuario: $::env(USER)\n"
}

proc mostrarFecha {} {
    puts "\n Fecha y hora: [clock format [clock seconds] -format "%d-%B-%Y, %H:%M:%S"]\n"
}

proc listarArchivos {} {
    puts "\nArchivos del directorio actual:"
    puts [exec ls]
    puts ""
}

proc mostrarDisco {} {
    puts "\nEspacio libre en disco: "
    puts [exec df -h]
    puts ""
}

proc buscarArchivo {} {
    puts -nonewline "Ingrese nombre del archivo: "
    flush stdout
    gets stdin archivo

    if {[file exists $archivo]} {
        puts "Archivo encontrado."
    } else {
        puts "Archivo no encontrado."
    }
}

proc mostrarUsuarios {} {
    if {[file exists "usuarios.txt"]} {
        set archivo [open "usuarios.txt" r]
        set contenido [read $archivo]
        close $archivo

        puts "\nContenido de usuarios.txt:"
        puts $contenido
    } else {
        puts "El archivo usuarios.txt no existe."
    }
}

proc generarReporte {} {
    set reporte [open "reporte_sistema.txt" w]

    puts $reporte "====================="
    puts $reporte " REPORTE DEL SISTEMA "
    puts $reporte "====================="
    puts $reporte ""
    puts $reporte "Equipo: [exec hostname]"
    puts $reporte "Usuario: $::env(USER)"
    puts $reporte "Fecha: [clock format [clock seconds] -format "%d-%B-%Y, %H:%M:%S"]"
    puts $reporte "Kernel: [exec uname -r]"

    set memoria [exec free -h]
    puts $reporte "\nMemoria disponible:"
    puts $reporte $memoria

    set disco [exec df -h]
    puts $reporte "\nEspacio en disco:"
    puts $reporte $disco

    close $reporte

    puts "Reporte generado correctamente: reporte_sistema.txt"
}

while {1} {
    puts "====================================="
    puts " SISTEMA DE ADMINISTRACIÓN LINUX "
    puts "====================================="

    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir"

    puts -nonewline "Seleccione una opción: "
    flush stdout
    gets stdin opcion

    switch $opcion {
        1 { mostrarHostname }
        2 { mostrarUsuario }
        3 { mostrarFecha }
        4 { listarArchivos }
        5 { mostrarDisco }
        6 { buscarArchivo }
        7 { mostrarUsuarios }
        8 { generarReporte }
        9 { 
            puts "\nGracias por utlizar el sistema."
            break
        }
        default {
            puts "\nOpción no válida.\n"
        }
    }
}