proc mostrarHostname {} {
    puts "\nEquipo: [exec hostname]"
}

proc mostrarUsuario {} {
    if {[info exists ::env(USER)]} {
        puts "\nUsuario: $::env(USER)"
    } else {
        puts "\nUsuario: $::env(USERNAME)"
    }
}

proc mostrarFecha {} {
    puts "\nFecha y hora: [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
}

proc listarArchivos {} {
    puts "\nArchivos del directorio actual:"
    foreach archivo [glob *] {
        puts $archivo
    }
}

proc mostrarDisco {} {
    puts "\nEspacio libre en disco:"
    puts [exec df -h]
}

proc buscarArchivo {} {
    puts -nonewline "\nIngrese nombre del archivo: "
    flush stdout
    gets stdin nombre

    if {[file exists $nombre]} {
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
        puts "\nNo existe usuarios.txt"
    }
}

proc generarReporte {} {

    set equipo [exec hostname]

    if {[info exists ::env(USER)]} {
        set usuario $::env(USER)
    } else {
        set usuario $::env(USERNAME)
    }

    set fecha [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]
    set kernel [exec uname -r]

    set memoria [exec free -h]
    set disco [exec df -h]

    set archivo [open "reporte_sistema.txt" w]

    puts $archivo "================================"
    puts $archivo " REPORTE DEL SISTEMA"
    puts $archivo "================================"
    puts $archivo ""
    puts $archivo "Equipo: $equipo"
    puts $archivo "Usuario: $usuario"
    puts $archivo "Fecha: $fecha"
    puts $archivo "Kernel: $kernel"
    puts $archivo ""
    puts $archivo "Memoria disponible:"
    puts $archivo $memoria
    puts $archivo ""
    puts $archivo "Espacio en disco:"
    puts $archivo $disco

    close $archivo

    puts "\nReporte generado: reporte_sistema.txt"
}


while {1} {

    puts "\n================================="
    puts " SISTEMA DE ADMINISTRACIÓN LINUX"
    puts "================================="
    puts ""
    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir"
    puts ""

    puts -nonewline "Seleccione una opción: "
    flush stdout

    gets stdin opcion

    switch $opcion {

        1 {mostrarHostname}
        2 {mostrarUsuario}
        3 {mostrarFecha}
        4 {listarArchivos}
        5 {mostrarDisco}
        6 {buscarArchivo}
        7 {mostrarUsuarios}
        8 {generarReporte}

        9 {
            puts "\nGracias por utilizar el sistema."
            break
        }

        default {
            puts "\nOpción inválida."
        }
    }
}
