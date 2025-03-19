program Ejercicio1e;
var
    base, altura: real;
begin
    write('Ingrese la base: '); readln(base);
    write('Ingrese la altura: '); readln(altura);
    writeln('El perimetro del rectangulo es de: ', base*2 + altura*2 :2:2);
    writeln('El alrea del rectangulo es de: ', base*altura:2:2);
end.