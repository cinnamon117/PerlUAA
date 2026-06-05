#!/usr/bin/perl

# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 8 - Inventario del sistema

$hostname = `hostname`;
$kernel = `uname -r`;
$memoria = `free -h | grep Mem`;
$disco = `df -h /`;

open(REPORTE,">reporte.txt");

print REPORTE "===== REPORTE DEL SISTEMA =====\n\n";
print REPORTE "Hostname:\n$hostname\n";
print REPORTE "Kernel:\n$kernel\n";
print REPORTE "Memoria disponible:\n$memoria\n";
print REPORTE "Espacio libre en disco:\n$disco\n";

close(REPORTE);

print "Reporte generado en reporte.txt\n";
