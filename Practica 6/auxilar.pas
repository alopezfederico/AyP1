program auxiliar;
const
    dimF = 20;
    corte = 4;
type
    Vector_enteros = Array[1..dimF] of integer;


procedure Cargar_vector(var V: Vector_enteros); 
// Ingresar dimF numeros al vector
    var 
        num,x,i:integer;
    begin
        for x:= 1 to dimF do begin
            write('Ingrese numero: '); readln(num);
            V[x]:= num;
        end;

        for i:= 1 to dimF do
            write(' / ', V[i]); 

    end;


procedure Cargar_vector_dimL (var V : Vector_enteros; var dimL:integer);
    var 
        num:integer;
    begin
        dimL:= 0;   // Vector está vacío 
        write('Ingrese numero: '); readln(num);
        while ((dimL<dimF) and (num <> corte)) do begin
            dimL := dimL +1;
            V [dimL]:= num;
            if (dimL<dimF) then begin
                write('Ingrese numero: '); 
                readln(num);
            end;
        end; 
    end;

procedure Imprimir (V: Vector_enteros; dimL:integer);
    var 
        x:integer;
    begin
        for x:= 1 to dimL do
            writeln(V[x]);
    end;
 
var 
    Vf,Vl:Vector_enteros;
    x,dimL:integer;
begin
    for x:= 1 to dimF do begin
        Vf[x]:=0;
        Vl[x]:=0;
    end;

  //  Cargar_vector(Vf);
    Cargar_vector_dimL(Vl,dimL);
    Imprimir(Vl,dimL);
end.