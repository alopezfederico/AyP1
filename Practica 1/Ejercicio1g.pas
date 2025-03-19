program Ejercicio1g;
var
    anio:integer;
begin
    write('Ingrese anio: '); readln(anio);
    if((anio>=1946) AND (anio<=1964)) then
        writeln('Pertenece a la generacion "Baby boomers"')
    else
        if((anio>=1965) AND (anio<=1980)) then
            writeln('Pertenece a la generacion "X"')
        else 
            if ((anio >= 1981) AND (anio <= 1996)) then
                writeln('Pertenece a la generacion "Milenials" ')
            else 
                writeln('Pertenece a la generacion "Z"');
end.