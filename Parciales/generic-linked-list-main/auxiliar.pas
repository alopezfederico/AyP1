program Cracovia;
uses 
    GenericLinkedList;
type
    Empresa = record
        cuit: integer;
        nombre: string;
        provincia: String;
        fuerza: integer;
        presion: integer;
        end;
    
    Analisis = record
        cuit: integer;
        cantFuerza: integer;
        end;
    
    LEmpresa = specialize LinkedList <Empresa>;
    LAnalisis = specialize LinkedList <Analisis>;

    VFuerza = Array [1..5] of integer;

procedure CargarEmpresa (var E:Empresa);
    begin
        read(E.cuit);
        if (E.cuit <> -1) then begin
            read(E.nombre);
            read(E.provincia);
            read(E.fuerza);
            read(E.presion);
        end;
    end;

procedure LeerEmpresas(var L:LEmpresa);
    var 
        E:Empresa;
    begin
        CargarEmpresa(E);
        while (E.cuit<>-1) do begin
            L.reset();
            while ((not L.eol()) and (E.cuit>= L.current().ciut)) do 
                L.next();
            L.insert(E);
            CargarEmpresa(E);
        end;
    end;

procedure ProcesarInformacion(L:LEmpresa; var V:VFuerza; var Lista: LAnalisis; var cantBaja:integer);
    var 
        cuit:integer;
    begin
        IniciarVector(V);
        L.reset();
        while (not L.eol()) do begin
            cuit:= L.current().cuit;
            Lista.current().cuit:= cuit;
            while ((not L.eol()) and (cuit = L.current().cuit)) do begin
                Lista.current().cantFuerza:= Lista.current().cantFuerza + 1;
                V[L.current().fuerza]:= V[L.current().fuerza] + 1;
                if (provincia(L.current())) then begin
                    cantBaja:= cantBaja +1;
                L.next();
            end;
            Lista.next();
        end;
    end;

procedure ProcesarInformacion2(var V:VFuerza; var Lista:LAnalisis; var cantBaja:integer);
    var 
        cuit: integer;
        E: Empresa;
        A: Analisis; //Registro que se va a utilizar para cargar el cuit y cant de fuerzas analizadas (El cual se añade a la Lista del incisoA)
    begin
        IniciarVector(V);
        CargarEmpresa(E);
        while (E.cuit<>-1) do begin //Mientras no se ingrese el cuit -1

            A.cuit:= E.cuit;  //Guardo en A.cuit el cuit de la empresa actual
            A.cantFuerza:=0;  // Inicializo A.cantFuerza en 0 para incrementar las fuerzas analizadas a medida que se leen para este mismo cuit.
        
            while ((E.cuit<>-1) and (E.cuit = A.cuit)) do begin // mientras el cuit no sea -1 y el cuit que se lea sea igual al leido anteriormente 

                A.cantFuerza:= A.cantFuerza + 1;    //Incremento la cantidad de fuerzas leidas para el cuit actual     ----> Para el Inciso A
                V[E.fuerza]:= V[E.fuerza] + 1;      //Incremento la cantidad de fuerzas analizadas del vector para la fuerza actual   ----> Para el inciso B
                if (provincia(E)) then begin        //Si es de Buenos Aires y la presion 1 
                    cantBaja:= cantBaja +1;         //Incremento el contador      ----> Para el inciso C

                CargarEmpresa(E);                   //Leo la siguiente empresa (dentro de la estructura while ya que puede haber mas de una fuerza analizada para el mismo cuit)
            end;
        
            Lista.add(A); // Inciso A) Añado a la Lista el registro A que fui cargando con informacion para un mismo cuit
        end;
    end;


procedure InformarA(Lista:LAnalisis);
    begin
        Lista.reset();
        while (not Lista.eol()) do begin
            write(Lista.current(), Lista.current().cantFuerza);
            Lista.next();
        end;
    end;

procedure InformarB(V:VFuerza);
    var 
        fuerza:integer;
        min:integer;
        i:integer;
    begin
        min:= 999;
        for i := 1 to 5 do begin
            if (V[i]<min)then begin
                fuerza:= i;
                min:= V[i];
            end;
        end;
        write('Fuerza: ',fuerza);
    end;

function Provincia(E:empresa): boolean;
    begin
        if (E.provincia = 'Buenos Aires') and (E.presion = 1) then
            Provincia := true
        else
            Provincia := false;
    end;

procedure IniciarVector(var V:VFuerza);
    var
        i:integer;
    begin
        for i:= 1 to 5 do 
            V[x]:= 0;
    end;

var 
    ListaEmpresas: LEmpresa;
    ListaAnalisis: LAnalisis;
    V:VFuerza;
    catBaja: integer;
begin
    ListaEmpresas:= L.create();
    ListaAnalisis:= L.create();
    catBaja:= 0;
    LeerEmpresas(ListaEmpresas);
    ProcesarInformacion(ListaEmpresas,V,ListaAnalisis,catBaja);
    InformarA(ListaAnalisis);
    InformarB(V);
end.


{
    - Cuidado con la forma de crear las listas
        Nombre_de_Lista := Tipo_de_dato.create();
        En este caso sería: 
            ListaEmpresas:= LEmpresa.create();
            ListaAnalisis:= LAnalisis.create();

    - No necesariamente tenes que crear una Lista con todas las empresas que son leidas.
    Podrías directamente a medida que se ingresa una empresa como bien cargas en el modulo
    CargarEmpresa, ir realizando los calculos para los enunciados.
    La lista que si tenes que crear es la del inciso A que almacenaría tipos de dato 
    Analisis como declaraste en el type y como resolviste en el modulo ProcesarInformacion.
    Mientras se mantenga el mismo cuit, incrementas las fuerzas analizadas para ese cuit
    Y una vez se ingresa un cuit diferente, se añade a la lista el registro que fuiste 


}