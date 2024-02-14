unit BackupFiles.View.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, GDCornerButton, Winapi.Windows,
  FMX.TabControl, FMX.Edit, FMX.DateTimeCtrls, FMX.Effects, FMX.ListBox,
  FMX.Layouts, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, BackupFiles.Controller.BackupItem,
  BackupFiles.Controller.StorageSettings, BackupFiles.Model.Interfaces;

type
  TFormMenuPrincipal = class(TForm)
    rectBase: TRectangle;
    rectTopo: TRectangle;
    rectLateral: TRectangle;
    rectLogo: TRectangle;
    rectConteudo: TRectangle;
    Image1: TImage;
    btnMinimizar: TGDCornerButton;
    btnExpandir: TGDCornerButton;
    btnFechar: TGDCornerButton;
    btnVisualizarRotina: TGDCornerButton;
    btnConfig: TGDCornerButton;
    btnSobre: TGDCornerButton;
    lblCaminho: TLabel;
    rectLateralProjeto: TRectangle;
    rectInfoProjeto: TRectangle;
    GDCornerButton1: TGDCornerButton;
    lblNomeProjeto: TLabel;
    lblDescricao: TLabel;
    btnConfiguracaoProjeto: TGDCornerButton;
    lblConfigProjeto: TLabel;
    btnListaDeArquivos: TGDCornerButton;
    lblAdicionarItem: TLabel;
    Line1: TLine;
    btnGravar: TGDCornerButton;
    Label1: TLabel;
    btnCancelar: TGDCornerButton;
    Label2: TLabel;
    tabControlGeral: TTabControl;
    tbVisualizaRotina: TTabItem;
    tabListaRotinas: TTabItem;
    TabControlRotinas: TTabControl;
    StyleBook1: TStyleBook;
    tbItemConfigRotina: TTabItem;
    tabItemListaArquivos: TTabItem;
    rectBaseConfigRotina: TRectangle;
    lblNomePagina: TLabel;
    lblDescricaoRotina: TLabel;
    rectDescricao: TRectangle;
    edtDescricaoRotina: TEdit;
    lblTotBackups: TLabel;
    rectLimiteBackups: TRectangle;
    edtLimiteBackups: TEdit;
    lblHorario: TLabel;
    rectHorario: TRectangle;
    tedtHorario: TTimeEdit;
    rectBaseStorage: TRectangle;
    lblArmazenamento: TLabel;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    cbModeloArmazenamento: TComboBox;
    Rectangle1: TRectangle;
    Rectangle5: TRectangle;
    Rectangle3: TRectangle;
    edtDiretorio: TEdit;
    Label3: TLabel;
    btnBuscarDiretorio: TGDCornerButton;
    lblSenhaArquivo: TLabel;
    Rectangle4: TRectangle;
    edtSenhaArquivo: TEdit;
    Rectangle6: TRectangle;
    edtServidor: TEdit;
    lblServidor: TLabel;
    Rectangle7: TRectangle;
    edtUsuario: TEdit;
    lblUsuario: TLabel;
    Rectangle8: TRectangle;
    edtSenhaServidor: TEdit;
    lblSenhaServidor: TLabel;
    Rectangle9: TRectangle;
    edtPorta: TEdit;
    lblPorta: TLabel;
    Rectangle10: TRectangle;
    rectBaseItens: TRectangle;
    ShadowEffect4: TShadowEffect;
    btnAdicionarItem: TGDCornerButton;
    Label4: TLabel;
    btnRemoverItem: TGDCornerButton;
    Label5: TLabel;
    lblNomePaginaItens: TLabel;
    lbItens: TListBox;
    OpenDialogAdicionarItem: TOpenDialog;
    rectTopoGeral: TRectangle;
    btnMinimizarGeral: TGDCornerButton;
    btnExpandirGeral: TGDCornerButton;
    btnFecharGeral: TGDCornerButton;
    lblCaminhoGeral: TLabel;
    rectConteudoGeral: TRectangle;
    ShadowEffect3: TShadowEffect;
    lblListaRotinas: TLabel;
    rectPesquisa: TRectangle;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    btnCriarRotina: TGDCornerButton;
    Label6: TLabel;
    rectBotoes: TRectangle;
    rectGrid: TRectangle;
    rectCampos: TRectangle;
    lblCampoDescricao: TLabel;
    lblCampoDataCriacao: TLabel;
    lblCamposTotalBackup: TLabel;
    lblCamposAcoes: TLabel;
    ListView1: TListView;
    tabConfiguracao: TTabItem;
    rectTopoConfig: TRectangle;
    btnMinimizarConfig: TGDCornerButton;
    btnExpandirConfig: TGDCornerButton;
    btnFecharConfig: TGDCornerButton;
    lblCaminhoConfig: TLabel;
    TimerPesquisa: TTimer;
    procedure rectTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rectTopoResized(Sender: TObject);
    procedure btnConfiguracaoProjetoClick(Sender: TObject);
    procedure btnListaDeArquivosClick(Sender: TObject);
    procedure cbModeloArmazenamentoChange(Sender: TObject);
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btnVisualizarRotinaClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure lblPesquisaClick(Sender: TObject);
    procedure btnExcluirRotinaClick(Sender: TObject);
    procedure ListView1Paint(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure ListView1Exit(Sender: TObject);
    procedure btnCriarRotinaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarDiretorioClick(Sender: TObject);
    procedure TimerPesquisaTimer(Sender: TObject);
    procedure edtPesquisaTyping(Sender: TObject);
  private
    FCriando: Boolean;
    FCodigoRotina: string;
    procedure AplicaBordas(aValue: Integer);
    procedure FTPSelecionado(aValue: Boolean);
    procedure MudaPagina(var aTabItem: TTabItem);
    procedure LimparCampos;
    procedure GravarDados;
    procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

uses
  Winapi.Messages, BackupFiles.Controller.Routine;

{$R *.fmx}

procedure TFormMenuPrincipal.btnAdicionarItemClick(Sender: TObject);
var
  ItemIndex: Integer;
  FileName: string;
begin
  if OpenDialogAdicionarItem.Execute then
  begin
    FileName := OpenDialogAdicionarItem.FileName;
    ItemIndex := lbItens.Items.IndexOf(FileName);

    if ItemIndex = -1 then
    begin
      lbItens.Items.Add(FileName);
      lbItens.ListItems[lbItens.Count - 1].StyleLookup := 'ListBoxItem2Style1';
    end
    else
      ShowMessage('Este arquivo j� foi adicionado.');
  end;
end;

procedure TFormMenuPrincipal.btnBuscarDiretorioClick(Sender: TObject);
var
  lDiretorio: string;
begin
  if SelectDirectory('Selecione o local para salvar', '', lDiretorio) then
    edtDiretorio.Text := lDiretorio;
end;

procedure TFormMenuPrincipal.btnCancelarClick(Sender: TObject);
begin
  MudaPagina(tabListaRotinas);
  FCriando := False;
  LimparCampos;
end;

procedure TFormMenuPrincipal.btnConfigClick(Sender: TObject);
begin
  MudaPagina(tabConfiguracao);
end;

procedure TFormMenuPrincipal.btnConfiguracaoProjetoClick(Sender: TObject);
begin
  MudaPagina(tbItemConfigRotina);
end;

procedure TFormMenuPrincipal.btnCriarRotinaClick(Sender: TObject);
begin
  MudaPagina(tbVisualizaRotina);
  MudaPagina(tbItemConfigRotina);
  FCriando := True;
  LimparCampos;
  edtDescricaoRotina.SetFocus;
end;

procedure TFormMenuPrincipal.LimparCampos;
  procedure Limpar(aControle: TFmxObject);
  var
    Child: TFmxObject;
    I: Integer;
  begin
    // Verifica se o componente atual � um TEdit ou TTimeEdit e limpa conforme o caso
    if aControle is TEdit then
      TEdit(aControle).Text := ''
    else if aControle is TTimeEdit then
      TTimeEdit(aControle).Time := StrToTime('00:00')
    else if aControle is TListBox then
      TListBox(aControle).Clear;

    // Itera por todos os filhos do componente atual
    for I := 0 to aControle.ChildrenCount - 1 do
    begin
      Child := aControle.Children[I];
      Limpar(Child); // Chamada recursiva para o filho
    end;
  end;

begin
  Limpar(rectBaseConfigRotina);
  Limpar(rectBaseStorage);
  Limpar(rectBaseItens);
end;

procedure TFormMenuPrincipal.btnExcluirRotinaClick(Sender: TObject);
begin
  TControllerRoutine.New.ListarRotinas(ListView1, 1, edtPesquisa.Text, True);
end;

procedure TFormMenuPrincipal.btnGravarClick(Sender: TObject);
begin
  MudaPagina(tabListaRotinas);
  GravarDados;
  LimparCampos;
end;

procedure TFormMenuPrincipal.GravarDados;
var
  lRotina: iRoutine;
  lConfig: iStorageSettings;
begin
  try
    if FCriando then
    begin
      lRotina := TControllerRoutine.New.Item;
      case cbModeloArmazenamento.ItemIndex of
        0:
          lConfig := TControllerStorageSettings.New.Item(Local);
        1:
          lConfig := TControllerStorageSettings.New.Item(FTP);
      end;
    end
    else
    begin
      lRotina := TControllerRoutine.New.Item.BuscarDados(FCodigoRotina);
      lConfig := lRotina.Configuracao;
    end;

    lConfig.Diretorio(edtDiretorio.Text).Servidor(edtServidor.Text)
      .Usuario(edtUsuario.Text).Senha(edtSenhaServidor.Text);
    if edtPorta.Text <> '' then
      lConfig.Porta(edtPorta.Text.ToInteger);

    case cbModeloArmazenamento.ItemIndex of
      0:
        lConfig.TipoConfiguracao(Local);
      1:
        lConfig.TipoConfiguracao(FTP);
    end;

    if edtSenhaArquivo.Text <> '' then
      lConfig.SenhaDeArquivo(edtSenhaArquivo.Text);

    lRotina.Descricao(edtDescricaoRotina.Text).Horario(tedtHorario.Time)
      .TotalBackupsSalvos(edtLimiteBackups.Text.ToInteger)
      .Configuracao(lConfig);

    lRotina.RemoverItens;
    for var Item in lbItens.Items do
    begin
      lRotina.AdicionarItem(TControllerBackupItem.New.Item(lRotina.Codigo)
        .Caminho(Item));
    end;

    lConfig.Salvar;
    lRotina.Salvar;
  finally
    TControllerRoutine.New.ListarRotinas(ListView1, ListView1.Tag,
      edtPesquisa.Text, True);
  end;
end;

procedure TFormMenuPrincipal.btnListaDeArquivosClick(Sender: TObject);
begin
  MudaPagina(tabItemListaArquivos);
end;

procedure TFormMenuPrincipal.btnRemoverItemClick(Sender: TObject);
begin
  lbItens.Items.Delete(lbItens.ItemIndex);
end;

procedure TFormMenuPrincipal.btnVisualizarRotinaClick(Sender: TObject);
begin
  if tabControlGeral.ActiveTab = tbVisualizaRotina then
    btnCancelarClick(btnCancelar)
  else
    MudaPagina(tabListaRotinas);
end;

procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  FCriando := False;
  MudaPagina(tabListaRotinas);
  TControllerRoutine.New.ListarRotinas(ListView1, ListView1.Tag,
    edtPesquisa.Text, True);
end;

procedure TFormMenuPrincipal.FTPSelecionado(aValue: Boolean);
begin
  Rectangle6.Visible := aValue;
  lblServidor.Visible := aValue;
  Rectangle7.Visible := aValue;
  Rectangle8.Visible := aValue;
  Rectangle9.Visible := aValue;
  lblUsuario.Visible := aValue;
  lblSenhaServidor.Visible := aValue;
  lblPorta.Visible := aValue;
  btnBuscarDiretorio.Enabled := not aValue;
  edtDiretorio.Enabled := aValue;
end;

procedure TFormMenuPrincipal.lblPesquisaClick(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TFormMenuPrincipal.Pesquisar;
begin
  TControllerRoutine.New.ListarRotinas(ListView1, ListView1.Tag,
    edtPesquisa.Text, True);
end;

procedure TFormMenuPrincipal.ListView1Exit(Sender: TObject);
begin
  ListView1.ItemIndex := -1;
end;

procedure TFormMenuPrincipal.ListView1Paint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  if (ListView1.Items.Count >= 15) and (ListView1.Tag >= 0) then
    if ListView1.GetItemRect(ListView1.Items.Count - 5).Bottom <= ListView1.Height
    then
      TControllerRoutine.New.ListarRotinas(ListView1, ListView1.Tag + 1,
        edtPesquisa.Text, False);
end;

procedure TFormMenuPrincipal.MudaPagina(var aTabItem: TTabItem);
var
  lTabControl: TTabControl;
begin

  lTabControl := TTabControl(TTabControl(aTabItem.Parent).Parent);
  // rectTopo.Parent := aTabItem;

  if lTabControl = tabControlGeral then
  begin
    lblCaminhoGeral.Text := aTabItem.Text;
    lblCaminhoConfig.Text := aTabItem.Text;
  end
  else
    lblCaminho.Text := 'Lista de Rotinas  /  ' + lblNomeProjeto.Text + '  /  ' +
      aTabItem.Text;

  lTabControl.ActiveTab := aTabItem;
end;

procedure TFormMenuPrincipal.cbModeloArmazenamentoChange(Sender: TObject);
begin
  case cbModeloArmazenamento.ItemIndex of
    0:
      FTPSelecionado(False);
    1:
      FTPSelecionado(True);
  end;
end;

procedure TFormMenuPrincipal.edtPesquisaTyping(Sender: TObject);
begin
  TimerPesquisa.Enabled := False;
  TimerPesquisa.Enabled := True;
end;

procedure TFormMenuPrincipal.rectTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Self.StartWindowDrag;
end;

procedure TFormMenuPrincipal.rectTopoResized(Sender: TObject);
begin
  // Verifica��o para n�o bugar as bordas arredondas em tela maximizada
  if Self.WindowState = TWindowState.wsMaximized then
    AplicaBordas(0)
  else
    AplicaBordas(20)
end;

procedure TFormMenuPrincipal.TimerPesquisaTimer(Sender: TObject);
begin
  TimerPesquisa.Enabled := False;
  Pesquisar;
end;

procedure TFormMenuPrincipal.AplicaBordas(aValue: Integer);
begin
  rectBase.XRadius := aValue;
  rectBase.YRadius := aValue;
  rectLogo.XRadius := aValue;
  rectLogo.YRadius := aValue;
  rectTopo.XRadius := aValue;
  rectTopo.YRadius := aValue;
  // rectTopoGeral.XRadius := aValue;
  // rectTopoGeral.YRadius := aValue;
end;

end.
