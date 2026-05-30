#!/usr/bin/perl
use strict;
use warnings;

# Solicitar nombre
print "Ingresa tu nombre: ";
my $nombre = <STDIN>;
chomp($nombre); # Quita el salto de línea al presionar Enter

# Solicitar edad
print "Ingresa tu edad: ";
my $edad = <STDIN>;
chomp($edad);

# Mostrar el primer mensaje
print "Hola $nombre, tienes $edad años.\n";

# Calcular y mostrar la edad en 10 años
my $edad_futura = $edad + 10;
print "Edad en 10 años: $edad_futura\n";
