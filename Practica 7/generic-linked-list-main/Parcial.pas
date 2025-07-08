{La franquicia Movistar Arena BA desea analizar la información de los recitales realizados durante el año 2024. 
* Para ello, se ((((DESIPONE)))) de una lista con los datos de los recitales.
De cada recital se conoce el 
 código de recital, 
 categoría del recital (1..8),
 el mes en que se realizó, 
 la cantidad de entradas vendidas 
 DNI del artista principal. 

Además, la franquicia dispone de un vector con la capacidad máxima de acuerdo a la categoría del recital. 

Realizar un programa que procese la lista de recitales ((((una sola vez)))) para:
a) Eliminar de la lista todos los recitales de artistas que tienen DNI múltiplo de 3. No considerarlos para los puntos b, c y d. 

b) Generar una lista con los recitales realizados en el mes 5, donde la cantidad de entradas vendidas no alcanzó la capacidad máxima de la categoría. Esta lista debe quedar ordenada
por código de recital. 

c) Informar los dos números de categoría que realizaron menos recitales. 

d) calcular e informar la cantidad de entradas vendidas por mes. 

Hacer el programa Principal. Modularizar.} 

program Parcial_Movistar;
uses
    GenericLinkedList;
type    
    rango_categoria = 1..8;
    rango_mes = 1..12;
    reg_recital = record    
        cod: integer;
        cat: rango_categoria;
        mes: rango_mes;
        cantidad: integer;
        dni: integer;
        end;

    Lista_recitales = specialize LinkedList<reg_recital>;
    
    V_cat = Array [rango_categoria] of integer;
    V_mes = Array [rango_mes] of integer;

procedure Informar_incisoC(V: V_cont_cat);
    var
        min1,min2:integer;
        codMin1,codMin2:integer;
        x: integer;
    begin
        min1:= 9999;
        min2:= 9999;
        codMin1:= -1;
        codMin2:= -2;
        for x:= 1 to 8 do begin
            if (V[x]<min1) then begin
                min2:= min1;
                min1:= V[x];
                codMin2:= codMin1;
                codMin1:= x;
            end
            else 
                if(V[x]<min2)then begin
                    min2:= V[x];
                    codMin2:= x;
                end;
        end;
        writeln('Categoria con menor cantidad de recitales realizados: ',codMin1);
        writeln('Categoria con segunda menor cantidad de recitales realizados: ', codMin2);
    end;

procedure Informar_incisoD(V:V_cont_mes);
    var
        x: integer;
    begin
        writeln('--- Cantidad de entradas vendidas por mes ----');
        for x:= 1 to 12 do
            writeln('Mes ',x,' | Cantidad: ', V[x]);
    end;

procedure Recorrer_estructura (var L:Lista_recitales; var Ln:Lista_recitales; V_capacidad: V_cat; var V_cont_mes:V_mes; var V_cont_cat: V_cat);
    begin
        L.reset();
        while (not L.eol()) do begin
            if (L.current().dni MOD 3 = 0) then 
                L.removeCurrent()
            else begin
                if ((L.current().mes = 5) and (L.current().cantidad < V_capacidad[L.current().cat])) then begin
                    Ln.reset();
                    while (L.current().cod > Ln.current().cod) do
                        Ln.next();
                    Ln.insertCurrent(L.current());
                    end;
                V_cont_cat[L.current().cat]:= V_cont_cat[L.current().cat] + 1;
                V_cont_mes[L.current().mes]:= V_cont_mes[L.current().mes] + L.current().cantidad;
            end;
            L.next();
        end;
        L.reset();        
        writeln(' Inciso C: ', Informar_incisoC(V_cont_cat));
        writeln(' Inciso D: ', Informar_incisoD(V_cont_mes));
    end;
var
    L,Ln: Lista_recitales;
    V_capacidad: V_cat;
    V_cont_cat: V_cat;
    V_cont_mes: V_mes:
    x: integer;
begin
    L:= Lista_recitales.create(); 
    //DISPONE L
    Ln:= Lista_recitales.create();
    for x:= 1 to 12 do
      V_cont_mes[x]:= 0;
    for x:= 1 to 8 do
      V_cont_cat[x]:= 0;
    // DISPONE V_capacidad

    Recorrer_estructura(L,Ln,V_capacidad,V_cont_mes,V_cont_cat);
end;