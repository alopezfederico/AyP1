program Strings;
var

{Se recomienda limitar la cantidad de caracteres que va a tener el string usando [limite]

Si no se utiliza el limitador, para cada string se está guardando espacio en la memoria muy grande el cual 
no será utilizado
}

    String_1, String_2, String_3: String[30];

begin
    

{
    Los strings sirven para almacenar "palabras" o cadenas sin reconocer caracter por caracter como pasa en 
    el tipo de dato CHAR
    
    Sin embargo, si se puede comparar la cadena en su totalidad ejemplo
        String1 = String2
    y reconocerá si son iguales o no.

}

    String_1:= 'HOLA';
    String_2:= 'QUE TAL?';
    
    writeln();

    writeln('String1: ',String_1);
    writeln('String2: ',String_2);

    WriteLn();
    writeln('Concatenando:');
    WriteLn();
// Concat(variable1, variable2, ' TEXTO ', variableX);
    String_3:= Concat(String_1,' ',String_2);
    writeln(String_3);

    writeln();
    writeln(String_1=String_2);

  
    writeln();
end.