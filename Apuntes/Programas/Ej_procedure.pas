program Ej_procedure;
const
    corte = 0;

{
A continuacion pueden ver un proceso el cual se encarga de:
    Leer DNI y EDAD de personas, hasta que se ingresa un DNI = 0.

    Mientras se leen estos datos, voy guardando edad y dni de la persona con mayor edad.

    Atencion a que en los parámetros del proceso, estan pasados por REFERENCIA --> (VAR)
        
        Leer_y_guardar_el_maximo( >>>> var <<<< dato1, dato2 : tipo_dato)

    De esta manera, cuando usamos este proceso, lo que almacenen esos parametros "dato1" y "dato2"
    cuando salen del proceso se mantiene el valor que hayan almacenado en las variables que le fueron
    enviadas.

}

procedure Leer_y_guardar_el_maximo(var dni_max,edad_max:integer);
    var
        dni,edad:integer;
    begin
        write('Ingrese DNI: '); readln(dni);
        while (dni <> corte) do begin
            write('Ingrese edad: '); readln(edad);
            if (edad > edad_max) then begin
                edad_max:= edad;
                dni_max:= dni;
            end;
            
            write('Ingrese DNI: '); readln(dni);
        end;
    end;

var
    dni,edad:integer;
begin
    edad:= -1;

    Leer_y_guardar_el_maximo(dni,edad);

    write('DNI y edad de la persona mas grande: ',dni,' | ',edad);

end.

{ 
Al haber enviado al proceso las variables dni y edad.
    > Leer_y_guardar_el_maximo(dni,edad);

En el proceso se llaman (dni_max  y  edad_max)

Cuando en el proceso se modifiquen y éste termine de ejecutarse, al volver al programa principal
las variables dni y edad, serían modificadas siempre y cuando el proceso las haya modificado.
    
Por eso al volver, informa la edad y el dni de la persona con mayor edad.
}

{
A diferencia de FUNCTION: Usar un proceso te permite mas de un valor ya que estos
valores se devuelven mediante la manipulacion de los parámetros que le fueron enviados
siendo estos enviados por REFERENCIA (VAR dato : tipo_de_dato)
}