program Reales;
    // Ejecutar el programa para entender un poco mejor
var
    real_1,real_2, real_3: real;
begin

    writeLn();
    writeln('>>>>> REALES <<<<<');
    WriteLn();

    // Operadores_reales: + | - | * | /

    real_1:= 40.2;  writeln('R1 = ',real_1:2:2); // Se puede asignar con coma ','
    real_2:= 7;  WriteLn('R2 = ',real_2:2:2);    // Se puede asignar sin coma

    real_3:= real_1 + real_2;
    writeln('Sumando: R1 + R2 = ', real_3:2:2);
 
    real_3:= real_1 - real_2;
    writeln('Restando: R1 - R2 = ', real_3:2:2);

    real_3:= real_1 * real_2;
    writeln('Multiplicando: R1 * R2 = ', real_3:2:2);

    real_3:= real_1 / real_2;
    writeln('Dividiendo: E1 / E2 = ', real_3:2:2);

    writeln();
{   Para mostrar numeros REALES por pantalla es muy comun utilizar  :2:2  seguido de la variable a mostraro
    
    writeln(varianle_real:2:2)
    
    Eso sirve para que al momento de 
    }
    writeln('Esto se ve si NO uso real_1:2:2 ---> ', real_1);  writeln();
    writeln('Esto se ve si uso real_1:2:2 ------> ', real_1:2:2);


    writeln(); writeln();
end.