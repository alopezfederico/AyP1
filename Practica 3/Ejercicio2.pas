program Ejercicio2;
type
    prisma = record
        ancho:real;
        alto: real;
        prof: real;
        end;


function Volumen (an,al,pr:real):real;
    begin
        Volumen:= an * al * pr;      
    end;

function Area (an,al,pr:real) : real;
    begin
        Area := 2* ((pr*al) + (pr*an) + (al*an));
    end;

var
    p:prisma;
begin
    write('Ingrese ancho: '); readln(p.ancho);
    write('Ingrese alto: '); readln(p.alto);
    write('Ingrese profundidad: '); readln(p.prof);

    writeln('Volumen del prisma: ', Volumen(p.ancho,p.alto,p.prof):2:2);writeln();
    writeln('Area Total: ', Area(p.ancho,p.alto,p.prof):2:2);
end.