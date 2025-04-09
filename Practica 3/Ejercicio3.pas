program Ejercicio3;
const
    corte = 2025;
type
    reg_fecha = record
        dia: integer;
        mes: integer;
        anio: integer;
        end;
    
procedure Leer(var f:reg_fecha);
    begin
        write('Ingrese le anio: '); readln(f.anio);
        if (f.anio <> corte) then begin
        write('Ingrese dia: '); readln(f.dia);
        write('Ingrese mes: '); readln(f.mes);
        end;
    end;


var
    f: reg_fecha;
    cant_verano,cant_15: integer;
begin
    cant_verano:= 0;
    cant_15:= 0;

    Leer(f);
    while (f.anio <> corte) do begin
        if (f.mes = 12) or (f.mes = 1) or (f.mes = 2) then
            cant_verano:= cant_verano +1;
        
        if(f.dia < 16) and (f.mes = 8) then
            cant_15:= cant_15 + 1;
        
        Leer(f);
    end;
    
    writeln('Cantidad de casamientos en verano: ', cant_verano);
    writeln('Cantidad de casamientos en primer quincena de agosto: ', cant_15);
end.