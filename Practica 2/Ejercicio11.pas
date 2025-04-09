program Ejercicio11;
function factorial(num:integer):integer;
    var 
        x,suma:integer;
    begin
        suma:= num;
        for x:= 1 to num-1 do
            suma:= suma * x;
        factorial:= suma;
    end;

var
    n:integer;
begin
    write('Ingrese el numero: '); readln(n);
    writeln('El factorial de ',n,' es: ', factorial(n));
end.