program Ejercicio1;
uses GenericLinkedList;
const 
    corte = 999;
type 
    Lista = specialize LinkedList<integer>; 

procedure Generar_estructura(var L:Lista);
    var
        num:integer;
    begin
        write('Ingrese numero: '); readln(num);
        while (num <> corte) do begin
            L.add(num);
            write('Ingrese numero: ');num := random(1200); writeln(num);
            end;
    end;

function promedio(suma, cant:integer): real;
    var 
        prom:real;
    begin
        prom := suma / cant;
        promedio:= prom;
    end;

procedure Recorrer (L:Lista);
{Recorrer y devolver
    - El promedio de numeros: Sumar numeros a variable total | sumar cantidad de numeros | calcular promedio despues de recorrer
    - El porcentaje de numeros multiplos de tres: Sumar cantidad de numeros validos | calcular porcentaje teniendo cantidad total de numeros
    - Mayor numero (ir comprobando mientras se recorre)
    - Menor numero (ir comprobando mientras se recorre)

    suma_T, cant_T: integer
    suma_3:integer;
    mayor
    menor
}

    var 
        menor, mayor:integer;
        suma, cantTotal: integer;
        cant_3: integer;
    begin
        menor := 32000;
        mayor := -1;
        cantTotal:= 0;
        cant_3:= 0;
        suma:= 0;

        L.reset();
        while (not L.eol()) do begin      
            cantTotal:= cantTotal + 1;
            suma:= suma + L.current();
            if (L.current() < menor) then
                menor:= L.current();
            if (L.current() > mayor) then
                mayor:= L.current();
            if (L.current() mod 3 = 0) then
                cant_3:= cant_3 + 1;
            L.next();      
        end;
        writeln('Numero mas grande encontrado: ', mayor); 
        writeln('Numero mas chico encontrado: ', menor); 
        writeln('Promedio de numeros: ', promedio(suma,cantTotal):2:2);
        writeln('Porcentaje de numeros multiplos de 3: ', cant_3 * 100 / cantTotal:2:2);
    end;


var 
    L:Lista;
begin
    L:= Lista.create();
    Generar_estructura(L);
    Recorrer(L);
end.