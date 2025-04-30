{
4. Se dispone de un vector con 100 números enteros. Implementar los siguientes módulos: 
a. posicion: dado un número X y el vector de números, retorna la posición del número X en dicho vector, o el valor 
-1 en caso de no encontrarse. 
b. intercambio: recibe dos valores x e y (entre 1 y 100) y el vector de números, y retorna el mismo vector donde 
se intercambiaron los valores de las posiciones x e y. 
c. sumaVector: retorna la suma de todos los elementos del vector. 
d. promedio: devuelve el valor promedio de los elementos del vector. 
e. elementoMaximo: retorna la posición del mayor elemento del vector 
f. elementoMinimo: retorna la posición del menor elemento del vecto
}

program Ejercicio4;
const
    dimF = 100;
type
    Vector_enteros = Array[1..dimF] of integer;

function posicion (x:integer; V:Vector_enteros): integer;
    var
        i:integer;
        ok:boolean;
    begin
        i:=0;
        ok:= False;
        while (i<dimF) and (not ok) do begin
            i:= i+1;
            if (v[i]=x) then begin 
                posicion:=i;
                ok:= True;
            end
        end;
        if (not ok) then
            posicion:= -1;
    end;

procedure Intercambio(var V:Vector_enteros; x,y:integer);
    var
        aux:integer;
    begin
        aux:= v[x];
        v[x]:= v[y];
        v[y]:= aux;
    end;

function sumaVector(V:Vector_enteros):integer;
    var
        i,suma:Integer;
    begin
        suma:=0;
        for i:= 1 to dimF do
            suma:= suma + v[i];
        sumaVector:= suma;
    end;

function Promedio ( suma:integer): real; 
    begin 
        Promedio:= suma / dimF;
    end;

function elementoMaximo (V:Vector_enteros):integer;
    var 
        i:integer;
        max,p_max:integer;
    begin
        max:=-1;
        p_max:=-1;
        for i:= 1 to dimF do
            if (v[i] > max) then begin
                max:= v[i];
                p_max:= i;
            end;
        elementoMaximo:= p_max;
    end;

function elementoMinimo(V:Vector_enteros):integer;
    var 
        i:integer;
        min,p_min:integer;
    begin
        min:=32000;
        p_min:=-1;
        for i:= 1 to dimF do
            if (v[i] < min) then begin
                min:= v[i];
                p_min:= i;
            end;
        elementoMinimo:= p_min;
    end;

var 
    V:Vector_enteros;
begin
    // Se dispone vector

    {
    Falta resolver
    }
    
end.