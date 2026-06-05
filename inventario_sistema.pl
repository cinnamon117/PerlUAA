#!/usr/bin/perl
#Actividad 8, Suarez, V.V.
use strict;
use warnings;

my $hostname = `hostname`;
chomp($hostname);

my $kernel = `uname -r`;
chomp($kernel);

my $memoria = `free -h | grep Mem | awk '{print \$2}'`;
chomp($memoria);

my $disco = `df -h / | tail -1 | awk '{print \$4}'`;
chomp($disco);

open(my $fh, '>', 'reporte.txt') 
    or die "No se pudo abrir el archivo: $!";

print $fh "=== REPORTE DEL SISTEMA ===\n";
print $fh "Hostname: $hostname\n";
print $fh "Kernel: $kernel\n\n";
print $fh "Memoria disponible:\n $memoria\ns\n";
print $fh "Espacio libre en disco:\n $disco\n";

close($fh);

print "Reporte del sistema guardado en 'reporte.txt'\n";