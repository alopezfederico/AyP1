program Boolens;

var
    Bool1, Bool2, Bool3: Boolean;

begin
  
  {
    Repasar el funcionamiento de los operadores
    OR
    AND
    NOT

    Para entender el por qué de los resultados que 
    se están imprimiendo en este programa
  }


    //Operadores entre booleans: AND | OR | NOT
    WriteLn();
    Bool1:= True;
    Bool2:= False;
    writeln('B1 ---> ', Bool1);
    writeln('B2 ---> ', Bool2);

    WriteLn();
    Bool3:= Bool1 OR Bool2;
    writeln('B1 OR B2 = ', Bool3);
    
    Bool3:= Bool1 AND Bool2;
    writeln('B1 AND B2 = ', Bool3);

    Bool3:= NOT Bool1;
    writeln('NOT B1 = ', Bool3);

    Bool3:= NOT Bool2;
    writeln('NOT B2 = ', Bool3);

    WriteLn();WriteLn();


end.