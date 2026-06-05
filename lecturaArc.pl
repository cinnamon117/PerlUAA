#!/usr/bin/perl
use strict;
use warnings;

#abrir archivo de entrada
open(my $entrada, "<", "usuarios.txt")
    or die "No se pudo abrir usuarios.txt: $!";

#abrir archivo de salida
open(my $salida, ">", "usuarios_mayusculas.txt")
    or die "No se pudo crear usuarios_mayusculas.txt: $!";

#leer línea por línea, convertir a mayúsculas y guardar
while (my $linea = <$entrada>) {
    chomp($linea);
    print $salida uc($linea) . "\n";
}

#cerrar archivos
close($entrada);
close($salida);

print "Archivo usuarios_mayusculas.txt generado correctamente.\n";
