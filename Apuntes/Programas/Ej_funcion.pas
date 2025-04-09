program Ej_funcion;

{Las variables globales se declaran en esta parte pero es muy importante entender que
    NO VAMOS A UTILIZAR VARIABLES GLOBALES EN ESTA CURSADA

Te muestro esto solo por el hecho de respetar que durante la materia explican esto
pero de cualquier manera su uso no es aplicado durante la cursada
}
var
    glob1,glob2:integer;
// FIN del espacio de declaracion de variables globales.



function Funcion_1(parametro1, parametro2: integer): integer ;
    begin
        Funcion_1:= parametro1 + parametro2;
    end;

// PROGRAMA PRINCIPAL
var
    num1,num2:integer;
    resultado: integer;

{
Esta parte de acá es el programa principal.

    Desde el prorgama principal es desde donde empieza a ejecutarse el programa

    Atencion a que en el programa principal, hice dos variables locales: num1, num2 de tipo integer

    Si yo quiero resolver una suma entre estos dos numeros, puedo utilizar una funcion

    Funcion_1 es la que voy a usar para resolver la suma entre estos dos numeros.
    Pero como la utilizo?

    Las funciones son las que devuelven un unico dato simple. 

    Una forma de usarla sería la siguiente
}
begin
    num1:= 20;
    num2:= 80;

    writeln();writeln();
    writeln('Numero 1: ', num1);
    
    writeln();writeln();
    writeln('Numero 2: ', num2);

    writeln();writeln();

    writeln(num1, ' + ',num2,' = ', Funcion_1(num1,num2));
    writeln();writeln();
{
    Lo que hice acá fue sin ir mas lejos imprimir directamente el valor que me devuelve la funcion

    Fijate como la funcion "almacena" el resultado. Por eso hay que declarar seguido del nombre y los 
    parametros de la funcion el TIPO DE DATO que va a almacenar, en este caso Integer.

    Si yo quisiera volver a utilizar el valor que me devuelve la funcion, es mejor almacenar ese
    valor que me devuelve en una variable para no tener que estar llamando dos veces a la funcion
}
    resultado:= Funcion_1(num1,num2);
    
    resultado:= Funcion_1(resultado,resultado);

    writeln('Sumar los resultados sumar dos veces Numero 1 + Numero 2: ', resultado);
    writeln();writeln();
end.