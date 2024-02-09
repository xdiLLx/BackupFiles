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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBackupItem: TdmBackupItem;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
