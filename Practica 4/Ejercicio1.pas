{
1. program sumador; 
2. type 
3.   vnums = array [1..10] of integer; 
4. var 
5.   numeros : vnums; 
6.   i : integer; 
7. begin 
8.   for i:=1 to 10 do      primer bloque for
9.     numeros[i] := i; 
10.  
11.   for i := 2 to 10 do       segundo bloque for
12.     numeros[i] := numeros[i] + numeros [i-1] 
13. end.

a. ¿Qué valores toma la variable números al finalizar el primer bloque for? 

    Toma los valores del indice. En cada posicion queda almacenada la posicion

    [1][2][3][4][5][6][7][8][9][10]

b. Al terminar el programa, ¿con qué valores finaliza la variable números? 

    De 2 a 10, Almacena la suma del elemento actual mas el anterior

    [1][2+1] [3+3] [4+6] [5+10] [6+15] [7+21] [8+28] [9+36] [10+45]
    [1][3]   [6]   [10]  [15]   [21]   [28]   [36]   [45]   [55]
    [1][3][6][10][15][21][28][36][45][55]

c. Si se desea cambiar la línea 11 por la sentencia:   
      for i:=1 to 9 do     
¿Cómo debe modificarse el código para que la variable números contenga los mismos valores que en 1.b)?  
   
    for i:= 1 to 9 do 
        v[i+1]:=v[i+1] + v[i]


d. ¿Qué valores están contenidos en la variable numeros si la líneas 11 y 12  se reemplazan por: 

     for i:=1 to 9 do     
         numeros[i+1] := numeros[i];

    Quedaría almacenado el numero 1 en todas las posiciones.


}