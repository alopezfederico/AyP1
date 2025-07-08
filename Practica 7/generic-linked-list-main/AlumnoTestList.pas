program AlumnoTestList;
uses GenericLinkedList;
const
  cant = 3;
type

    fecha = record 
       dia, mes, anio : integer;
    end;
    alumno = record
       apellido : string;
       email : string;
       fechaNac : fecha;
       promedio : real;
    end;  
  ListaAlumnos = specialize LinkedList<alumno>;

  procedure leerFecha(var f : fecha);
  begin
    writeln('Ingrese el dia, el mes, y el año de nacimiento');
    readln(f.dia); 
    readln(f.mes);
    readln(f.anio);
  end;

  procedure leerAlumno(var a : alumno );
  begin
    writeln('Ingrese el apellido del alumno');
    readln(a.apellido);
    writeln('Ingrese su promedio');
    readln(a.promedio);
    leerFecha(a.fechaNac);
  end;

  procedure imprimirFecha(f : fecha);
  begin
    write(f.dia , '/',f.mes,'/',f.anio);
  end;

  procedure imprimirAlumno(a : alumno);
  begin
    write('El alumno ',a.apellido,', nacido el ');
    imprimirFecha(a.fechaNac);
    write(', tiene un promedio de ',a.promedio:2:2);
    writeln;
  end;

  procedure actualizarMaximo(alu : alumno; var mejor : alumno);
  begin
    if alu.promedio > mejor.promedio then
      mejor := alu;
  end;
var

   alumnos : ListaAlumnos;
   alu : alumno;
   i : integer;
begin

  writeln('Ingrese los datos de ',cant,' alumnos');
  alumnos := ListaAlumnos.create;
  for i:= 1 to cant do begin
    leerAlumno(alu);
    alumnos.add(alu);
  end;

  writeln('La información quedó almacenada del siguiente modo:');
  alumnos.reset;
  while (not alumnos.eol) do
  begin
     imprimirAlumno(alumnos.current);
     alumnos.next;
  end;

  writeln('Vamos a buscar al alumno con el mejor promedio');
  alu.promedio := -1;
  alumnos.reset;
  while (not alumnos.eol) do
  begin
     actualizarMaximo(alumnos.current, alu);
     alumnos.next;
  end;
  writeln('El alumno con el mejor promedio es ',alu.apellido,' (',alu.promedio:2:2,')');
end.
