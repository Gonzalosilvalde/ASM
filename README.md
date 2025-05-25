# Ensamblador x86-64 con NASM en Linux
Este repositorio contiene **todos los programas y ejercicios** que he implementado siguiendo el tutorial de NASM Assembly Language Tutorials (asmtutor.com). El objetivo es recopilar, organizar y versionar todo el código de ejemplo y los retos prácticos paso a paso.

## 📚 Contenido

- `01_hello_world/`  
  Mi primer “Hello, World” en ensamblador x86-64 usando NASM y syscall de Linux.
- `sys_exit`
  Finalizando un programa en ensamblador con sys_exit
- `Calcula longitud cadena`
  Calcular la longitud de una cadena en ensamblador. Similar a `strlen()` de `C`
- `Subrutinas`
  Las subrutinas son fragmentos de código reutilizables que llamas con `CALL` y cierras con `RET`. Al invocar `CALL`, la dirección de regreso se guarda en la pila y luego `RET` la "recupera" para continuar justo después de la llamada. Para no perder datos, antes de usar registros dentro de la subrutina puedes hacer `PUSH` y después `POP` para restaurarlos. 
  Similar a las funciones.
- `Include externos`
  Separar por archivos para mejorar el mantenimiento.
- `Fin de Cadena`
  Arreglar salida del anterior ejercicio.
- `Saltos de linea`
  Añadimos el salto de linea en la funcion en vez de añadirlo en el String.
- `Paso de Argumentos`
  Como pasar argumentos a los programas. Similar a como funciona `argc`, `argv` en `C`
- `Sección BSS`
  Sección extra para variables globales y estaticas que no se les da un valor inicial en el código.
- `Contar hasta 10`
  Incrementar un registro hasta 10 y pasar el número a ASCII para poder imprimirlo por pantalla
