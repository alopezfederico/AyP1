{

2. Dada una lista de lugares turísticos identificados por nombre y país,
escribir un programa que implemente los
siguientes módulos:

a. Calcular la longitud de la lista.

b. Calcular la cantidad de veces que aparece un país dado (un país puede aparecer más de una vez, ya que
puede haber diferentes lugares turísticos).

c. Eliminar un lugar turístico que se recibe como parámetro

d. Eliminar todas las ocurrencias de un país que se recibe como parámetro

e. Dado un país, si existe, generar una nueva lista con los nombres de sus lugares turísticos.

f. Agregar al principio de la lista creada en e) un nuevo lugar turístico. 

}

program Ejercicio2;
uses
    GenericLinkedList;
type
    reg_lugar = record  
        nombre : String;
        pais: String;
        end;

    Lista = specialize LinkedList <reg_lugar>;

    Lista_nombres = specialize LinkedList<string>;

function CalcularLongitud(L:Lista):integer;
    var 
        cant: integer;
    begin
        cant:= 0;
        L.reset();
        while (not L.eol()) do begin
            cant:= cant+1;
            L.next(); 
        end;
        CalcularLongitud:= cant;
    end;


{b. Calcular la cantidad de veces que aparece un país dado (un país puede aparecer más de una vez, ya que
puede haber diferentes lugares turísticos).}

function Cantidad_veces_pais(L:Lista; pais:String):integer;
    var 
        cant:integer;
    begin
        cant:=0;
        L.reset();
        while (not L.eol()) do begin
            if (L.current().pais = pais) then 
                cant:= cant+1;
            L.next();
        end;
        Cantidad_veces_pais:= cant;
    end;

{c. Eliminar un lugar turístico que se recibe como parámetro}

procedure Eliminar_lugar (var L:Lista; lugar:String);
    begin
        L.reset();
        while ((not L.eol()) and (L.current().nombre <> lugar )) do 
            L.next();
        if (L.current().nombre = lugar) then
            L.removeCurrent();
    end;

{d. Eliminar todas las ocurrencias de un pais que se recibe como parametro}

procedure Eliminar_ocurrencias_pais(var L: Lista; pais: string);
    begin
        L.reset();
        while (not L.eol()) do begin
            if (L.current().pais = pais) then
                L.removeCurrent();
            L.next();
        end;
    end;

procedure Generar_nueva_lista_pais (L:Lista; var Ln:Lista_nombres; pais:string);
    begin
        L.reset();
        while (not L.eol()) do begin
            if (L.current().pais = pais) then
                Ln.add(L.current().nombre);
            L.next();
        end;
    end;

procedure Agregar_lugar(var L:Lista_nombres);
    var 
        reg:reg_lugar;
    begin
        write('Ingrese nombre: '); readln(reg.nombre);
        write('Ingrese pais: '); readln(reg.pais);
        L.add(reg);
    end;
