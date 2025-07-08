program test;
uses GenericLinkedList;

type  
  ListaInt = specialize LinkedList<integer>;
  
procedure printFullList(L : ListaInt);
var
  num : integer;
begin
  //vamos a recorrer la lista completa
  l.reset();
  writeln; writeln('----------------------');
  num := 0;
  while (not l.eol) do begin
    num := num + 1;
    writeln('Nodo ',num,' ==> ', l.current);
    l.next;
  end;
  writeln('******'); writeln;
end;

procedure insertOrdered(l: ListaInt; valor: integer);
var buscar: boolean; actual: integer;
begin
l.reset;
buscar:= true;
while(not l.eol) and buscar do
	begin
	actual:= l.current;
	if actual > valor then begin
		buscar:= false;
		end
	else begin
		l.next;
		end
	end;
l.insertCurrent(valor);
end;

var 
  l: ListaInt;

begin
  //randomize;
  
  l:= ListaInt.create;  
  insertOrdered(l, 10);
  insertOrdered(l, 12);
  insertOrdered(l, 8);
  L.add(15);
  L.addFirst(5);
  insertOrdered(L,46);
  printFullList(l);
end.
