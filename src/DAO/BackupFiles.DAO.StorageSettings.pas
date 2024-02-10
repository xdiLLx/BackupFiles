unit BackupFiles.DAO.StorageSettings;

interface

uses
  System.SysUtils,
  System.Classes,
  BackupFiles.DAO.Main,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmStorageSettings = class(TDataModule)
    TabConfiguracaoArmazenamento: TFDQuery;
    TabConfiguracaoArmazenamentoFiltrada: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmStorageSettings: TdmStorageSettings;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.