#!/usr/bin/perl

# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 5 - Uso de arreglos dias de la semana

@dias = (
"Lunes",
"Martes",
"Miercoles",
"Jueves",
"Viernes",
"Sabado",
"Domingo"
);

print "Dias de la semana:\n\n";

foreach $dia (@dias){
    print "$dia\n";
}

$total = scalar(@dias);

print "\nTotal de dias: $total\n";
