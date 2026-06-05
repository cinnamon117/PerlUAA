#nombre
puts -nonewline "Ingresa tu nombre: "
flush stdout
gets stdin nombre

#edad
puts -nonewline "Ingresa tu edad: "
flush stdout
gets stdin edad

#mostrar datos
puts "Hola $nombre, tienes $edad años."

#calcular edad en 10 años
set edadFutura [expr {$edad + 10}]

puts "Edad en 10 años: $edadFutura"
