program registros;

{
Para poder crear las estructuras de datos "REGISTROS" se usa esta seccion llamada "TYPE".

Debajo de este TYPE es donde nosotros vamos a organizar la informacion como nos
sea conveniente.

Supongamos que necesitamos almacenar la informacion de alumnos.
Cada alumno cuenta con: Nombre, Apellido, DNI, Legajo, Edad y promedio...

Para mejorar la forma de organizar esta informacion al momento de leer estos datos
podemos organizar una estructura de datos de tipo registro donde para cada alumno
se pueda almacenar informacion de estos campos.

Se hace de la siguiente manera
}

type
    reg_alumnos = record
        nombre : String[20];
        apellido: String[20];
        DNI: integer;
        legajo: integer; 
        edad: integer;
        promedio: real;
        end;

{
    Donde yo puse el nombre "reg_alumnos" puede ir cualquier nombre que nosotros querramos
    asignarle al registro: seguido de un "= record"
        dabajo cada campo
        y cuando ya estén apuntados todos los campos con su tipo de dato
        "end;"

    De esa manera queda armada la estructura de tipo registro que nosotros hayamos
    querido.
}

{
Para usar esta estructura de datos REGISTRO que nosotros declaramos en el TYPE
Elegimos un nombre y le asignamos el tipo de dato con el nombre del registro 

    >> nombre: nombre_del_registro <<

Ejemplo:
}
var
    ALUMNO : reg_alumnos;
begin

{
Para acceder a los campos del registro se hace utilizando 
    nombre_variable "." campo_a_acceder

A modo de ejemplo voy a asignarle a ALUMNO los valores correspondientes de cada campo
}

    ALUMNO.nombre := 'Federico';
    ALUMNO.apellido := 'Lopez';
    ALUMNO.DNI := 32323;
    ALUMNO.legajo := 26626;
    ALUMNO.edad := 25;
    ALUMNO.promedio:= 4.44;

{
    De esa manera se accede a cada campo, tanto para asignarle valores como para 
    imprimirlos.

    Es importante entender que para imprimir no se puede hacer Writeln(ALUMNOS), sino
    que hay que imprimir campo a campo de la siguiente manera:

    Ejecutar el programa para verlo en pantalla
}
    writeln();writeln();
    writeln('Nombre:   ', ALUMNO.nombre);
    writeln('Apellido: ', ALUMNO.apellido);
    WriteLn('DNI:      ', ALUMNO.DNI);
    Writeln('Legajo:   ', ALUMNO.legajo);
    writeln('Edad:     ',ALUMNO.edad);
    writeln('Promedio: ',ALUMNO.promedio:2:2);
    writeln();writeln();

end.