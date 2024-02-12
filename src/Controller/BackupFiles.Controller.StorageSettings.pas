unit BackupFiles.Controller.StorageSettings;

interface

uses
  BackupFiles.Model.Interfaces,
  BackupFiles.Controller.Interfaces;

type
  TControllerStorageSettings = class(TInterfacedObject,
    iControllerStorageSettings)
  private
    { Campos privados }
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerStorageSettings;
    function Item(TipoConfig: TTipoConfigStorage): iStorageSettings;
    function BuscarConfiguracao(CodigoRotina:string): iStorageSettings;
  end;

implementation

{ TControllerStorageSettings }

uses BackupFiles.Model.StorageSettings;

function TControllerStorageSettings.BuscarConfiguracao(
  CodigoRotina: string): iStorageSettings;
begin
  Result := TStorageSettings.New.BuscarDados(CodigoRotina);
end;

constructor TControllerStorageSettings.Create;
begin

end;

destructor TControllerStorageSettings.Destroy;
begin

  inherited;
end;

function TControllerStorageSettings.Item(
  TipoConfig: TTipoConfigStorage): iStorageSettings;
begin
  Result:= TStorageSettings.New(TipoConfig);
end;

class function TControllerStorageSettings.New: iControllerStorageSettings;
begin
  Result := Self.Create;
end;

end.
