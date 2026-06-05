#!/usr/bin/perl
use strict;
use warnings;

# Obtener información del sistema
my $hostname = `hostname`;
chomp($hostname);

my $kernel = `uname -r`;
chomp($kernel);

my $memoria = `free -h | grep Mem`;
chomp($memoria);

my $disco = `df -h / | tail -1`;
chomp($disco);

# Crear archivo de reporte
open(my $archivo, ">", "reporte.txt")
    or die "No se pudo crear reporte.txt: $!";

print $archivo "=== REPORTE DEL SISTEMA ===\n\n";
print $archivo "Hostname: $hostname\n";
print $archivo "Kernel: $kernel\n";
print $archivo "Memoria disponible: $memoria\n";
print $archivo "Espacio libre en disco: $disco\n";

close($archivo);

print "Reporte generado en reporte.txt\n";
