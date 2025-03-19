program Ejercicio4;
const
    cant = 20;
var
    n, suma, i, mayor:integer;
begin
    i:=1;
    suma:=0;
    mayor:=0;
    while (i<>cant) do
        begin
            write('Ingrese numero: '); readln(n);
            suma:= suma + n;
            if (n>12)then
                mayor:= mayor+1;
            i:=i+1;
        end;
    writeln('Suma total: ', suma);
    wirteln('Cantidad de numeros mayor a 12: ',mayor);
end.
