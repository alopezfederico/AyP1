program Ejercicio8;
const
    corte = 0;
var 
    cod, cant, mayor_cant, cod_mayor_cant, cod_mayor_total: integer;
    mayor_total, precio, total:real;
begin
    mayor_cant:= -1;
    mayor_total:= -1;
    cod:=-1;
    while (cod<>corte) do
        begin
            write('Ingrese codigo: '); readln(cod);
            write('Ingrese cantidad de ventas: '); readln(cant);
            write('Ingrese precio del articulo: '); readln(precio);
            total:= precio * cant;
            if (total> mayor_total) then
                begin
                    mayor_total:= total;
                    cod_mayor_total:= cod;
                end;
        end;
end.