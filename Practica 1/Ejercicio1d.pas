program Ejercicio1d;
var
    num: integer;
begin
    write('Ingrese numero: '); readln(num);
    if ( num mod 3 = 0) then 
        write('El numero es multiplo de 3')
    else 
        write ('El numero no es multiplo de 3');
end.