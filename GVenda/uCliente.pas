unit uCliente;

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
  TfrmCliente = class(TForm)
    TabControlClientes: TTabControl;
    TabLista: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnMenuOS: TButton;
    lstCliente: TListView;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    edtPesquisar: TEdit;
    btnPesquisa: TSearchEditButton;
    TabBasico: TTabItem;
    ListBoxBasico: TListBox;
    ListBoxItem1: TListBoxItem;
    rdbFisica: TRadioButton;
    rdbJuridica: TRadioButton;
    ListBoxItem2: TListBoxItem;
    Label8: TLabel;
    edtNome: TEdit;
    ListBoxItem3: TListBoxItem;
    edtApelido: TEdit;
    Label7: TLabel;
    ListBoxItem4: TListBoxItem;
    edtCPF: TEdit;
    Label9: TLabel;
    ListBoxItem5: TListBoxItem;
    edtIE: TEdit;
    Label10: TLabel;
    ListBoxItem7: TListBoxItem;
    edtEmail: TEdit;
    Label12: TLabel;
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnVoltarPrincipais: TButton;
    btnAvancarPrincipais: TButton;
    TabEndereco: TTabItem;
    ToolBar3: TToolBar;
    Label3: TLabel;
    btnVoltarEndereco: TButton;
    ListBoxEndereco: TListBox;
    ListBoxItem11: TListBoxItem;
    edtEndereco: TEdit;
    Label14: TLabel;
    ListBoxItem12: TListBoxItem;
    edtNumero: TEdit;
    Label15: TLabel;
    ListBoxItem13: TListBoxItem;
    edtBairro: TEdit;
    Label16: TLabel;
    ListBoxItem14: TListBoxItem;
    edtCidade: TEdit;
    btnBuscaCidade: TSearchEditButton;
    Label17: TLabel;
    ListBoxItem15: TListBoxItem;
    edtUF: TEdit;
    Label18: TLabel;
    ListBoxItem16: TListBoxItem;
    edtCEP: TEdit;
    Label19: TLabel;
    tabCidade: TTabItem;
    ToolBar6: TToolBar;
    Label6: TLabel;
    btnVolarCidade: TButton;
    lstVCidade: TListView;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    edtPesquisarCidade: TEdit;
    btnPesquisarCidade: TSearchEditButton;
    ListBoxItem9: TListBoxItem;
    edtCelular: TEdit;
    Label5: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    edtCodCidade: TEdit;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    btnSalvar: TButton;
    Layout5: TLayout;
    Image11: TImage;
    ImageList1: TImageList;
    procedure btnMenuOSClick(Sender: TObject);
    procedure btnVoltarPrincipaisClick(Sender: TObject);
    procedure btnAvancarPrincipaisClick(Sender: TObject);
    procedure btnVoltarEnderecoClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btnGravarClienteClick(Sender: TObject);
    procedure btnBuscaCidadeClick(Sender: TObject);
    procedure btnVolarCidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstvClienteItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnGravarClick(Sender: TObject);
    procedure btnPesquisarCidadeClick(Sender: TObject);
    procedure lstClienteItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure lstVCidadeItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Image11Click(Sender: TObject);
  private
    procedure PesquisaCliente;
    procedure GravarCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;
  FTecladoShow: Boolean;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses uDados, System.Math, UMenu, Loading;

procedure TfrmCliente.btnAvancarPrincipaisClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabEndereco;
end;

