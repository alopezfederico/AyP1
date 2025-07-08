program Nombre_programa;
const
    dimF = 40;
type

    Vector = Array [1 .. dimF] of integer;

procedure Cargar (var V: Vector);
    var 
        x:integer;
    begin
        for x:= 1 to dimF-10 do begin
            V[x]:= x*x;                 
        end;
    end;

{
Ingresar 10 nuevos numeros respetando el orden del vector
}

procedure Ingresar_ordenado(var V:Vector; var dimL:integer);
    var 
        x,y:integer;
        mitad,pos,num:integer;
    begin

        {Recibir elemento  = [12]
         Buscar posicion donde insertar
         Encontraste pos

         [1] [4] [9] [16] [25] [  ] [ ] [ ]
         Hacer corrimiento
         [1] [4] [9] [12] [16] [25] [ ] [ ]
         Insertar
         [1] [4] [9] [12] [16] [25] [ ] [ ]
        }




    end;
