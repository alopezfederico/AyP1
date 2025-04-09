program Charr;
var 
    carac: char;
    exito:Boolean;
begin
{
    Los tipos de dato CHAR en Pascal funcionan de una manera diferente al resto
    
    Es un tipo de dato, el cual procesa caracteres.

Por ejemplo:
    Si a una variable ('carac') de tipo de dato Char le asignas la palabra 'Escoba' lo cual es posible
    en esa variable vas a almacenar esa cadena de caracteres.
}
    write('Ingrese "escoba" : '); read(carac);
    exito:= False;

    if (carac = 'e') then begin
        read(carac);
        if (carac = 's') then begin
            read(carac);
            if (carac = 'c') then begin
                read(carac);
                if (carac = 'o') then begin
                    read(carac);
                    if (carac = 'b') then begin
                        read(carac);
                        if (carac = 'a') then
                            exito:= True;
                    end;
                end;
            end;
        end;
    end;

    if (exito) then
        writeln('Felicidades! Ingresaste "escoba" correctamente')
    else
        writeln('No ingresaste la palabra "escoba"');
{
    Presta atencion al codigo de arrbia

    Toda esa secuencia de If then... if then... y asi, es para comprobar que la 
    cadena que ingresaste sea "escoba"

    al usar "read(carac)" siendo carac donde fue almacenada la cadena, el programa
    va leyedo caracter por caracter

    Ejemplo visual:

    La "cajita" carac almacena dentro la secuencia de caracteres "escoba" pero procesa uno por uno (los voy a separar con espacios para hacerlo mas visual)

                          v
                carac:  > e <  s  c  o  b  a
                          ^

    cada vez que yo utilice "read(carac)" avanzará al siguiente caracter


                          v
            carac:      > e <  s  c  o  b  a
                          ^
read(carac) 
                              v
            carac:       e  > s <  c  o  b  a
                              ^
read(carac)
                                 v
            carac:       e  s  > c <  o  b  a
                                 ^
read(carac)
                                    v
            carac:       e  s  c  > o <  b  a
                                    ^
read(carac)
                                       v
            carac:       e  s  c  o  > b <  a
                                       ^
read(carac)
                                          v
            carac:       e  s  c  o  b  > a < 
                                          ^     



ES MUY IMPORTANTE entender que cuando usamos tipos de datos CHAR no es posible usar >>>>>readLN<<<<< 

No preguntes por qué, y disfrutá de conocer unicamente que no es posible :)
Asique cada vez que quieras leer desde teclado un char y avanzar sobre esa cadena de caracteres, usas READ.

    }
end.