procedure TfrmCliente.btnGravarClick(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
  begin
    ShowMessage('Informe o nome!');
    TabControlClientes.ActiveTab := TabBasico;
    edtNome.SetFocus;
    exit;
  end;

  if trim(edtApelido.Text) = '' then
  begin
    ShowMessage('Informe o apelido!');
    TabControlClientes.ActiveTab := TabBasico;
    edtApelido.SetFocus;
    exit;
  end;

  if trim(edtCPF.Text) = '' then
  begin
    ShowMessage('Informe o CPF!');
    TabControlClientes.ActiveTab := TabBasico;
    edtCPF.SetFocus;
    exit;
  end;

  if trim(edtCelular.Text) = '' then
  begin
    ShowMessage('Informe o Telefone');
    TabControlClientes.ActiveTab := TabBasico;
    edtCelular.SetFocus;
    exit;
  end;

  if trim(edtEndereco.Text) = '' then
  begin
    ShowMessage('Informe o Endereço');
    TabControlClientes.ActiveTab := TabEndereco;
    edtEndereco.SetFocus;
    exit;
  end;

  if trim(edtNumero.Text) = '' then
  begin
    ShowMessage('Informe o Número');
    TabControlClientes.ActiveTab := TabEndereco;
    edtNumero.SetFocus;
    exit;
  end;

  if trim(edtBairro.Text) = '' then
  begin
    ShowMessage('Informe o Bairro');
    TabControlClientes.ActiveTab := TabEndereco;
    edtBairro.SetFocus;
    exit;
  end;

  if trim(edtCidade.Text) = '' then
  begin
    ShowMessage('Informe o Cidade');
    TabControlClientes.ActiveTab := TabEndereco;
    edtCidade.SetFocus;
    exit;
  end;

  if trim(edtCEP.Text) = '' then
  begin
    ShowMessage('Informe o CEP');
    TabControlClientes.ActiveTab := TabEndereco;
    edtCEP.SetFocus;
    exit;
  end;

  MessageDlg('Deseja confirmar operação?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const BotaoPressionado: TModalResult)
    begin
      case BotaoPressionado of
        mrYes:
          begin

            if rdbFisica.IsChecked = true then
              Dados.qryPessoatipo.Value := 'FÍSICA';
            if rdbJuridica.IsChecked = true then
              Dados.qryPessoatipo.Value := 'JURÍDICA';

            Dados.qryPessoa.Post;
            TabControlClientes.ActiveTab := TabLista;
          end;
      end;
    end);
end;

procedure TfrmCliente.btnGravarClienteClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabLista;
end;

procedure TfrmCliente.btnMenuOSClick(Sender: TObject);
begin
  Dados.qryPessoa.Cancel;
  close;
end;

procedure TfrmCliente.btnPesquisaClick(Sender: TObject);
begin

  TLoading.Show(frmCliente, 'Pequisando Clientes...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      PesquisaCliente;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          edtPesquisar.Text := '';
        end);

    end).Start;
end;

procedure TfrmCliente.btnPesquisarCidadeClick(Sender: TObject);
begin
  TLoading.Show(frmCliente, 'Pesquisando Cidades...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      if trim(edtPesquisarCidade.Text) <> '' then
      begin
        Dados.qryCidade.close;
        Dados.qryCidade.Params[0].Value := edtPesquisarCidade.Text + '%';
        Dados.qryCidade.Open;
      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
        end);

    end).Start;

end;

procedure TfrmCliente.btnSalvarClick(Sender: TObject);
begin
  if trim(edtCPF.Text) = '' then
  begin
    ShowMessage('Informe o CNPJ/CPF');
    exit;
  end;

  if trim(edtNome.Text) = '' then
  begin
    ShowMessage('Informe o Nome');
    exit;
  end;

  if trim(edtCelular.Text) = '' then
  begin
    ShowMessage('Informe o Telefone');
    exit;
  end;

  if trim(edtCEP.Text) = '' then
  begin
    ShowMessage('Informe o CEP');
    exit;
  end;

  TLoading.Show(frmCliente, 'Salvando Clientes...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      GravarCliente;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControlClientes.ActiveTab := TabLista;
        end);
    end).Start;
end;

procedure TfrmCliente.btnVolarCidadeClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabEndereco;
end;

procedure TfrmCliente.btnVoltarEnderecoClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabBasico;
end;

procedure TfrmCliente.btnVoltarPrincipaisClick(Sender: TObject);
begin
  if Dados.qryPessoa.State in dseditmodes then
    Dados.qryPessoa.Cancel;
  TabControlClientes.ActiveTab := TabLista;
