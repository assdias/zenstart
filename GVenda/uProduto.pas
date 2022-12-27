unit uProduto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, data.db, FMX.VirtualKeyboard, FMX.Platform, FMX.Ani,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Edit, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListBox, FMX.TabControl, FMX.Objects, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, data.Bind.EngExt,
  FMX.Bind.DBEngExt, data.Bind.Components, data.Bind.DBScope,
  MultiDetailAppearanceU, FMX.DateTimeCtrls, System.ImageList, FMX.ImgList;

type
  TfrmProduto = class(TForm)
    TabControlClientes: TTabControl;
    TabLista: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnMenuOS: TButton;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    edtPesquisar: TEdit;
    btnPesquisa: TSearchEditButton;
    ListView1: TListView;
    TabDetalhe: TTabItem;
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnVoltarPrincipais: TButton;
    ListBoxBasico: TListBox;
    ListBoxItem2: TListBoxItem;
    Label8: TLabel;
    ListBoxItem3: TListBoxItem;
    Label7: TLabel;
    ListBoxItem4: TListBoxItem;
    Label9: TLabel;
    ListBoxItem5: TListBoxItem;
    Label10: TLabel;
    lblDescricao: TLabel;
    lblPrecoCompra: TLabel;
    lblPrecoVenda: TLabel;
    lblQuantidade: TLabel;
    TabCadastro: TTabItem;
    ToolBar3: TToolBar;
    Label3: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    ListBoxItem6: TListBoxItem;
    Label4: TLabel;
    edtBarra: TEdit;
    ListBoxItem7: TListBoxItem;
    edtDescricao: TEdit;
    Label5: TLabel;
    ListBoxItem8: TListBoxItem;
    EdtUnidade: TEdit;
    Label6: TLabel;
    ListBoxItem9: TListBoxItem;
    edtPrecoCusto: TEdit;
    Label11: TLabel;
    ListBoxItem10: TListBoxItem;
    edtPrecoVenda: TEdit;
    Label12: TLabel;
    ListBoxItem11: TListBoxItem;
    edtQtd: TEdit;
    Label13: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btnSalvar: TButton;
    Layout5: TLayout;
    Image11: TImage;
    procedure btnMenuOSClick(Sender: TObject);
    procedure btnGravarClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure btnVoltarPrincipaisClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
  private
    procedure Gravar;
    procedure PesquisaProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;
  FTecladoShow: Boolean;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses uDados, Loading;

procedure TfrmProduto.btnGravarClienteClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabLista;
end;

procedure TfrmProduto.btnMenuOSClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProduto.btnPesquisaClick(Sender: TObject);
var
  FService: IFMXVirtualKeyboardService;
begin
  TLoading.Show(frmProduto, 'Pesquisando Produtos...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      PesquisaProduto;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TPlatformServices.Current.SupportsPlatformService
            (IFMXVirtualKeyboardService, IInterface(FService));
          if (FService <> nil) then
          begin
            FService.HideVirtualKeyboard;
            edtPesquisar.Text := '';
          end;

        end);

    end).Start;

end;

procedure TfrmProduto.btnSalvarClick(Sender: TObject);
begin
  if trim(edtDescricao.Text) = '' then
  begin
    ShowMessage('Informe a Descricação');
    exit;
  end;

  if trim(EdtUnidade.Text) = '' then
  begin
    ShowMessage('Informe a Unidade');
    exit;
  end;

  if trim(edtPrecoCusto.Text) = '' then
  begin
    ShowMessage('Informe o Preço de Custo');
    exit;
  end;

  if trim(edtPrecoVenda.Text) = '' then
  begin
    ShowMessage('Informe o Preço de Venda');
    exit;
  end;

  if trim(edtQtd.Text) = '' then
  begin
    ShowMessage('Informe a Quantidade');
    exit;

  end;

  TLoading.Show(frmProduto, 'Salvando Produtos...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      Gravar;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControlClientes.ActiveTab := TabLista;
        end);

    end).Start;

end;

procedure TfrmProduto.btnVoltarPrincipaisClick(Sender: TObject);
begin
  Dados.qryProduto.Cancel;
  TabControlClientes.ActiveTab := TabLista;
end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  TabControlClientes.TabPosition := TTabPosition.None;
  TabControlClientes.ActiveTab := TabLista;

  if Dados.qryConfigura.active = false then
    Dados.qryConfigura.Open;

  Image11.Visible := true;
  if Dados.qryConfiguratipo.Value = 'WEB' then
    Image11.Visible := false;

end;

procedure TfrmProduto.FormKeyUp(Sender: TObject; var Key: Word;
var KeyChar: Char; Shift: TShiftState);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
  if Key = vkHardwareBack then
  begin
    if TPlatformServices.Current.SupportsPlatformService
      (IFMXVirtualKeyboardService, IInterface(KeyboardService)) then
      KeyboardService.HideVirtualKeyboard;
    Key := 0;
  end;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
  PesquisaProduto;
