program ej1p6;
uses GenericLinkedList;
const
    cond_cort=999;
type
    L_enteros= specialize LinkedList <Integer>;

procedure   cargo_L (var L:L_enteros);
    var
        num:Integer;
    begin
        L:=L_enteros.create();
        WriteLn ('La carga de nums enteros finaliza con el num 999');
        Write ('Ingrese un numero entero: '); ReadLn (num);
        while (num <> cond_cort) do
            begin
                L.add(num);
                Write ('Ingrese un numero entero: '); ReadLn (num);
            end;
    end;

function promedio_nums (suma_T, cant_elem:Integer):Real;
    begin
        promedio_nums:=suma_T / cant_elem;
    end;

function porcen_mult_tres (cant_elem, cant_mult_tres:Integer):Real;
    begin
        porcen_mult_tres:=(cant_mult_tres*100)/cant_elem;
    end;

{  
    incisos con sus variables
    promedio de numeros: suma_total | cantidad_total_de_nums | prom
    porcentaje de los multiplos de 3: cant_t_nums | const_inciso_b | cant_mult_tres chequear con un if mientras recorro 
    el mayor: mayor chequear mientras recorro
    el menor: menor chequear mientras recorro 
}

procedure recorro_L (L:L_enteros);
    var
        suma_T, cant_elem, cant_mult_tres, menor, mayor:Integer;
    begin
        mayor:=-1;
        suma_T:=0;
        menor:=32000;
        cant_elem:=0;
        cant_mult_tres:=0;
        L.reset();
        while (L.eol()) do
            begin
                cant_elem:=cant_elem + 1;
                suma_T:=suma_T + L.current();
                if ((L.current() mod 3)=0) then
                    cant_mult_tres:=cant_mult_tres + 1;
                if (L.current() < menor) then
                    menor:=L.current();
                if (L.current() > mayor) then
                    mayor:=L.current();
                L.next();
            end;
        WriteLn ('Informo promedio: ',promedio_nums(suma_T, cant_elem):2:2);
        WriteLn ('Informo porcentaje multiplos de tres: ',porcen_mult_tres(cant_elem,cant_mult_tres):2:2,'%');
        WriteLn ('El mayor numero ingresado es: ',mayor);
        WriteLn ('El menor numero ingresado es: ',menor);
    end;

var
    L:L_enteros;
begin
    L:=L_enteros.create();
    cargo_L (L);
    recorro_L (L);
end.