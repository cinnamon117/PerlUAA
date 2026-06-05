#!/usr/bin/perl

# Autor: Jorge Luis Flores Gomez
# ID: 552393
# Actividad 6 - Lectura de archivos

open(ARCHIVO,"usuarios.txt") or die "No se pudo abrir";

open(SALIDA,">usuarios_mayusculas.txt");

while($linea=<ARCHIVO>)
{
    chomp($linea);
    print SALIDA uc($linea)."\n";
}

close(ARCHIVO);
close(SALIDA);

print "Archivo usuarios_mayusculas.txt generado correctamente\n";
