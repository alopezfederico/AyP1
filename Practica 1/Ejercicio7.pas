program Ejercicio7;
const
    max = 1000;
var
    min_1, min_2, num, x: integer;
begin
    min_1:=33333;
    for x:= 1 to max do
        begin
            write('Ingrese numero: ------> '); readln(num);
            if (num<min_1) then
                begin
                    min_2:= min_1;
                    min_1:= num;
                end
            else
                if(num< min_2) then
                    min_2:=num;
        end;
    writeln('Numeros mas chicos leidos: ',min_1,' y ',min_2);
end.