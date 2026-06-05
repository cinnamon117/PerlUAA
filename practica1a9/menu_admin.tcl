# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Sistema de Administracion Linux

proc mostrarHostname {} {
    puts "Equipo: [exec hostname]"
}

proc mostrarUsuario {} {
    puts "Usuario: $::env(USER)"
}

proc mostrarFecha {} {
    puts "Fecha y hora: [clock format [clock seconds]]"
}

proc listarArchivos {} {
    foreach archivo [glob *] {
        puts $archivo
    }
}

proc mostrarDisco {} {
    puts [exec df -h]
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

    if {[file exists usuarios.txt]} {

        set f [open usuarios.txt r]
        puts [read $f]
        close $f

    } else {

        puts "usuarios.txt no existe"

    }
}

proc generarReporte {} {

    set reporte [open reporte_sistema.txt w]

    puts $reporte "REPORTE DEL SISTEMA"
    puts $reporte ""
    puts $reporte "Equipo: [exec hostname]"
    puts $reporte "Usuario: $::env(USER)"
    puts $reporte "Fecha: [clock format [clock seconds]]"
    puts $reporte "Kernel: [exec uname -r]"
    puts $reporte ""
    puts $reporte "Memoria disponible:"
    puts $reporte [exec free -h]
    puts $reporte ""
    puts $reporte "Espacio en disco:"
    puts $reporte [exec df -h]

    close $reporte

    puts "Reporte generado correctamente."
}

while {1} {

    puts ""
    puts " SISTEMA DE ADMINISTRACION LINUX"
    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir"

    puts -nonewline "Seleccione una opcion: "
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
            puts "Gracias por utilizar el sistema."
            break
        }

        default {
            puts "Opcion invalida."
        }
    }
}
