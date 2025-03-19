program Ejercicio5b;
const
    corte = 0;
    max =10;
var
    num, cant:integer;
begin
    cant:=0;
    write('Ingrese numero: '); readln(num);
    while (num <> corte) AND (cant<>max) do
        begin
            cant:= cant+1;
            write('Ingrese numero: '); readln(num);
        end;
    if(num<>corte)then
        writeln('No se ha ingresado el 0');
    write('Cantidad de numeros leido: ',cant);
end.