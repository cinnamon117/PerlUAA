# Práctica: Automatización en Linux con Tcl y Perl

## Objetivo

Al finalizar la práctica, el estudiante será capaz de:

* Crear scripts en Tcl y Perl.
* Manipular archivos y directorios desde scripts.
* Leer y procesar información de archivos de texto.
* Automatizar tareas comunes de administración en Linux.
* Desarrollar aplicaciones de consola mediante menús interactivos.
* Comparar las diferencias entre Tcl y Perl.

## Duración

6 a 8 horas.

## Requisitos

* Linux (Ubuntu, Debian, Fedora, Rocky Linux, etc.).
* Acceso a terminal.
* Tcl instalado.
* Perl instalado.

### Verificación

```bash
tclsh
```

```bash
perl -v
```

---

# Parte 1: Introducción a Tcl

## Actividad 1: Hola Mundo

Crear un archivo llamado:

```text
hola.tcl
```

Contenido:

```tcl
puts "Hola Mundo desde Tcl"
```

Ejecutar:

```bash
tclsh hola.tcl
```

### Entregable

Captura de pantalla mostrando la ejecución.

---

## Actividad 2: Variables y operaciones

Crear un script que:

1. Solicite nombre.
2. Solicite edad.
3. Muestre:

```text
Hola Juan, tienes 20 años.
```

Además calcular:

```text
Edad en 10 años: 30
```

---

## Actividad 3: Procesamiento de archivos

Crear un archivo:

```text
usuarios.txt
```

Contenido:

```text
Juan
Ana
Pedro
Luis
Maria
```

Crear un script Tcl que:

* Lea el archivo.
* Cuente cuántos usuarios existen.
* Muestre la lista numerada.

Salida esperada:

```text
1. Juan
2. Ana
3. Pedro
4. Luis
5. Maria

Total: 5 usuarios
```

---

# Parte 2: Introducción a Perl

## Actividad 4: Hola Mundo

Crear:

```text
hola.pl
```

Contenido:

```perl
#!/usr/bin/perl

print "Hola Mundo desde Perl\n";
```

Permisos:

```bash
chmod +x hola.pl
```

Ejecutar:

```bash
./hola.pl
```

---

## Actividad 5: Uso de arreglos

Crear un arreglo con los días de la semana.

Mostrar todos los días y posteriormente indicar cuántos elementos contiene el arreglo.

---

## Actividad 6: Lectura de archivos

Utilizar el archivo `usuarios.txt`.

Crear un script Perl que:

* Lea el archivo.
* Convierta los nombres a mayúsculas.
* Genere el archivo:

```text
usuarios_mayusculas.txt
```

Ejemplo:

```text
JUAN
ANA
PEDRO
LUIS
MARIA
```

---

# Parte 3: Administración de Linux

## Actividad 7: Inventario del sistema con Tcl

Crear un script que obtenga:

* Nombre del equipo.
* Fecha actual.
* Usuario actual.

Mostrar un reporte similar a:

```text
=== REPORTE DEL SISTEMA ===

Equipo: servidor01
Usuario: alumno
Fecha: 2026-05-29
```

---

## Actividad 8: Inventario del sistema con Perl

Generar un reporte más completo con:

* Hostname.
* Kernel.
* Memoria disponible.
* Espacio libre en disco.

Guardar la información en:

```text
reporte.txt
```

---

# Parte 4: Menú Interactivo en Tcl

## Actividad 9: Sistema de Administración Linux

### Objetivo

Desarrollar una aplicación de consola en Tcl que permita al usuario seleccionar diferentes opciones desde un menú principal.

### Archivo

```text
menu_admin.tcl
```

### Menú Principal

```text
=================================
 SISTEMA DE ADMINISTRACIÓN LINUX
=================================

1. Mostrar nombre del equipo
2. Mostrar usuario actual
3. Mostrar fecha y hora
4. Listar archivos del directorio actual
5. Mostrar espacio libre en disco
6. Buscar archivo
7. Mostrar contenido de usuarios.txt
8. Generar reporte del sistema
9. Salir

Seleccione una opción:
```

### Funcionalidad

#### Opción 1

Mostrar el nombre del equipo.

#### Opción 2

Mostrar el usuario actual.

#### Opción 3

Mostrar fecha y hora actual.

#### Opción 4

Listar los archivos del directorio actual.

#### Opción 5

Mostrar el espacio disponible utilizando:

```bash
df -h
```

#### Opción 6

