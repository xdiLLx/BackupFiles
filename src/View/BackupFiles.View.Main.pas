unit BackupFiles.View.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, GDCornerButton, Winapi.Windows,
  FMX.TabControl, FMX.Edit, FMX.DateTimeCtrls, FMX.Effects, FMX.ListBox,
  FMX.Layouts;

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
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabControlRotinas: TTabControl;
    StyleBook1: TStyleBook;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
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
    TimeEdit1: TTimeEdit;
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
    Rectangle14: TRectangle;
    ShadowEffect4: TShadowEffect;
    btnAdicionarItem: TGDCornerButton;
    Label4: TLabel;
    btnRemoverItem: TGDCornerButton;
    Label5: TLabel;
    lblNomePaginaItens: TLabel;
    lbItens: TListBox;
    OpenDialogAdicionarItem: TOpenDialog;
    procedure rectTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rectTopoResized(Sender: TObject);
    procedure btnConfiguracaoProjetoClick(Sender: TObject);
    procedure btnListaDeArquivosClick(Sender: TObject);
    procedure cbModeloArmazenamentoChange(Sender: TObject);
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
  private
    procedure AplicaBordas(aValue: Integer);
    procedure FTPSelecionado(aValue: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

uses
  Winapi.Messages;

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
      lbItens.ListItems[lbItens.Count-1].StyleLookup := 'ListBoxItem2Style1';
    end
    else
      ShowMessage('Este arquivo j� foi adicionado.');
  end;
end;

procedure TFormMenuPrincipal.btnConfiguracaoProjetoClick(Sender: TObject);
begin
  lblCaminho.Text := 'Rotinas  /  ' + lblNomeProjeto.Text + '  /  ' +
    'Configura��es de Rotina';
  TabControlRotinas.ActiveTab := TabItem3;
end;

procedure TFormMenuPrincipal.btnListaDeArquivosClick(Sender: TObject);
begin
  lblCaminho.Text := 'Rotinas  /  ' + lblNomeProjeto.Text + '  /  ' +
    'Lista de Arquivos';
  TabControlRotinas.ActiveTab := TabItem4;
end;

procedure TFormMenuPrincipal.btnRemoverItemClick(Sender: TObject);
begin
  lbItens.Items.Delete(lbItens.ItemIndex);
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

procedure TFormMenuPrincipal.cbModeloArmazenamentoChange(Sender: TObject);
begin
  case cbModeloArmazenamento.ItemIndex of
    0:
      FTPSelecionado(False);
    1:
      FTPSelecionado(True);
  end;
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

procedure TFormMenuPrincipal.AplicaBordas(aValue: Integer);
begin
  rectBase.XRadius := aValue;
  rectBase.YRadius := aValue;
  rectLogo.XRadius := aValue;
  rectLogo.YRadius := aValue;
  rectTopo.XRadius := aValue;
  rectTopo.YRadius := aValue;
end;

end.
