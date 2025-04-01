program Ayuda;

procedure Algo(var p1:string);
    var
        p2:String;
    begin
        p2:= 'Hola';
        writeln(p2);
        writeln(p1);
        p1:= p2;
    end;

var
    palabra:string;
begin
    palabra:= 'Cabeza';
    Algo(palabra);
    writeln(palabra);
end.