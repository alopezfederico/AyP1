# **ALGORITMOS Y PROGRAMACION 1**

### 1) Write & Read  (con Ln y sin Ln)

Cuando estamos haciendo un programa, va a ser muy frecuente que neciesitemos comunicarnos con la maquina, tanto para recibir mensajes o brindar datos por teclado.

Para esto sirve el write & read.

El write muestra mensajes en pantalla (cuando decimos en pantalla es en la terminal donde está siendo ejecutado el programa), y en esa misma terminal si nosotros usamos un read, es que vamos a poder ingresar los datos que necesitemos.

En este programa podes ver un poco como funcionan

[Write & Read (con Ln y sin Ln)](Write&Read.pas)

____

### 1) Variables

Cuando hacemos un programa vamos a hacer mucho uso de Variables. Para entender de forma facil qué son estas variables, imaginate una Cajita donde adentro va a almacenar algo.

En el lenguaje de programacion Pascal, nocostros necesitamos especificar qué es lo que va a almacenar cada caja que nosotros vayamos a utilizar.

Estas cajas van a almacenar diferentes tipos de datos: numericos, alfanumericos, boolean(verdadero o falso)

Dentro de los tipos:
- **Numericos** están los: Enteros & reales.
  
- **Alfanumericos** estan los: Strings & Char

Cada tipo especifico va a tener sus operadores posibles.

#### En resumen, los tipos de datos que vamos a utilizar van a ser los siguientes:



[Comprendiendo ENTEROS](Enteros.pas)

[Comprendiendo REALES](Reales.pas)

[Comprendiendo BOOLEANS](Booleans.pas)

[Comprendiendo STRINGS](Strings.pas)

[Comprendiendo CHAR](Char.pas) 

---

### 2) MODULOS

Al momento de resolver problemas tenemos que intentar organizar las tareas o hacer de ese problema general problemas mas pequeños.

Ejemplo dado en R_info (taller o curso de ingreso para cursar la materia actual):

Suponé que un robot tiene que subir una escalera desde la planta baja hasta el piso 1.
Éste es el prolema general, pero como sería llevar este problema a las tareas mas basicas o problemas mas minusculos que resuelvan este problema general?

Problema general:

     Subir un piso por las escaleras

Problemas pequeños: 

    repetir:
      - Levantar pierna derecha
      - Pisar con pierna derecha escalon siguiente
      - Levantar pierna izquierda
      - Pisar con pierna izquierda escalon siguiente
    Hasta llegar al piso 1

Cuando desarmamos un problema grande en problemas mas pequeños, nos facilitamos el entender como ir armando la estructura del programa.

Para eso tambien tenemos estructuras dentro de Pascal que nos van a servir para MODULARIZAR estos problemas / enunciados.

#### PROCEDURE y FUNCTION

Ambos apuntan a lo mismo (resolver problemas mas pequeños del problema general), pero cada uno tiene algo muy importante que los diferencia: **Cuantos datos devuelven.**

Cuando hablamos de estos datos que "devuelven" hablamos de que cuando nosotros tenemos que usar estos modulos, le podemos brindar variables con las cuales van a trabajar. Estas variables que nosotros mandamos le llegan a estos modulos como "parámetros"

Estos parámetros son formas de comunicarnos entre el programa principal dentro de pascal, con los modulos que nosotros vayamos creando.

[Ejemplo FUNCION](Ej_funcion.pas)

[Ejemplo PROCEDURE](Ej_procedure.pas)

[Comprendiendo comunicacion de los programas](Comunicaciones_en_programa.pas)


### **Tipos de datos complejos**

Acá nos encontramos con formas de almacenar estos datos un poco mas complejos, donde no se trata unicamente de una
caja sino de una estructura la cual va a organizar estas cajas.

Cada una de estas estructuras va a tener sus caracteristicas, pros y contras.

#### **REGISTRO**

El registro es una forma de organizar informacion de manera que bajo el nombre que nosotros le asignemos, podremos acceder a los campos que este registro va a contener almacenando los respectivos datos a almacenar.

No es mas complejo que entender que si tenemos que ingresar informacion de una persona, donde de cada persona
se conoce DNI, nombre, apellido, nombre y edad; se puede organizar la informacion en un registro.


