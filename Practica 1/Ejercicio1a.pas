program ejercicio1a;
var
    num_1,num_2: integer;
    prom: real;
begin
    write('Ingrese el primer numero: '); readln(num_1);
    write('Ingrese el segundo numero: '); readln(num_2);
    prom:= (num_1 + num_2) / 2;
    write('Promedio entre los numeros: ', prom:2:2);
end.

