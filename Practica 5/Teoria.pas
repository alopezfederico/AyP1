{Una inmobiliaria nos encargó un programa para el procesamiento de sus inmuebles. 
De cadainmueble se deberán considerar las siguientes características: 
código de identificación del inmueble, tipo, cantidad de habitaciones, 
cantidad de baños, precio, localidad y fecha de publicación.

Implementar módulos para cada uno de los siguientes ítems:
a. Leer la información de los inmuebles hasta que se ingresa el código -1, y almacenarlos en una lista.
b. Informar todos los códigos de los inmuebles que tienen más habitaciones que una cantidad que se
recibe como parámetro (debe ser leída en el programa principal).
c. Retornar los inmuebles agrupados para cada mes de publicación.
d. Informar los códigos de los inmuebles para un mes que se recibe como parámetro utilizando la
información generada en c) (el mes debe ser leído en el programa principal).
}
program listas;
uses 
    GenericLinkedList;
type
    reg_fecha = record
        dia: integer;
        mes: integer;
        anio: integer;
        end;


    reg_inmuebles = record
        cod: integer;
        tipo: integer;
        cant_h: integer;
        cant_b: Integer;
        precio: real;
        localidad: integer;
        fecha: reg_fecha;
        end;

    Lista_inmuebles = specialize LinkedList<reg_inmuebles>;
    Vector_meses = Array [1..12] of Lista_inmuebles;

procedure Leer(var i:reg_inmuebles);
    begin
        write('Ingrese codigo de inmueble: '); i.cod:= random (1000)-1; writeln(i.cod);
        if (i.cod<>-1) then begin
            write('Ingrese tipo: '); i.tipo:= random(3)+1; writeln(i.tipo);
            write('Ingrese cantidad de habitaciones: '); i.cant_h:= random(6)+1; writeln(i.cant_h);
            write('Ingrese cantidad de banios: '); i.cant_b:= random(6)+1; writeln(i.cant_b);
            write('Ingrese precio: '); i.precio:= random(10000)+1; writeln(i.precio:2:2);
            write('Ingrese localidad: '); i.localidad:= random(5); writeln(' Localidad ');
            write('Ingrese fecha: '); i.fecha.anio:= 2020; i.fecha.mes:= random(12)+1; i.fecha.dia:= random(31)+1; writeln('------ Fecha-------');
        end;
    end;

procedure Generar_estructura(var L:Lista_inmuebles);
    var
        i:reg_inmuebles;
    begin
        L:= Lista_inmuebles.create();
        Leer(i);
        while (i.cod <> -1) do begin
            L.add(i); 
            Leer(i);
        end;
    end;
{
b. Informar todos los códigos de los inmuebles que tienen más habitaciones que una cantidad que se
recibe como parámetro (debe ser leída en el programa principal).
}
procedure Recorrer(L:Lista_inmuebles; cant:integer; var V:Vector_meses);
    var 
        i:reg_inmuebles;
        mes:integer;
    begin
        L.reset();
        while (not L.eol()) do begin
            if (L.current().cant_h> cant) then
                writeln('||||   Codigo: ', L.current().cod);
            i:= L.current();
            mes:= i.fecha.mes;
            V[mes].add(i);
            l.next();
        end;
    end;

procedure Informar_en_mes(V:Vector_meses; mes:integer);
    begin
        v[mes].reset();
        writeln('----------INCISO D-------------');
        while (not V[mes].eol()) do begin
            writeln('Codigo: ',V[mes].current().cod);
            v[mes].next();
        end;
    end;

var
    L:Lista_inmuebles;
    x:integer;
    V:Vector_meses;
begin
    randomize;
    Generar_estructura(L);
    for x:= 1 to 12 do
        V[x]:= Lista_inmuebles.create();

    writeln();
    writeln();
    write('Ingrese numero: '); readln(x);
    Recorrer(L,x,V);
    writeln();
    writeln();
    write('Ingrese mes: '); readln(x);
    Informar_en_mes(V,x);
end.