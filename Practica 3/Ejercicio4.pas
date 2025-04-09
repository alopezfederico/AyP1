program Ejercicio4;
const
    total  =  2400;
    prop_UNESCO = 23.435;

type
    reg_primaria = record   
        codigo: integer;
        nombre: String[30];
        cant_docentes: integer;
        cant_alumnos: integer;
        localidad: String[20];
        end;

procedure Leer(var p:reg_primaria);
    begin
        write('Ingrese codigo: '); readln(p.codigo);
        write('Ingrese nombre: '); readln(p.nombre);
        write('Ingrese cantidad de docentes: '); readln(p.cant_docentes);
        write('Ingrese cantidad de alumnos: '); readln(p.cant_alumnos);
        write('Ingrese localidad: '); readln(p.localidad);
    end;

function relacion(docentes,alumnos: integer):real;
    begin
        relacion:= alumnos/docentes;
    end;

var
    p:reg_primaria;
    x,cant_lp:integer;
    r:real;
    cod1,cod2:integer;
    nomb1,nomb2: String;
    r1,r2:real;
begin
    r1:= 32000;
    cod1:=0;
    nomb1:='';
    cant_lp:=0;
    for x:= 1 to total do begin
        Leer(p);
        r:= relacion(p.cant_docentes,p.cant_alumnos);
        if (r > prop_UNESCO) and (p.localidad = 'La Plata') then
            cant_lp := cant_lp + 1;

        if(r < r1)then begin
            r2:= r1;
            r1:= r;

            cod2:= cod1;
            cod1:= p.codigo;

            nomb2:= nomb1;
            nomb1:= p.nombre;
        end
        else
            if (r < r2) then begin
                r2:= r;
                cod2:= p.codigo;
                nomb2:= p.nombre;
            end;
    end;
    
    writeln('Cantidad de primarios de La Plata con relacion superior a la recomendada: ', cant_lp);
    writeln();
    writeln('>>> Mejor relacion 1 <<<');
    writeln('CUE: ',cod1,' | Nombre: ', nomb1);
    writeln();
    writeln('>>> Mejor relacion 2 <<<');
    writeln('CUE: ',cod2,' | Nombre: ', nomb2);
end.