Solicitar un nombre de archivo y verificar si existe.

Ejemplo:

```text
Ingrese nombre del archivo: reporte.txt
Archivo encontrado.
```

o

```text
Archivo no encontrado.
```

#### Opción 7

Mostrar el contenido de:

```text
usuarios.txt
```

#### Opción 8

Generar un archivo:

```text
reporte_sistema.txt
```

El reporte debe contener:

```text
================================
 REPORTE DEL SISTEMA
================================

Equipo:
Usuario:
Fecha:
Kernel:
Memoria disponible:
Espacio en disco:
```

#### Opción 9

Salir del programa.

```text
Gracias por utilizar el sistema.
```

### Restricciones

El programa debe utilizar:

#### Ciclos

```tcl
while {1} {
}
```

#### Condicionales

```tcl
switch
```

o

```tcl
if
```

#### Procedimientos

Implementar al menos los siguientes procedimientos:

```tcl
proc mostrarHostname {} {}
proc mostrarUsuario {} {}
proc mostrarFecha {} {}
proc listarArchivos {} {}
proc generarReporte {} {}
```

#### Manejo de archivos

Utilizar:

```tcl
open
read
puts
close
```

---

# Parte 5: Proyecto Integrador

## Actividad 10: Analizador de Logs

Crear un directorio:

```text
logs/
```

con los siguientes archivos:

```text
error.log
access.log
system.log
```

### Versión Tcl

Desarrollar un script que:

* Recorra el directorio.
* Liste todos los archivos `.log`.
* Muestre el tamaño de cada archivo.

Ejemplo:

```text
error.log     120 KB
access.log    450 KB
system.log    85 KB
```

### Versión Perl

Desarrollar un script que:

* Cuente líneas de cada archivo.
* Identifique cuántas contienen la palabra:

```text
ERROR
```

Ejemplo:

```text
Archivo: error.log

Líneas totales: 350
Errores: 45
```

---

# Reto Extra

Agregar una opción adicional al menú Tcl:

```text
10. Monitoreo de logs
```

La opción deberá:

* Buscar todos los archivos `.log`.
* Mostrar tamaño de cada archivo.
* Contar cuántas líneas contiene cada uno.

Ejemplo:

```text
error.log
Tamaño: 15 KB
Líneas: 120

access.log
Tamaño: 150 KB
Líneas: 2500
```

---

# Preguntas de Reflexión

1. ¿Qué ventajas tiene Perl para procesamiento de texto?
2. ¿Qué ventajas tiene Tcl para automatización?
3. ¿Qué diferencias observaste entre ambos lenguajes?
4. ¿Cuál utilizarías para tareas de administración de sistemas y por qué?
5. ¿Cómo integrarías Tcl o Perl con herramientas de Linux como `grep`, `awk` y `sed`?

---

# Criterios de Evaluación

La evaluación será binaria:

* Entregó.
* No entregó.

## Lista de Entregables

| Actividad    | Descripción                      | Estatus              |
| ------------ | -------------------------------- | -------------------- |
| Actividad 1  | Hola Mundo en Tcl                | Entregó / No entregó |
| Actividad 2  | Variables y operaciones en Tcl   | Entregó / No entregó |
| Actividad 3  | Procesamiento de archivos en Tcl | Entregó / No entregó |
| Actividad 4  | Hola Mundo en Perl               | Entregó / No entregó |
| Actividad 5  | Uso de arreglos en Perl          | Entregó / No entregó |
| Actividad 6  | Lectura de archivos en Perl      | Entregó / No entregó |
| Actividad 7  | Inventario del sistema con Tcl   | Entregó / No entregó |
| Actividad 8  | Inventario del sistema con Perl  | Entregó / No entregó |
| Actividad 9  | Menú interactivo en Tcl          | Entregó / No entregó |
| Actividad 10 | Proyecto integrador              | Entregó / No entregó |
| Reto Extra   | Monitoreo de logs                | Entregó / No entregó |

## Evidencias

Cada actividad deberá incluir:

* Código fuente.
* Evidencia de ejecución (captura de pantalla o demostración).
* Comentarios básicos en el código indicando autor y propósito.

## Entrega Final

Entregar un archivo comprimido (`.zip` o `.tar.gz`) con:

* Todos los scripts Tcl.
* Todos los scripts Perl.
* Archivos de prueba utilizados.
* Reportes generados.
* Evidencias solicitadas.


gh pr create --title "Your PR Title" --body "Your description here"


