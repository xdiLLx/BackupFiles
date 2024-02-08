unit BackupFiles.Controller.Routine;

interface

uses
  BackupFiles.Controller.Interfaces,
  BackupFiles.Model.Interfaces;

type
  TControllerRoutine = class(TInterfacedObject, iControllerRoutine)
  private
    { Campos privados }
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerRoutine;
  end;

implementation

{ TControllerRoutine }

constructor TControllerRoutine.Create;
begin

end;

destructor TControllerRoutine.Destroy;
begin
  inherited;
end;

class function TControllerRoutine.New: iControllerRoutine;
begin
  Result := Self.Create;
end;

end.