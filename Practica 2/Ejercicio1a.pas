program anidamientos;
var
    letra: char;
function analizarLetra: boolean;
    begin
        if (letra >= 'a') and (letra <= 'z') then
            analizarLetra := true
        else
        if (letra >= 'A') and (letra <= 'Z') then
            analizarletra := false;
    end; 
procedure leer;
    begin
        readln(letra);
        while ((letra<'A') or (letra>'z') or ((letra>'Z') and (letra<'a')) ) do
            begin
                write('No ingresaste una letra, intenta de nuevo: '); readln(letra);
            end;
        if (analizarLetra) then
            writeln('Se trata de una minúscula')
        else
            writeln('Se trata de una mayúscula');
    end; {fin del procedure leer}
var
    ok: boolean;
begin {programa principal}
    leer;
    ok := analizarLetra;
    if ok then
        writeln('Gracias, vuelva prontosss');
end.