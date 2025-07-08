program ej5p6;
uses GenericLinkedList;
const
    dimF=3; //los employ q trabajan en la empresa los q entraron desde el 2024 y despues del 2024
    cond_cort=0;
type
    reg_fecha=record
        dia:Integer;
        mes:Integer;
        anio:Integer;
     end;
    reg_empleado=record
        code:Integer;
        nombre:String;
        apellido:String;
        DNI:Integer;
        area:String;
        anio_ingre:reg_fecha;
     end;
    
    L_empleados = specialize LinkedList <reg_empleado>;

    vec_separacion_L =Array [1..dimF] of L_empleados; //1 separa a todos los employ, 2 los entraron despues del 2024 y 3 los que ingresaron antes del 2024


procedure cargo_L (var L:L_empleados);
    var
        empleado:reg_empleado;
    begin
        L.create();
        WriteLn ('La carga de empleados finaliza con el año 0...');
        with (empleado) do
            begin
                while not(L.eol()) do //tengo que agregar la condicion de corte 
                    begin
                        with (empleado.anio_ingre) do
                            begin
                                WriteLn ('Introduzca la fecha de ingreso del empleado:...');
                                Write ('Anio: '); ReadLn (anio);
                                if (anio <> cond_cort) then //para q no se carguen los datos si es q ya se quiere finalizar el prog NO CHEQUEADO
                                    begin
                                        Write ('Dia: '); ReadLn (dia);
                                        Write ('Mes: '); ReadLn (mes);
                                    end;
                            end;
                        if (anio_ingre.anio <> cond_cort) then //para q no se carguen los datos si es q ya se quiere finalizar el prog NO CHEQUEADO
                            begin
                                Write ('Code: '); ReadLn (code);
                                Write ('Nombre: '); ReadLn (nombre);
                                Write ('Apellido: '); ReadLn (apellido);
                                Write ('DNI: '); ReadLn (DNI);
                                Write ('Area: '); ReadLn (area);
                            end;
                        L.add(empleado);
                    end;
    end;

{
if () then tengo q poner directamente el por el 1 2 y 3 ? tmb se me ocurre preguntar si entro despues del 2024 o antes
}

{ 
procedure cargo_estructura_vec_L (var separacion_L:vec_separacion_L; L:L_empleados);
    var
        i:Integer;
    begin
        L.Reset();
        while not(L.eol()) do
            begin
                if () then
            end;
    end; 
}


var
    L:L_empleados;
begin
    L:=L_empleados.create();
    cargo_L(L);
end.

