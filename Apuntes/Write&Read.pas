program WyR;
    // Ejecutar el programa para entender un poco mejor
var
    //Espacio para delcarar variables
    nombre: String[20];
begin
{
    Los comentarios son estas secciones donde uno puede escribir sin alterar la ejecucion del programa.
    Comentario por linea se hace con dos barras --> /, y el comentario multilinea se hace con llaves como se ve en este caso.
}

{  
    Write & WriteLN
    Read  & ReadLN

    Al momento de ejecutar el programa: 

    Write muestra un mensaje en pantalla en la terminal donde se ejecuta el programa
    y el read permite que se ingresen valores desde el teclado, los cuales se asignan a una variable que nosotros especifiquemos
    entre ().
}

//Ejemplo (Ejecutá el programa cuantas veces necesites y guiate con estos comentarios)

    write('Sirve para mostrar este mensaje, pidiendo que ingrese tu nombre ---> '); 
// Y con este read, lo que vos escribas, se almacenará en la variable String_1    
    readln(nombre);
   
   
    writeln('Hola ',nombre,'!');
    writeln('>>> Presiona ENTER <<<');readln();

// Fijate como en el primer write no usé 'Ln'.
{
    Con el 'Ln' pegado al Write o al Read (ya sea WriteLn o ReadLn), lo que hace es
    un salto de linea en la terminal, por lo que cada linea siguiente se 
    mostrara una linea abajo.

    Al tener el primer write sin Ln, tu nombre lo escribis a la derecha del mensaje
    Y al tener ese primer read con Ln, una vez ingresas tu nombre, el siguiente mensaje aparece abajo
}


end.