program Parcial1;
uses
    GenericLinkedList;
const
    corte = -1;
type
    reg_empresa = record
        CUIT: integer;
        nombre: string;
        provincia: string;
        fuerza:  integer;  //1-5
        presion: integer; //1-3
        end;

    reg_cuit = record 
        cuit: integer;
        cant: integer;
        end;

    Lista_cuit = specialize LinkedList <reg_cuit>;
    
    V_fuerzas = Array [1..5] of integer;

procedure Inicializar_vector (var V:V_fuerzas);
    var 
        x:integer;
    begin
        for x:= 1 to 5 do
            V[x]:=0;
    end;

procedure Cargar_registro(var e: reg_empresa);
    begin
        write('Ingrese cuit: '); readln(e.cuit); 
        if (e.cuit <> corte) then begin
            write('Ingrese nombre: '); readln(e.nombre);
            write('Ingrese provincia: '); readln(e.provincia);
            write('Ingrese fuerza(1-5): ');  readln(e.fuerza);
            while((e.fuerza<1)or(e.fuerza>5))do begin
                writeln('El numero no es valido');
                write('Ingrese fuerza(1-5): ');  readln(e.fuerza);
            end;
            write('Ingrese presion(1-3): '); readln(e.presion);
            while ((e.presion<1)or(e.presion>3)) do begin
                write('Ingrese presion(1-3): '); readln(e.presion);
            end;
        end;
    end;

procedure Imprimir (L:Lista_cuit; V:V_fuerzas);
    var
        x:integer;
    begin
        L.reset();
        while (not L.eol()) do begin
            writeln('CUIT: ', L.current().cuit);
            writeln('Cantidad: ', L.current().cant);
            L.next();
        end;
        for x:= 1 to 5 do
            writeln('Fuerza ',x,': ',V[x]);
    end;

procedure Cargar_lista(var L: Lista_cuit; var V:V_fuerzas);
    var 
        e: reg_empresa;
        anterior: integer;
        c: reg_cuit;
        cant_presion: integer;
    begin
        cant_presion:= 0;
        Cargar_registro(e); //e.fuerza:= 1-5
        while (e.cuit <> corte) do begin
            c.cuit:= e.cuit;
            c.cant:= 0;
            anterior:= e.cuit;
            while (e.cuit = anterior) do begin 
                c.cant:= c.cant + 1; 
                V[e.fuerza]:= V[e.fuerza] +1;
                if ((e.presion=1)and(e.provincia='Buenos Aires')) then
                    cant_presion:= cant_presion +1;
                Cargar_registro(e); 
            end;
            L.add(c);
        end;
        Imprimir(L,V);
    end;

var 
    L: Lista_cuit;
    V: V_fuerzas;
begin
    L:= Lista_cuit.create();
    Inicializar_vector(V);
    Cargar_lista(L,V);
end.