program Ejercicio5;
uses
    Sysutils,GenericLinkedList;
const
    corte = 0;
type 
    reg_empleado = record
        codigo : integer;
        nombre : String;
        apellido : String;
        dni: integer;
        area: String;
        anio: integer;
        end;

    Lista_empleados = specialize LinkedList<reg_empleado>;

procedure Lectura(var r:reg_empleado);
    var 
        entero:String;
    begin
        write('Ingrese anio: '); readln(r.anio);
        if (r.anio <> corte) then begin
            write('Ingrese codigo: ');r.codigo:=random(2000); writeln(r.codigo);
            write('Ingrese nombre: '); r.nombre:= concat('Nombre -', IntToStr(random(10000)))  ;writeln(r.nombre);
            write('Ingrese apellido: ');r.apellido:= concat('Apellido -', IntToStr(random(10000))); writeln(r.apellido);
            write('Ingrese dni: '); r.dni:= random(10000) ;writeln(r.dni);
            write('Ingrese area: '); r.area:= concat('Area -', IntToStr(random(10000))); writeln(r.area);
            writeln('::::::::::::::::::::::::::::'); writeln();
        end;
    end;

procedure Generar_estructura(var L_e,L_pre24,L_post24: Lista_empleados);
    var
        reg: reg_empleado;
    begin
        Lectura (reg);
        while (reg.anio <> corte) do begin
            L_e.add(reg);
            if (reg.anio < 2024) then
                L_pre24.add(reg)
            else 
                L_post24.add(reg);
            Lectura(reg);
        end;
    end;

var 
    L_e,L_pre24,L_post24: Lista_empleados;
begin
    L_e:= Lista_empleados.create();
    L_pre24:= Lista_empleados.create();
    L_post24:= Lista_empleados.create();

    Generar_estructura(L_e,L_pre24,L_post24);
end.