end;

procedure TfrmProduto.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FTecladoShow := false;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmProduto.FormVirtualKeyboardShown(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
var
  O: TFmxObject;
begin
  FTecladoShow := true;

  if Assigned(Focused) and (Focused.GetObject is TControl) then
    if TControl(Focused).AbsoluteRect.Bottom - Padding.Top >=
      (Bounds.Top - ToolBar1.Height) then
    begin
      for O in Children do
        if (O is TFloatAnimation) and
          (TFloatAnimation(O).PropertyName = 'Padding.Top') then
          TFloatAnimation(O).StopAtCurrent;

      AnimateFloat('Padding.Top', Bounds.Top - ToolBar1.Height -
        TControl(Focused).AbsoluteRect.Bottom + Padding.Top, 0.1)
    end
    else
  else
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmProduto.Image11Click(Sender: TObject);
begin
  Dados.qryProduto.Insert;
  Dados.qryProdutocodigo.Value := Dados.Numerador('produto', 'codigo',
    'N', '', '');
  Dados.qryProdutotipo.Value := '00';
  Dados.qryProdutoreferencia.Value := Dados.qryProdutocodigo.AsString;
  TabControlClientes.ActiveTab := TabCadastro;

  edtBarra.Text := '';
  edtDescricao.Text := '';
  EdtUnidade.Text := '';
  edtPrecoCusto.Text := '0,00';
  edtPrecoVenda.Text := '0,00';
  edtQtd.Text := '0,00';

  edtBarra.SetFocus;
end;

procedure TfrmProduto.Gravar;
begin
  try
    Dados.qryProdutodescricao.Value := edtDescricao.Text;
    Dados.qryProdutocodbarra.Value := edtBarra.Text;
    Dados.qryProdutounidade.Value := EdtUnidade.Text;
    Dados.qryProdutopr_custo.AsString := StringReplace(edtPrecoCusto.Text,
      '.', ',', []);
    Dados.qryProdutopr_venda.AsString := StringReplace(edtPrecoVenda.Text,
      '.', ',', []);
    Dados.qryProdutoqtd_atual.AsString := StringReplace(edtQtd.Text,
      '.', ',', []);
    Dados.qryProduto.Post;
  except
    TLoading.Hide;
  end;
end;

procedure TfrmProduto.PesquisaProduto;
begin
  Dados.qryProduto.close;
  Dados.qryProduto.Params[0].Value := edtPesquisar.Text + '%';
  Dados.qryProduto.Open;
end;

procedure TfrmProduto.ListView1ItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin

  if not Dados.qryProduto.IsEmpty then
  begin
    Dados.qryProduto.Edit;
    edtBarra.Text := Dados.qryProdutocodbarra.Value;
    EdtUnidade.Text := Dados.qryProdutounidade.Value;
    edtDescricao.Text := Dados.qryProdutodescricao.Value;
    edtPrecoCusto.Text := FormatFloat('0.00', Dados.qryProdutopr_custo.Value);
    edtPrecoVenda.Text := FormatFloat('0.00', Dados.qryProdutopr_venda.Value);
    edtQtd.Text := FormatFloat('0.00', Dados.qryProdutoqtd_atual.AsFloat);
    TabControlClientes.ActiveTab := TabCadastro;
  end;

end;

procedure TfrmProduto.SpeedButton1Click(Sender: TObject);
begin
  edtPrecoCusto.Text := FormatFloat('0.00,',
    StrToFloatDef(edtPrecoCusto.Text, 1) + 1);
end;

procedure TfrmProduto.SpeedButton2Click(Sender: TObject);
begin
  if StrToFloatDef(edtPrecoCusto.Text, 0) > 0 then
    edtPrecoCusto.Text := FormatFloat('0.00,',
      StrToFloatDef(edtPrecoCusto.Text, 1) - 1);
end;

procedure TfrmProduto.SpeedButton3Click(Sender: TObject);
begin
  edtPrecoVenda.Text := FormatFloat('0.00,',
    StrToFloatDef(edtPrecoVenda.Text, 1) + 1);
end;

procedure TfrmProduto.SpeedButton4Click(Sender: TObject);
begin
  edtQtd.Text := FormatFloat('0.00,', StrToFloatDef(edtQtd.Text, 1) + 1);
end;

procedure TfrmProduto.SpeedButton5Click(Sender: TObject);
begin
  if StrToFloatDef(edtPrecoVenda.Text, 0) > 0 then
    edtPrecoVenda.Text := FormatFloat('0.00,',
      StrToFloatDef(edtPrecoVenda.Text, 1) - 1);
end;

procedure TfrmProduto.SpeedButton6Click(Sender: TObject);
begin
  if StrToFloatDef(edtQtd.Text, 0) > 0 then
    edtQtd.Text := FormatFloat('0.00,', StrToFloatDef(edtQtd.Text, 1) - 1);
end;

end.
