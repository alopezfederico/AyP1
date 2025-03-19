program Ejercicio1b;
var 
    a,b: integer;
begin
    write('Ingrese el primer numero: '); readln(a);
    write('Ingrese el segundo numero: '); readln(b);
    if (a>b) then
      writeln('El numero ', a,' es mayor que ',b)
    else
        if(a<b)then
          writeln('El numero ',b,' es mayor que ',a)
        else 
            writeln('Los numeros son iguales');
end.