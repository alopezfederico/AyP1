program Ejercicio1f;
var
    edad: integer;
begin
    write('Ingrese la edad: '); readln(edad);
    if(edad<7)then
        write('Pertenece a perescolar')
    else 
        if((edad>=7)and(edad<=12)) then
            write('Pertenece a primmaria')
        else 
            if((edad>=13)and(edad<=18))then
                write('Pertenece a secundario')
            else
                write('Pertenece a universitario');
end.