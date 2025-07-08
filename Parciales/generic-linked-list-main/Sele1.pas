{
Algoritmos y Programaclón 1 — C2 - Tema 1
Parcial — 10 Fecha
lunes 26-05-2025

Una Tienda de artículos deportivos desea organizar y analizar su stock de productos para la temporada de invierno.
De cada da Producto se conoce la siguiente información: 
código de producto, 
descripción, 
categoría (1: indumentaria, 2: calzado, 3: accesorios, 4: equipamiento, 5: suplementos),
stock actual, 
stock mínimo 
precio unitario.

1. Generar una lista de productos. Se leen productos hasta que llegue el producto con código de producto 999.
La lista debe quedar en eI mismo orden en que fueron leídos los datos.

2. Recorrer la lista generada en 1) una sola vez para:

a) Eliminar de la lista todos los productos que tienen el stock actual por debajo del stock mínimo. No
considerarlos para los puntos 2b y 2c.

b) Calcular e informar para cada categoría el monto total recaudado (stock actual * precio unitario).

c) Calcular e informar los dos códigos de producto que tienen mayor stock actual de la categoría 5.

Nota: Hacer el programa Principal. Modularizar.
}


program parcial2605;

const
	corte = 999;
type 
	Productos=record;
		codprod:integer;
		desc:string;
		cat:integer;
		stockAct:integer;
		stockMin:integer;
		precio:real;
	end;
	
listaProductos = specialized LinkedList <Productos>;
vCat = array[1..5] of integer;

	maxCat5 = record;
		cod: integer;
		stock: integer;
	end;
	

//Procedimientos y funciones

function AlertaStock (stockAct, stockMin: integer): boolean;
begin
	if stockAct<stockMin then
	AlertaStock:=true;
	else
	AlertaStock:=false;
end;


procedure inicializarvCat (var v:vCat);
var
	i:integer;

begin
	for i:=1 to 5 do
	begin
	v[i]:=0;
	end;
end;


procedure leerProductos (var p:Productos);
	begin
	readln(p.codprod)
		if (p.codprod <> corte) then
		begin
			readln(p.desc);
			readln(p.cat);
			readln(p.stockAct);
			readln(p.stockMin);
			readln(p.precio);
		end;
	end;
	
procedure cargarLista (var LP:ListaProductos)
	var
		p.productos;
	BEGIN
		LP:= ListaProductos.create()
		leerProducto(p);
		while (p.codprod <> corte) do
		begin
			LP.add(p);
			leerProducto(p);
		end;
	end;
	
//2B - Calcular e informar para cada categoría el monto total recaudado (stock actual * precio unitario)

procedure vCatMontos (var v:vCat; cat:integer; stockAct:integer; precio:real);
	var
	    i: integer; //para mi esto está de más pero no lo comprobé aún
    begin
        v[cat]:=v[cat]+(stockAct*precio);
    end;

procedure imprimirVMontos (v:vCat);
var 
	i:integer;
begin
	for i:=1 to 5 do
	begin
		writeln('El monto total recaudado para la categoría ', i ,' es ',v[i]);
	end;
end;	

//2C - Calcular e informar los dos códigos de producto que tienen mayor stock actual de la categoría 5

procedure MaxCat5 (var max1: maxCat5, var max2: maxCat5; stockAct:integer; codprod:integer); 
	//Inicializo en programa principal
begin
	if stockAct>max1.stock then
		begin
			max2.cod:=max1.cod;
			max1.cod=codprod;
			max1.stock:=stockAct;
		end;
	else 
        if stockAct>max2.stock then
	    	begin
			max2.cod:=codprod;
			max2.stock:=stockAct;
    		end;
end;


//Programa principal

var
	LP:ListaProductos;
	v:VCat;
	stockAct:integer;
	max1,max2:maxcat5;
Begin
	cargarlista(LP);
	inicializarvCat(v);
	max1.cod:=-1; 
    max2.cod:=-1; 
    max1.stock:=-1; 
    max2.stock:=-1; //yo calcularía los máximos en un procedure aparte, no en el principal. Pero no sé si es correcto
	LP.reset()
	
	while (not LP.eol) do begin //para leer una sola vez
		stockAct:=LP.current().stockAct;
		if(AlertaStock(stockAct, LP.current().stockMin)) then
            LP.removecurrent();
		else
			begin
			    vCatMontos(v, LP.Current().cat, stockAct, LP.current().precio);
                if(LP.current().cat = 5) then
		    		begin
		    		maxcat5(max1, max2, stockAct, LP.current().codprod);
		    		end;
	          	LP.next();
            end;
	end;

	imprimirVMontos(v);
	writeln('El codigo de producto de la categoria 5 con mayor stock es ',max1.cod,' y el segundo con mayor stock es ',max2.cod);	//sumaría esto en el procedure de imprimir 
END.

{
Observaciones: 
    - Declarar: Seccion USES y dentro GenericLinkedList

    - > Recorrer la lista para resolver los incisos <   se podría implementar en un modulo aparte, dejando el programa principal mas limpio
    Cuando se utilizan las funciones que nos brindan de LinkedList, hay que poner () al final:
        Ejemplo:
            L.eol ()  <---------
            L.current ()  <--------- 
            L.add(Elemento) <---------
            L.next() <---------


    - No está mal pero se desentiende el criterio por el cual generas una variable aparte para almacenar unicamente el stockActual, siendo que podes acceder a esa informacion 
    como accedes en el resto, osea: L.current().campo_al_cual_acceder

    - En el inciso 2b, por un lado no es necesaria la variable local 'i' como suponías.
    Y por otro lado el vector debería ser de tipo Real.
    Al querer guardar en cada categoría el monto total recaudado, cuando se multiplica StockActual(integer)*precioUnitario(real), el valor resultante es un real
    Y ese real se está intentando guardar en un vector de tipo integer

    - En el inciso 2c está bien modularizado, deberías en el primer IF asignarle a Max2.stock el stock que tiene Max1 para que no se pierda ese dato cuando
    se actualicen los valores de Max1:
            max2.cod:=max1.cod;
			max1.cod=codprod;
            MAX2.STOCK := MAX1.STOCK
			max1.stock:=stockAct;

}