program Ejercicio12;
function potencia(i,n:integer):integer;
    var 
        x,suma:integer;
    begin
        suma:= i;
        for x:= 1 to n-1 do
            suma:= suma * i;
        potencia:= suma;
    end;

var
    i,n:integer;
begin
    write('Ingrese el numero: '); readln(i);
    write('Ingrese la potencia: '); readln(n);
    writeln('El resultado es: ', potencia(i,n));
end.