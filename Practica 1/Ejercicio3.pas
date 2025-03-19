program Ejercicio3;
var
    total, monto, valor_d, com:real;
begin
    write('Ingrese monto: '); readln(monto);
    write('Ingrese valor dolar: '); readln(valor_d);
    com:= monto*valor_d* 0.04;
    total:= monto*valor_d + com;
    writeln('La transferencia sera de: $', total:2:2,' Pesos AR');
end.