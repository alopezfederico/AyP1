program test;
uses GenericLinkedList;
const
  steps = 6;
type
  
  ListaInt = specialize LinkedList<integer>;
  
function square(num : integer) : integer;
begin 
  square := num*num
end;

procedure printFullList(L : ListaInt);
var
  num : integer;
begin
  //vamos a recorrer la lista completa
  l.reset();
  writeln; writeln('----------------------');
  num := 0;
  while (not l.eol()) do begin
    num := num + 1;
    writeln('Nodo ',num,' ==> ', l.current());
    l.next;
  end;
  writeln('******'); writeln;
end;


var 

  l: ListaInt;
  i : integer;
begin
  l:= ListaInt.create;
  //ponemos algunos valores en la lista de numeros

  writeln('Armo una lista con algunos numeros ');

  for i:= -4 to 5 do
    l.add(square(i));

  printFullList(L);

  //volvemos al inicio y avanzamos algunos nodos
  l.reset(); 
  for i:= 1 to steps do begin
     l.setCurrent(l.current() * 10);
     l.next();
  end;   

  writeln('Desde el inicio, avancé ',steps,' nodos. El nodo actual tiene el valor ',l.current());
  writeln('Agrego el numero ',square(square(steps)),' en la posicion actual');
  l.insertCurrent(square(square(steps)));

  printFullList(L);

  //volvemos al inicio y avanzamos algunos nodos
  l.reset(); 
  for i:= 1 to steps do l.next();
  writeln('Desde el inicio, avancé ',steps,' nodos. El nodo actual tiene el valor ',l.current());
  writeln('Elimino los siguientes ',steps DIV 2,' nodos ');
  for i:= 1 to (steps DIV 2) do
    writeln('Se elimino el numero ',l.removeCurrent());

  writeln('Ahora me salteo un nodo, y elimino el siguiente');
  l.next();
  i := l.removeCurrent();
  writeln('Se elimino el numero ',i);


  writeln('Quedé parado en un nodo que tiene el valor ',l.current());
  writeln('Borro el nodo actual: ',l.removeCurrent());
  writeln('El nuevo nodo actual tiene el valor ',l.current());
  writeln('La lista quedo:' );
  printFullList(L);
  

end.
