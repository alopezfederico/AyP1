unit GenericPointer;
{$mode objfpc}
{$modeswitch advancedrecords}
interface

uses fgl;

type

  generic Puntero<T> = class
   type
    TPuntero = ^T;
  private

  aux : TPuntero;

  public
    constructor create;
    procedure reset;
    function isSet : boolean;
    procedure delete;
    procedure set(datum : T);
    procedure get(var datum : T);
  end;
  
implementation
 
   {* Reset all pointers to nil
     @FIXME shall we clear all nodes from memory 
    *} 
    constructor TPuntero.create;
	  begin
        new(aux);
      end;
	 
  {*
   Set points for current and previous to the first node of the list
  *} 
	procedure TPuntero.reset;
	begin
	  aux := nil;
	end;
    
    function TPuntero.isSet : boolean;
    begin  
      isSet := aux = nil;
    end;

    procedure TPuntero.delete;
    begin
      dispose(aux);
    end;
    procedure TPuntero.set(datum : T);
    begin
       aux^:= datum;
    end;
    procedure TPuntero.get(var datum : T);
    begin
       return datum^;
    end;

end.
