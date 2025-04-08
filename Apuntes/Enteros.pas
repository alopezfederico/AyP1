program Enteros;
    // Ejecutar el programa para entender un poco mejor
var
    entero_1,entero_2,entero_3:integer;

begin

    writeln();
    writeln('>>>>> ENTEROS <<<<<');WriteLn();

    // Operadores_enteros: + | - | * | div | mod 
    entero_1:= 40;  writeln('E1 = ',entero_1); 
    entero_2:= 10;  WriteLn('E2 = ',entero_2);

    entero_3:= entero_1 + entero_2;
    writeln('Sumando: E1 + E2 = ', entero_3);
 
    entero_3:= entero_1 - entero_2;
    writeln('Restando: E1 - E2 = ', entero_3);

    entero_3:= entero_1 * entero_2;
    writeln('Multiplicando: E1 * E2 = ', entero_3);

    entero_3:= entero_1 DIV entero_2;
    writeln('Usando DIV: E1 DIV E2 = ', entero_3);

    entero_3:= entero_1 MOD entero_2;
    writeln('Usando MOD: E1 MOD E2 = ', entero_3); 
{
    Recordemos que DIV y MOD se puede utilizar unicamente en operaciones entre tipos de datos enteros.
    DIV guarda el cociente sin decimales al dividir dos numeros enteros

    MOD guarda el resto de dividir dos numeros enteros
}

    writeln();writeln();
end.