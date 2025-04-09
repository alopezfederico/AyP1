program Comunicaciones_en_programa;

{
 Cuando hablamos de comunicacion entre modulos es entender
 ¿Cual es el alcance que tienen las variables?

 Ya sabemos que existen las variables globales las cuales NO vamos a usar.

 Entonces... ¿como uso las variables locales del programa principal en otros modulos?

 Esto lo gestionamos mediante los parametros que recibe cada modulo, ya sea Funcion o Proceso.

 Los parámetros son esas "variables" que nosotros asignamos entre () seguido del nombre del modulo.

}
procedure Proceso_de_Ejemplo(parametro: integer);
    begin
      //Cuerpo del proceso
    end;

function Funcion_de_Ejemplo(parametro: integer): integer;
    begin
        Funcion_de_Ejemplo:= parametro;
    end;

{
    En estos ejemplos se puede var como estos modulos reciben elementos:
    
    Los PROCESOS pueden recibir parametros por Valor o por Referencia
    Depediendo de los elementos que enviemos por referencia, es la cantidad
    de elementos que "devuelve" el modulo: pueden ser 0,1 o mas elementos.parametro

    Las FUNCIONES no deben recibir parametros por referencia. Si bien se podría hacer,
    en la cursada de "prohibe" el envio de parametros por referencia a las Funciones.
    Por lo que las funciones devolverán 0 o 1 valor, el cual "almacenará" en su mismo nombre
    como se ve en el ejemplo de arriba.
    Es por eso que despues de los () donde se encuentran los parámetros, se especifica
    el tipo de dato que va a almacenar la funcion. 
}

procedure Proceso_devuelve_3elem (var num1, num2, num3:integer);
{ Tambien se pueden escribir de la forma( var num1:integer; var num2:integer.... )
    De cualquiera de las dos maneras significa que los parametros son pasados por referencia

DIFERENTE ES donde solamente uno tiene "var" adelante.
    procedure Proceso_devuelve_1(var num1: integer; num2,num3: integer);
}
    begin
        num1:= 1;
        num2:= 2;
        num3:= 3;
    end;

var
    variable1: integer;
    n1,n2,n3:integer;
begin
    Proceso_de_Ejemplo(variable1);
    writeln(Funcion_de_Ejemplo(variable1));

    writeln();

    Proceso_devuelve_3elem(n1,n2,n3);
    writeln(n1,' ',n2,' ',n3);
end.