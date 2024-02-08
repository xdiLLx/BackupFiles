unit BackupFiles.Model.BackupItem;

interface

uses
  System.SysUtils,
  BackupFiles.Model.Interfaces;

type
  TBackupItem = class(TInterfacedObject, iBackupItem)
  private
    FNome: string;
    FCaminho: string;
    FTamanho: Int64;
    FUltimaModificacao: TDateTime;
    function Nome(Value: string): iBackupItem; overload;
    function Nome: string; overload;
    function Caminho(Value: string): iBackupItem; overload;
    function Caminho: string; overload;
    function Tamanho(Value: Int64): iBackupItem; overload;
    function Tamanho: Int64; overload;
    function UltimaModificacao(Value: TDateTime): iBackupItem; overload;
    function UltimaModificacao: TDateTime; overload;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iBackupItem;
  end;

implementation

{ TBackupItem }

function TBackupItem.Caminho(Value: string): iBackupItem;
begin
  if Value.IsEmpty then
    raise Exception.Create('Caminho de Arquivo Inválido');

  if not FileExists(Value) then
    raise Exception.Create('O Caminho selecionado não existe');

  FCaminho := Value;
  Result := Self;
end;

function TBackupItem.Caminho: string;
begin
  Result := Self.FCaminho;
end;

constructor TBackupItem.Create;
begin
  inherited;

end;

destructor TBackupItem.Destroy;
begin

  inherited;
end;

class function TBackupItem.New: iBackupItem;
begin
  Result := Self.Create;
end;

function TBackupItem.Nome: string;
begin
  Result := FNome;
end;

function TBackupItem.Nome(Value: string): iBackupItem;
begin
  if Value = '' then
    raise Exception.Create('O Arquivo selecionado é inválido');
  FNome := Value;
end;

function TBackupItem.Tamanho(Value: Int64): iBackupItem;
begin
  Result := Self;
  FTamanho := Value;
end;

function TBackupItem.Tamanho: Int64;
begin
  Result := FTamanho;
end;

function TBackupItem.UltimaModificacao(Value: TDateTime): iBackupItem;
begin
  Result := Self;
  FUltimaModificacao := Value;
end;

function TBackupItem.UltimaModificacao: TDateTime;
begin
  Result := FUltimaModificacao;
end;

end.
