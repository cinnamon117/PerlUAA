#!/usr/bin/perl
use strict;
use warnings;

# Arreglo con los días de la semana
my @dias = ("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");

# Mostrar todos los días
foreach my $dia (@dias) {
    print "$dia\n";
}

# Mostrar cantidad de elementos
my $total = scalar @dias;
print "\nTotal de días: $total\n";
