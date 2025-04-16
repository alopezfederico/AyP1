{
3. Se dispone de un vector con números enteros de tamaño TAM.  
a. Realizar un módulo que imprima el vector desde la primera posición hasta la última. 
b. Realizar un módulo que imprima el vector desde la última posición hasta la primera. 
c. Realizar un módulo que imprima el vector desde la mitad (TAM DIV 2) hacia la primera posición, y desde la mitad 
más uno hacia la última posición. 
d. Realizar un módulo que reciba el vector, una posición X y otra posición Y, e imprima el vector desde la posición 
X hasta la Y. Asuma que tanto X como Y son menores o igual a TAM. Y considere que, dependiendo de los valores 
de X e Y, podría ser necesario recorrer hacia adelante o hacia atrás. 
e. Utilizando el módulo implementado en el inciso anterior, vuelva a realizar los incisos a, b y c. 
}
program Ejercicio3;
const 
    TAM = 20;
type
    Vector_enteros = Array[1 .. TAM] of integer;


// Inciso A
procedure Imprimir_vector(V:Vector_enteros);
    var
        x:integer;
    begin
        for x:= 1 to TAM do
            writeln('NUMERO: ',V[x]);
    end;

// Inciso B
procedure Imprimir_vector_reverso(V:Vector_enteros);
    var
        x:integer;
    begin
        for x:= TAM downto 1 do
            writeln('NUMERO: ',V[x]);
    end;

// Inciso C
procedure Imprimir_vector_mitad (V:Vector_enteros);
    var
        mid,x:integer;
    begin
        mid:= TAM div 2;
        for x:= mid downto 1 do
            writeln('NUMERO: ',V[x]);
        for x:= mid+1 to TAM do
            writeln('NUMERO: ',V[x]);
    end;


// Inciso D
procedure Imprimir_entreDos (V:Vector_enteros; x,y:integer);
    var
        i:Integer;
    begin
        if (x<y) then
            for i:= x to y do 
                writeln('NUMERO: ',V[i])
        else 
            for i:= x downto y do 
                writeln('NUMERO: ',V[i]);
    end;

var
    V:Vector_enteros;
    x,y:integer;
begin
    //Dispone de un vector

    Imprimir_vector(v);
    Imprimir_vector_reverso(v);
    Imprimir_vector_mitad(v);
    write('Ingrese valor 1: '); readln(x);
    write('Ingrese valor 2: '); readln(y);
    Imprimir_entreDos(V,x,y);

    Imprimir_entreDos(V,1,TAM);
    Imprimir_entreDos(V,TAM,1);
    //Imprimo primer mitad
    Imprimir_entreDos(V,TAM div 2, 1);
    //Imprimo segunda mitad
    Imprimir_entreDos(V,TAM div 2 +1, TAM);
end.
