unit BackupFiles.Model.Interfaces;

interface

uses
  System.Generics.Collections;

type
  iBackupItem = interface
    ['{030A2996-BBC7-439F-AD07-FFD4443093AA}']
    function Nome: string;
    function Caminho(Value: string): iBackupItem; overload;
    function Caminho: string; overload;
    function Tamanho: int64;
    function UltimaModificacao: TDatetime;
    function CodigoRotina(Value: string): iBackupItem; overload;
    function CodigoRotina: string; overload;
    function Codigo: string;
    function CodigoInterno: integer;
    function BuscarDados(CodigoItem: string): iBackupItem;
    function Salvar: iBackupItem;
  end;

  TTipoConfigStorage = (FTP, Local);

  iStorageSettings = interface
    ['{3478CAE7-BBDB-402C-BEDC-DF8A0B1DDAD8}']
    function Diretorio(Value: string): iStorageSettings; overload;
    function Diretorio: string; overload;
    function Servidor(Value: string): iStorageSettings; overload;
    function Servidor: string; overload;
    function Usuario(Value: string): iStorageSettings; overload;
    function Usuario: string; overload;
    function Senha(Value: string): iStorageSettings; overload;
    function Senha: string; overload;
    function Porta(Value: integer): iStorageSettings; overload;
    function Porta: integer; overload;
    function TipoConfiguracao(Value: TTipoConfigStorage)
      : iStorageSettings; overload;
    function TipoConfiguracao: TTipoConfigStorage; overload;
    function SenhaDeArquivo(Value: string): iStorageSettings; overload;
    function SenhaDeArquivo: string; overload;
    function BuscarDados(aCodigo: string): iStorageSettings;
    function Salvar: iStorageSettings;
    function Codigo: string;
  end;

  iRoutine = interface
    ['{4D433699-8E61-448D-84BB-DE9E938277A2}']
    function Codigo: string;
    function Horario(Value: TDatetime): iRoutine; overload;
    function Horario: TDatetime; overload;
    function TotalBackupsSalvos(Value: integer): iRoutine; overload;
    function TotalBackupsSalvos: integer; overload;
    function AdicionarItem(Value: iBackupItem): iRoutine;
    function RemoverItem(Value: iBackupItem): iRoutine;
    function ListarItens: TList<iBackupItem>;
    function Configuracao(Value: iStorageSettings): iRoutine; overload;
    function Configuracao: iStorageSettings; overload;
    function Descricao: string; overload;
    function Descricao(Value: string): iRoutine; overload;
    function BuscarDados(aCodigo: string): iRoutine;
    function IniciarBackup: iRoutine;
    function Salvar: iRoutine;
  end;

  iSettings = interface
    ['{6AD041D7-47C2-460C-A1BB-E5ECECE58F76}']
    function Codigo: string;
    function IniciarComWindows(Value: Boolean): iSettings; overload;
    function IniciarComWindows: Boolean; overload;
  end;

implementation

end.
