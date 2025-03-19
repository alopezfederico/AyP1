{program Ejercicio6;
const
    max = 10;
var 
    i, num, mayor:integer;
begin
    mayor:= -1;
    i:=0;
    while (i<>max) do
        begin
            write('Ingrese numero: '); readln(num);
            i:= i+1;
            if (num>mayor)then
                mayor:= num;
        end;
    writeln('El numero mas grande ingresado es: ', mayor);
end.}

program Ejercicio6;
const
    max = 10;
var 
    i, num, mayor, pos:integer;
begin
    mayor:= -1;
    for i:= 1 to max do
        begin 
            write('Ingrese numero: '); readln(num);
            if (num>mayor) then
                begin
                    mayor:=num;
                    pos:=i;
                end;
        end;
    writeln('El numero mas grande ingresado es: ', mayor,' ubicado en la posicion ',pos);
end.