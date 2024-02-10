unit BackupFiles.DAO.Routine;

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
  FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMRoutine = class(TDataModule)
    TabRotina: TFDQuery;
    TabRotinaFiltrada: TFDQuery;
    BuscaItensBackup: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRoutine: TDMRoutine;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
