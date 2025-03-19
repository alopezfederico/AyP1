program Ejercicio7a;
const
    corte = 0;
var
    min_1, min_2, num, x: integer;
begin
    min_1:=310000;
    min_2:=31000;
    write('Ingrese numero: ');readln(num);
    while (num <> corte) do
        begin
            if (num<min_1) then
                begin
                    min_2:= min_1;
                    min_1:= num;
                end
            else
                if(num< min_2) then
                    min_2:=num;
            write('Ingrese numero: ------> '); readln(num);
        end;
    writeln('Numeros mas chicos leidos: ',min_1,' y ',min_2);
end.