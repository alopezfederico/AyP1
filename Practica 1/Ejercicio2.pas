program Ejercicio2;
const
    PI = 3.14;
var
    d,r,p,a:real;
begin
    write('Ingrese diametro: '); readln(d);
    r:= d/2;
    p:= d*PI;
    a:= PI * r * r;
    writeln('Radio: ', r:2:2);
    writeln('Area: ', a:2:2);
    writeln('Perimetro: ', p:2:2);
end.