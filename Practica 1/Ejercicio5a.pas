program Ejercicio5a;
const
    corte = 0;
var
    num, cant:integer;
begin
    cant:=0;
    write('Ingrese numero: '); readln(num);
    while (num <> corte) do
        begin
            cant:= cant+1;
            write('Ingrese numero: '); readln(num);
        end;
    write('Cantidad de numeros leido: ',cant);
end.