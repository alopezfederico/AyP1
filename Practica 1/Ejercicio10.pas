program Ejercicio10;
const
    corte = 0;
var
    x,cant:integer;
    total,monto:real;
    max_dia,max_cant:Integer;
begin
    max_cant:= -1;
    total:=0;
    for x:= 1 to 31 do  
        begin
            write('Ingrese monto: '); readln(monto);
            while (monto <> corte) do
                begin
                    total := total + monto;
                    cant := cant + 1;
                    write('Ingrese monto: '); readln(monto);
                end;
            writeln('Cantidad de ventas para el dia ',x,': ', cant);
            cant:= 0;
        end;
    writeln('Total recaudado: $',total:2:2);
end.