program Ejercicio9;
var
    mes: integer;
    max_mes: integer;
    valor, max_valor: real;
begin
    max_valor:= -1;
    for mes:=1 to 12 do
        begin
            write('Ingrese valor de inflacion: '); readln(valor);
            if(valor>max_valor) then
                begin
                    max_valor:= valor;
                    max_mes:= mes;
                end;
        end;
    writeln('Mes con mayor inflacion: ', max_mes,' de %',max_valor:2:2);
end.