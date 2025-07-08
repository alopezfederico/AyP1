{Una Tienda de artículos deportivos desea organizar y analizar su stock de productos para la temporada de invierno.
De cada da Producto se conoce la siguiente información: código de producto, descripcion, categoría (1: indumentaria,
2: calzado, 3: accesorios, 4: equipamiento, 5: suplementos), stock actual, stock mínimo y precio unitario.
Generar una lista de productos. Se leen productos hasta que llegue el producto con código de producto 999.
La lista debe quedar en eI mismo orden en que fueron leídos los datos.
Recorrer la lista generada en 1) una sola vez para:
a) Eliminar de la lista todos los productos que tienen el stock actual por debajo del stock mínimo. No
considerarlos para los puntos 2b y 2c.
b) Calcular e informar para cada categoría el monto total recaudado (stock actual * precio unitario).
c) Calcular e informar los dos códigos de producto que tienen mayor stock actual de la categoría 5.
Nota: Hacer el programa Principal. Modularizar.

A) Eliminar aquellos que tienen el stockActual por debajo del stockMinimo. No considerar para B y C

B) Calcular e informar el monto total recaudado para cada categoría ( stock_actual * precio)

C) Calcular e informar los dos codigos de producto que tienen mayor stock actual de la categoría 5

}

program Parcial;
uses 
    GenericLinkedList;
const   
    corte = 999;
type
    rango_categoria = 1..5;

    reg_producto =  record
        codigo: integer;
        descripcion: String;
        categoria: integer;
        stock_actual: integer;
        stock_minimo: integer;
        precio: real;
        end;
    
    Lista_productos = specialize LinkedList<reg_producto>;

    V_cat = Array[rango_categoria] of real;

procedure Leer(var p:reg_producto);
    begin
        write('Ingrese codigo: '); p.codigo:= random(1000); writeln(p.codigo);
        if (p.codigo<>corte) then begin
            write('Ingrese descripcion: '); p.descripcion:= 'Descrip'; writeln(p.descripcion);
            write('Ingrese categoria (1-5): '); p.categoria:= random(5)+1; writeln(p.categoria);
            write('Ingrese stock actual: ');p.stock_actual:= random(1000); writeln(p.stock_actual);
            write('Ingrese stock minimo: ');p.stock_minimo:= random(100); writeln(p.stock_minimo);
            write('Ingrse precio: '); p.precio:= random(100); writeln(p.precio:2:2);
        end;
        writeln('-----------------------------------');
        writeln();
    end;

procedure Generar_estructura(var L:Lista_productos);
    var
        p:reg_producto;
    begin
        Leer(p);
        while (p.codigo <> corte) do begin
            L.addFirst(p);
            Leer(p);
        end;
    end;

procedure Recorrer (var L:Lista_productos; var V_contador: V_cat);
    var
        max1,max2:integer;
        codMax1,codMax2:integer;
        x:integer;
    begin
        max1:=-1;
        max2:=-1;
        codMax1:=0;
        codMax2:=0;
        L.reset();
        while (not L.eol()) do begin
            if (L.current().stock_actual < L.current().stock_minimo) then
                L.removeCurrent()
            else begin
                V_contador[L.current().categoria]:= V_contador[L.current().categoria] + (L.current().stock_actual * L.current().precio);
                if (L.current().categoria = 5) then
                    if (L.current().stock_actual > max1 )then begin
                        max2:= max1;
                        max1:= L.current().stock_actual;
                        codMax2:=codMax1;
                        codMax1:= L.current().codigo;
                        end
                    else 
                        if(L.current().stock_actual < max2) then begin
                            max2:= L.current().stock_actual;
                            codMax2:= L.current().codigo;
                        end;
                end;
            L.next();
        end;
        for x:= 1 to 5 do 
            writeln('Monto recaudado para la categoria ',x,': ',V_contador[x]:2:2);

        writeln('Codigo de producto con mayor stock: ',codMax1);
        writeln('Codigo de segundo producto con mayor stock: ',codMax2);
    end;
var 
    L:Lista_productos;
    V_contador:V_cat;
    x:integer;
begin
    L:= Lista_productos.create();
    
    for x:= 1 to 5 do
        V_contador[x]:=0;

    Generar_estructura(L);
    Recorrer(L,V_contador);
end.