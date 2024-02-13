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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaCamposBanco;
  public
    { Public declarations }
  end;

var
  dmStorageSettings: TdmStorageSettings;

implementation

procedure TdmStorageSettings.VerificaCamposBanco;
begin
  DM.VerificaTabela('CONFIGURACAO_ARMAZENAMENTO');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Codigo', 'TEXT(25)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Diretorio', 'TEXT(150)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'ID', 'INTEGER');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Servidor', 'TEXT(20)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Usuario', 'TEXT(20)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Senha', 'TEXT(20)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'Porta', 'INTEGER');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'TipoConfiguracao',
    'TEXT(5)');
  DM.VerificaCampos('CONFIGURACAO_ARMAZENAMENTO', 'SenhaArquivo', 'TEXT(25)');
end;

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TdmStorageSettings.DataModuleCreate(Sender: TObject);
begin
  VerificaCamposBanco;
end;

end.
