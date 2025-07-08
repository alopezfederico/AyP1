program Ejercicio2;
uses GenericLinkedList;
type
    Lista_reales = specialize LinkedList<real>;

procedure Imprimir(L:Lista_reales);
    begin
        L.reset();
        while (not L.eol()) do begin
            writeln('Numero: ', L.current());
            L.next();
        end;
    end;

function porcentaje_positivos(L:Lista_reales):real;
    var 
        cant:integer;
        total:integer;
    begin
        cant:= 0;
        total:= 0;
        L.reset();
        while (not L.eol()) do begin
            total:= total+1;
            if (L.current() > 0) then
                cant:= cant +1;
            L.next();
        end;
        porcentaje_positivos:= cant * 100 / total;
    end;

function Maximo(L:Lista): real;
    var 
        max : real;
    begin
        max:=-99999;
        L.reset();
        while (not L.eol()) do begin
            if (L.current()>max) then
                max:= L.current();
            L.next();
            end;
        Maximo:= max;
    end;

function Minimo ( L : Lista):real;
    var 
        min:real;
    begin
        min:= 999999;
        L.reset();
        while (not L.eol()) do begin
            if (L.current()<min)then
                min:= L.current();
            L.next();
        end;
        Minimo:= min;
    end;

var 
    L:Lista_reales;
begin
    // Dispone Lista
    Imprimir(L);
    writeln('Porcentaje de numeros positivos: '; porcentaje_positivos(L):2:2);
end.

