unit BackupFiles.DAO.BackupItem;

interface

uses
  System.SysUtils, System.Classes, BackupFiles.DAO.Main, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmBackupItem = class(TDataModule)
    TabItemBackup: TFDQuery;
    TabItemBackupFiltrada: TFDQuery;
    TabItemBackupID: TIntegerField;
    TabItemBackupNome: TWideStringField;
    TabItemBackupCaminho: TWideStringField;
    TabItemBackupUltimaModificacao: TDateTimeField;
    TabItemBackupCodigoRotina: TWideStringField;
    TabItemBackupTamanho: TLargeintField;
    TabItemBackupCodigo: TWideStringField;
    sqlAuxBackupItem: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure VerificaCamposBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBackupItem: TdmBackupItem;

implementation

procedure TdmBackupItem.VerificaCamposBanco;
begin
  DM.VerificaTabela('ITEMBACKUP');
  DM.VerificaCampos('ITEMBACKUP', 'Codigo', 'TEXT(25)');
  DM.VerificaCampos('ITEMBACKUP', 'Nome', 'TEXT(50)');
  DM.VerificaCampos('ITEMBACKUP', 'ID', 'INT');
  DM.VerificaCampos('ITEMBACKUP', 'Caminho', 'TEXT(150)');
  DM.VerificaCampos('ITEMBACKUP', 'UltimaModificacao', 'DATETIME');
  DM.VerificaCampos('ITEMBACKUP', 'CodigoRotina', 'TEXT(25)');
  DM.VerificaCampos('ITEMBACKUP', 'Tamanho', 'INT64');
end;

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TdmBackupItem.DataModuleCreate(Sender: TObject);
begin
  VerificaCamposBanco;
end;

end.
