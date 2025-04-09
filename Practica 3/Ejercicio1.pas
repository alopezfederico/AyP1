program Registros; 
type 
    alumno = record 
        codigo : integer; 
        nombre : string; 
        promedio : real; 
    end; 
procedure leer(var alu : alumno); 
    begin 
        writeln('Ingrese el código del alumno'); 
        read(alu.codigo); 
        if (alu.codigo <> 0) then begin 
            writeln('Ingrese el nombre del alumno');  
        read(alu.nombre); 
        writeln('Ingrese el promedio del alumno'); 
        read(alu.promedio); 
        end; 
    end; 
{declaración de variables del programa principal} 
var 
    a: alumno;      
    nombre: String;
    prom: real;
    cantidad: integer;
{cuerpo del programa principal } 
begin 
    cantidad:= 0;
    prom:= -1;

    Leer(a);
    while (a.codigo <> 0) do begin
        cantidad:=cantidad + 1;
        if (a.promedio > prom) then begin
            prom:= a.promedio;
            nombre:= a.nombre;          
        end;
        Leer(a);
    end;

    writeln('Cantidad de alumnos leidos: ', cantidad);
end.