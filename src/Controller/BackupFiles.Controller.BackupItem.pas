unit BackupFiles.Controller.BackupItem;

interface

uses
  BackupFiles.Controller.Interfaces,
  BackupFiles.Model.Interfaces;

type
  TControllerBackupItem = class(TInterfacedObject, iControllerBackupItem)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerBackupItem;
    function Item(CodigoRotina:string): iBackupItem;
  end;

implementation

uses
  BackupFiles.Model.BackupItem;

{ TControllerBackupItem }


constructor TControllerBackupItem.Create;
begin

end;

destructor TControllerBackupItem.Destroy;
begin

  inherited;
end;

function TControllerBackupItem.Item(CodigoRotina:string): iBackupItem;
begin
   Result := TBackupItem.New(CodigoRotina);
end;

class function TControllerBackupItem.New: iControllerBackupItem;
begin
   Result:= Self.Create;
end;

end.
