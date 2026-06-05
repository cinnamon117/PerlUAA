#!/usr/bin/perl

#Actividad 5, Suarez, V.V.

@arreglo = (Lunes, Martes, Miercoles, Jueves, Viernes);

for ($i=0; $i<5; $i++) {
    print "$arreglo[$i]\n";
}

print "El arreglo tiene " . scalar(@arreglo) . " elementos\n";