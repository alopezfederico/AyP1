{
2. Dado el siguiente programa, complete las líneas indicadas, considerando que: 

a. El módulo cargarVector debe leer números reales y almacenarlos en el vector que se pasa como parámetro. Al 
finalizar, debe retornar el vector. 

b. El módulo modificarVectorySumar debe devolver el vector con todos sus elementos incrementados con el valor 
n y también debe devolver la suma de todos los elementos del vector. 


}

program Vectores; 
const 
  cant_datos = 150; 
type 
  vdatos = array[1..cant_datos] of real; 
 
procedure cargarVector(var v:vdatos); 
    var 
        x:integer;
    begin 
        for x:= 1 to cant_datos do begin
            write('Ingrese numero real: '); readln(v[x]);
        end;
    end; 
 
procedure modificarVectorySumar(var v:vdatos; n: real; var suma: real); 
    var 
        x:integer;
    begin 
        for x:= 1 to cant_datos do begin
            v[x]:= v[x] + n;
            suma:= suma + v[x];
        end;
    end; 


{ programa principal } 
var 
  datos : vdatos;   
  i: integer;   
  num, suma : real; 
begin  
    suma := 0;
    cargarVector(datos); { completar }

    writeln('Ingrese un valor a suma');   readln(num);   
    modificarVectorySumar(datos,num,suma);{completar} 
    writeln('La suma de los valores es: ', suma); 
end.