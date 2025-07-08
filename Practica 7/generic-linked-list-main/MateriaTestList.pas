program MateriaTestList;
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

  materia = record
     nombre : string;
     profesor : string;
     alumnos : ListaAlumnos;
  end;
  ListaMaterias = specialize LinkedList<materia>;

  procedure leerFecha(var f : fecha);
  begin
    writeln('Ingrese el dia, el mes, y el año de nacimiento');
    readln(f.dia); 
    readln(f.mes);
    readln(f.anio);
  end;

  //ejemplo de lectura de un alumno desde una funcion
  function leerAlumno : alumno;
  var a : alumno;
  begin
    writeln('Ingrese el apellido del alumno');
    readln(a.apellido);
    writeln('Ingrese su promedio');
    readln(a.promedio);
    leerFecha(a.fechaNac);
    leerAlumno := a;
  end;

//ejemplo de lectura de una materia desde un procedure
  procedure leerMateria(var m : materia);
  var
     i,cantAlumnos : integer;
  begin
    writeln('Ingrese el nombre de la materia'); readln(m.nombre);
    writeln('Ingrese el nombre del profesor a cargo'); readln(m.profesor);
    writeln('Ingrese la cantidad de alumnos inscriptos'); readln(cantAlumnos);

    //¿no deberíamos modularizar este código?
    m.alumnos := ListaAlumnos.create; 
    for i:= 1 to cantAlumnos do 
        m.alumnos.add( leerAlumno() );
  end;


  //Carga materias hasta ingresar una del profesor ZZZ, que no se cargará  
  procedure cargarMaterias(var lista : ListaMaterias);
  var 
    m : materia;
  begin
    leerMateria(m);
    while (m.profesor <> 'ZZZ') do 
    begin
      lista.add(m);
      leerMateria(m);
    end;
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

  procedure imprimirMateria(m : materia);
  var
     num : integer;
  begin
     writeln('Materia: ',m.nombre);
     writeln('A cargo de: ',m.profesor);
     writeln('****Lista de inscriptos****');
     m.alumnos.reset;
     num := 0;
    while (not m.alumnos.eol) do
    begin
        num := num + 1;
        write(num); write(' - '); imprimirAlumno(m.alumnos.current);
        m.alumnos.next;
    end;
  end;

var
   materias : ListaMaterias;
begin
  //cargo una lista de materias
  materias := ListaMaterias.create;
  cargarMaterias(materias);

  //imprimo la primer materia del listado
  materias.reset;
  imprimirMateria(materias.current)
end.