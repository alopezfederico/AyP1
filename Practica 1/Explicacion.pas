program JuegosConsola;

var
  codigo, codigoMaxVentas, codigoMaxRecaudacion: integer;
  cantidad, maxVentas: integer;
  precio, recaudacion, maxRecaudacion: real;

begin
 
  maxVentas := 0;
  maxRecaudacion := 0;
  codigoMaxVentas := 0;
  codigoMaxRecaudacion := 0;

  writeln('Ingrese el codigo del producto:');
  readln(codigo);

  while codigo <> 0 do
  begin
    writeln('Ingrese la cantidad vendida:');
    readln(cantidad);
    
    writeln('Ingrese el precio por unidad:');
    readln(precio);


    recaudacion := cantidad * precio;

    if cantidad > maxVentas then
    begin
      maxVentas := cantidad;
      codigoMaxVentas := codigo;
    end;

    if recaudacion > maxRecaudacion then
    begin
      maxRecaudacion := recaudacion;
      codigoMaxRecaudacion := codigo;
    end;

  
    writeln;
    writeln('Ingrese el codigo del siguiente producto (0 para finalizar):');
    readln(codigo);
  end;

  if codigoMaxVentas <> 0 then
  begin
    writeln;
    writeln('El producto más vendido fue el de código ', codigoMaxVentas, ' con ', maxVentas, ' unidades.');
    writeln('El producto que más recaudó fue el de código ', codigoMaxRecaudacion, ' con un total de ', maxRecaudacion:0:2);
  end
  else
    writeln('No se ingresaron productos.');

end.