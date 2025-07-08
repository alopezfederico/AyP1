program parcialOK;
uses 
    GenericLinkedList;
const
    corte = 999;

type
    Producto = record;
        codProd:integer;
        descripcion:string;
        cat:integer;
        stockAct:integer;
        stockMin:integer;
        precioUni:real;
    end;

listaProducto = specialize LinkedList <Producto>;
vCat = array [1..5] of real;

maxCat5 = record;
    cod:integer;
    stock:integer;
end;

function stockBajo (stockAct, stockMin: integer):boolean;
    begin
        if stockAct < stockMin then
            stockBajo:=true;
        else
            stockBajo:=false;
    end;

procedure leerProducto (var p:Producto);
begin
    write('Ingrese numero: '); readln(p.codProd);
    if (p.codProd <> corte) then
        begin
            readln(p.descripcion);
            readln(p.cat);
            readln(p.stockAct);
            readln(p.stockMin);
            readln(p.precioUni);
        end;
end;


procedure cargarLista (var LP: listaProducto);
var
    p:Producto;
begin
    LP:= listaProducto.create();
    leerProducto(p);
    while (p.codProd <> corte) do
        begin
            LP.add(p);  //--------------------> ADDFIRST
            leerProducto(p);
        end;
end;
procedure inicializarVectorCat (var v:vCat);
var
    i:integer;
begin
    for i:=1 to 5 do 
    begin
        v[i]:=0;
    end;
end;

procedure sumarVectorCat (var v:vCat; cat:integer; stockAct:integer; precioUni:real);
var
    i:integer;
begin
    v[cat]:=v[cat]+(stockAct+precioUni);
end;

procedure informarVectorCat (v:vCat);
var
    i:integer;
begin
    for i:=1 to 5 do 
    begin
        writeln('El monto total recaudado por la categoria' , i,' fue ', v[i]);
    end;
end;


procedure maximos (var max1:maxCat5, var max2:maxCat5; stockAct:integer; codProd:integer);
begin
    if stockAct > max1.stock then 
        begin
            max2:=max1;
            max1.cod:=codProd;
            max1.stock:=stockAct;
        end
    else if stockAct > max2.stock then
        begin
            max2.cod:=codProd;
            max2.stock:=stockAct;
        end;
end;


var
    LP:listaProducto;
    v:vCat;
    stockAct:integer;
    max1,max2:maxCat5;
begin
    cargarLista(LP);
    inicializarVectorCat(v);
    max1.cod:=-1; max2.cod:=-1;
    max1.stock:=-1; max2.stock:=-1;

    LP.reset();
    while (not LP.eol()) do
    begin
        stockAct:=LP.current().stockAct;
        if (stockBajo(stockAct, LP.current().stockMin)) then
            begin
                LP.removecurrent();
            end
        else
            begin
                sumarVectorCat(v, LP.current().cat, stockAct, LP.current().precioUni);
                if(LP.current().cat = 5) then
                    begin
                        maximos(max1, max2, stockAct, LP.current().codProd);
                    end;
                LP.next();
            end;
    end;

    informarVectorCat(v);
    writeln ('El codigo de producto de la categoria 5 con mayor stock fue', max1.cod);
    writeln ('El codigo del segundo producto de la categoria 5 con mayor stock fue', max2.cod);
end.