end;

procedure TfrmCliente.Button6Click(Sender: TObject);
begin
  TabControlClientes.ActiveTab := TabEndereco;
end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  TabControlClientes.TabPosition := TTabPosition.None;
  TabControlClientes.ActiveTab := TabLista;
end;

procedure TfrmCliente.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmCliente.FormShow(Sender: TObject);
begin
  PesquisaCliente;
end;

procedure TfrmCliente.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FTecladoShow := false;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmCliente.FormVirtualKeyboardShown(Sender: TObject;
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

procedure TfrmCliente.Image11Click(Sender: TObject);
begin
  Dados.qryPessoa.Insert;
  Dados.qryPessoacodigo.Value := Dados.Numerador('pessoa', 'codigo',
    'N', '', '');
  Dados.qryPessoaempresa.Value := 1;
  Dados.qryPessoaLIMITE.Value := 0;
  Dados.qryPessoaativo.Value := 'S';
  Dados.qryPessoafatura.Value := 'N';
  Dados.qryPessoasalario.Value := 0;
  Dados.qryPessoaadm.Value := 'N';
  Dados.qryPessoatran.Value := 'N';
  Dados.qryPessoafab.Value := 'N';
  Dados.qryPessoacli.Value := 'S';
  Dados.qryPessoafun.Value := 'N';
  Dados.qryPessoaforn.Value := 'N';
  Dados.qryPessoaisento.Value := '2';
  Dados.qryPessoaspc.Value := 'N';
  Dados.qryPessoaccf.Value := 'N';
  Dados.qryPessoacheque.Value := 'N';
  Dados.qryPessoafatura.Value := 'N';
  Dados.qryPessoanovo.Value := 'S';
  TabControlClientes.ActiveTab := TabBasico;
end;

procedure TfrmCliente.PesquisaCliente;
begin
  Dados.qryPessoa.close;
  Dados.qryPessoa.Params[0].Value := edtPesquisar.Text + '%';
  Dados.qryPessoa.Params[1].Value := edtPesquisar.Text + '%';
  Dados.qryPessoa.Open;
end;

procedure TfrmCliente.GravarCliente;
begin
  try
    if rdbFisica.IsChecked then
      Dados.qryPessoatipo.Value := 'FÍSICA';
    if rdbJuridica.IsChecked then
      Dados.qryPessoatipo.Value := 'JURÍDICA';
    if Trim(Dados.qryPessoaie.AsString) = EmptyStr then
      Dados.qryPessoaie.Value :=  '   ';
    Dados.qryPessoa.Post;
    Dados.conexao.CommitRetaining;
  except
    TLoading.Hide;
  end;
end;

procedure TfrmCliente.lstClienteItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  if Dados.sTela = 'CLIENTES' then
  begin
    Dados.qryPessoa.Edit;
    TabControlClientes.ActiveTab := TabBasico;
  end;
end;

procedure TfrmCliente.lstVCidadeItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  TabControlClientes.ActiveTab := TabEndereco;
  Dados.qryPessoacodmun.Value := Dados.qryCidadecodigo.Value;
  Dados.qryPessoamunicipio.Value := Dados.qryCidadedescricao.Value;
  Dados.qryPessoaUF.Value := Dados.qryCidadeuf.Value;
end;

procedure TfrmCliente.lstvClienteItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  if not(Dados.qryPessoa.State in dseditmodes) then
    Dados.qryPessoa.Edit;
  TabControlClientes.ActiveTab := TabBasico;

  if Dados.qryPessoatipo.Value = 'F' then
    rdbFisica.IsChecked := true;
  if Dados.qryPessoatipo.Value = 'J' then
    rdbJuridica.IsChecked := true;
end;

procedure TfrmCliente.btnBuscaCidadeClick(Sender: TObject);
begin
  TabControlClientes.ActiveTab := tabCidade;
end;

end.
