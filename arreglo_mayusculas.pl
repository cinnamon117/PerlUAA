#!/usr/bin/perl
#Actividad  6, Suarez, V.V.

use strict;
use warnings;

my $archivo = "usuarios.txt";

my $salida = "usuarios_mayusculas.txt";

open(my $in, "<", $archivo) or die "No se pudo abrir el archivo: $!";

open(my $out, ">", $salida) or die "No se pudo crear el archivo: $!";

while (my $linea = <$in>) {
    chomp($linea);
    my $mayuscula = uc($linea);
    print $out "$mayuscula\n";
}

close($in);
close($out);

print "Archivo con usuarios en mayúsculas creado\n";
