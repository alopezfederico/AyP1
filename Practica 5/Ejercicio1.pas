program listas;
uses
 genericLinkedList;
type
   Lista_Enteros = specialize linkedList <integer>;

procedure Agregar_a_Lista(var L:Lista_Enteros);
    var 
        num:integer;
    begin   
        write('Ingrese numero: '); read(num);
        while (num<>0) do begin
            L.add(num);
            write('Ingrese numero: ');read(num);
        end;
    end;

    
procedure recorrerLista(l:Lista_Enteros);
    begin
        l.reset();
        while (not l.eol()) do begin
            writeln(l.current());
            l.next();
        end;
    end;


var
   le:Lista_Enteros;
begin
    le:= Lista_Enteros.create();
    Agregar_a_Lista(le);
    recorrerLista(le);
end.