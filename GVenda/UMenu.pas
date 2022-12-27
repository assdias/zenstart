unit UMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.VirtualKeyboard, FMX.Platform, FMX.Ani,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.Controls.Presentation,
  FMX.MultiView, FMX.ListView.Types, FMX.ListView.Appearances, data.db,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit, FMX.TabControl,
  FMX.EditBox, FMX.NumberBox, MultiDetailAppearanceU, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, data.Bind.EngExt, dateutils,
  FMX.Bind.DBEngExt, data.Bind.Components, data.Bind.DBScope, System.Bluetooth,
  System.Bluetooth.Components, System.ImageList, FMX.ImgList;

const

  UUID = '{00001101-0000-1000-8000-00805F9B34FB}';

type
  TfrmMenu = class(TForm)
    mvMenu: TMultiView;
    TabControl: TTabControl;
    TabLista: TTabItem;
    lstOrcamento: TListView;
    ToolBar5: TToolBar;
    Label5: TLabel;
    btnVoltarServico: TButton;
    ToolBar6: TToolBar;
    btnAdicionar: TButton;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Image1: TImage;
    TabPedido: TTabItem;
    ToolBar1: TToolBar;
    Label7: TLabel;
    Button2: TButton;
    lsItem: TListView;
    Rectangle2: TRectangle;
    edtPesquisa: TEdit;
    btnPedido: TSearchEditButton;
    TabProduto: TTabItem;
    ListBox2: TListBox;
    ListBoxItem11: TListBoxItem;
    edtProduto: TEdit;
    Label14: TLabel;
    ListBoxItem5: TListBoxItem;
    edtQtd: TEdit;
    Label15: TLabel;
    ListBoxItem6: TListBoxItem;
    edtPreco: TEdit;
    Label10: TLabel;
    ListBoxItem7: TListBoxItem;
    edtTotalItem: TEdit;
    Label11: TLabel;
    SearchEditButton3: TSearchEditButton;
    ListBoxItem8: TListBoxItem;
    Button3: TButton;
    TabPesqProd: TTabItem;
    ToolBar2: TToolBar;
    Label12: TLabel;
    btnMenuServicos: TButton;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    edtPesqProduto: TEdit;
    btnPesqProduto: TSearchEditButton;
    Rectangle4: TRectangle;
    Label13: TLabel;
    lsProduto: TListView;
    TabPesqCli: TTabItem;
    ToolBar4: TToolBar;
    Label17: TLabel;
    btnMenuOS: TButton;
    Rectangle5: TRectangle;
    Layout7: TLayout;
    edtPesqCliente: TEdit;
    btnPesquisa: TSearchEditButton;
    lstCliente: TListView;
    ListBoxItem10: TListBoxItem;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Layout8: TLayout;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    edtCod: TEdit;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkListControlToField1: TLinkListControlToField;
    ListBoxItem4: TListBoxItem;
    Label8: TLabel;
    Image8: TImage;
    BtnExcluirItem: TButton;
    btnExcluir: TButton;
    TabItem1: TTabItem;
    BindSourceDB6: TBindSourceDB;
    ListBoxItem9: TListBoxItem;
    Image5: TImage;
    Label24: TLabel;
    BindSourceDB7: TBindSourceDB;
    Image7: TImage;
    btnAddQtd: TSpeedButton;
    ImageList1: TImageList;
    btnSubQtd: TSpeedButton;
    btnAddPreco: TSpeedButton;
    btnSubPreco: TSpeedButton;
    Bluetooth: TBluetooth;
    Layout16: TLayout;
    Rectangle9: TRectangle;
    edtSubTotal: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    TabFinaliza: TTabItem;
    ToolBar7: TToolBar;
    Label2: TLabel;
    Button4: TButton;
    ListBox3: TListBox;
    ListBoxItem12: TListBoxItem;
    edtSubtotal1: TEdit;
    Label3: TLabel;
    ListBoxItem13: TListBoxItem;
    edtDesconto: TEdit;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ListBoxItem14: TListBoxItem;
    edtTotal: TEdit;
    Label25: TLabel;
    ListBoxItem15: TListBoxItem;
    edtFpg: TEdit;
    ListBoxItem16: TListBoxItem;
    Label26: TLabel;
    Layout5: TLayout;
    SpeedButton6: TSpeedButton;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    Layout6: TLayout;
    btnDia: TButton;
    btnMes: TButton;
    btnAno: TButton;
    btnTodos: TButton;
    Image11: TImage;
    Timer1: TTimer;
    ListBoxItem17: TListBoxItem;
    ListBoxItem18: TListBoxItem;
    Label4: TLabel;
    edtCodCli: TEdit;
    edtCliente: TEdit;
    btnPesqCli: TSearchEditButton;
    Label21: TLabel;
    edtCodVend: TEdit;
    edtVendedor: TEdit;
    btnPesqVendedor: TSearchEditButton;
    Layout4: TLayout;
    Image9: TImage;
    Image10: TImage;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle6: TRectangle;
    Label1: TLabel;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    Label16: TLabel;
    ToolBar3: TToolBar;
    btnVoltarEndereco: TButton;
    Label9: TLabel;
    procedure btnPesqMecanicoClick(Sender: TObject);
    procedure BtnPesquisarClientesClick(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem10Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnMenuServicosClick(Sender: TObject);
    procedure btnVoltarEnderecoClick(Sender: TObject);
    procedure btnVoltarServicoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnPesqProdutoClick(Sender: TObject);
    procedure lsProdutoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure lstClienteItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure ClearEditButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesqCliClick(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure lsItemItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnExcluirClick(Sender: TObject);
    procedure lstOrcamentoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ListBoxItem9Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnPesqVendedorClick(Sender: TObject);
    procedure btnVoltarConfigClick(Sender: TObject);
    procedure btnAddQtdClick(Sender: TObject);
    procedure btnSubQtdClick(Sender: TObject);
    procedure btnAddPrecoClick(Sender: TObject);
    procedure btnSubPrecoClick(Sender: TObject);
    procedure BtnExcluirItemClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnDiaClick(Sender: TObject);
    procedure btnMesClick(Sender: TObject);
    procedure btnAnoClick(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnMenuOSClick(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
  private
    { Private declarations }
    opp: string;
    DataInicial: TDate;
    DataFinal: TDate;
    FSocket: TBluetoothSocket;
    function ConectarImpressora(pNomeDevice: String): Boolean;
    function ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
    procedure ImprimirVenda;
    function ColocaTextoDir(Texto: string; Qtd: Integer; Ch: string): string;
    procedure ChecaBotao(Botao: String);
    procedure CalculaTotal;
    procedure CalcItem;
    procedure AdicionarItem;
    procedure ExcluindoItem;
    procedure PesquisaOrcamento;
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;
  FTecladoShow: Boolean;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

uses uDados, uSincronizar, uConfig, ControlMover, uProduto, uVendedor, uCliente,
  Loading;

procedure TfrmMenu.btnAdicionarClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
  Dados.qryOrcamento.Insert;
  Dados.qryOrcamentocodigo.Value := Dados.Numerador('orcamento', 'codigo',
    'N', '', '');
  Dados.qryOrcamentodata.Value := date;
  Dados.qryOrcamentofkvendedor.Value := 0;
  Dados.qryOrcamentofkempresa.Value := 1;
  Dados.qryOrcamentofk_cliente.Value := 0;
  Dados.qryOrcamentocliente.Value := 'ESCOLHA CLIENTE';
  Dados.qryOrcamentofkvendedor.Value := Dados.qryUsuariosfk_vendedor.Value;
  Dados.qryOrcamentototal.Value := 0;
  Dados.qryOrcamentosubtotal.Value := 0;
  Dados.qryOrcamentopercentual.Value := 0;
  Dados.qryOrcamentodesconto.Value := 0;
  Dados.qryOrcamento.Post;

  Dados.qryItem.Close;
  Dados.qryItem.Params[0].Value := Dados.qryOrcamentocodigo.Value;
  Dados.qryItem.Open;

end;

procedure TfrmMenu.btnAnoClick(Sender: TObject);
begin
  ChecaBotao('Ano');
  btnPedidoClick(self);
end;

procedure TfrmMenu.btnDiaClick(Sender: TObject);
begin
  ChecaBotao('Dia');
  btnPedidoClick(self);
end;

procedure TfrmMenu.btnExcluirClick(Sender: TObject);
begin

  Dados.qryItem.Close;
  Dados.qryItem.Params[0].Value := Dados.qryOrcamentocodigo.Value;
  Dados.qryItem.Open;

  MessageDlg('Deseja Excluir Orcamento?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const BotaoPressionado: TModalResult)
    begin
      case BotaoPressionado of
        mrYes:
          begin
            Dados.qryOrcamento.Delete;
          end;
      end;
    end);
end;

procedure TfrmMenu.BtnExcluirItemClick(Sender: TObject);
begin
  MessageDlg('Deseja Excluir Item?', System.UITypes.TMsgDlgType.mtInformation,
    [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const BotaoPressionado: TModalResult)
    begin
      case BotaoPressionado of
        mrYes:
          begin

            TLoading.Show(frmMenu, 'Salvando os dados...');

            TThread.CreateAnonymousThread(
              procedure
              begin
                sleep(100);
                ExcluindoItem;

                TThread.Synchronize(TThread.CurrentThread,
                  procedure
                  begin
                    TLoading.Hide;
                    TabControl.ActiveTab := TabPedido;
                  end);
              end).Start;

          end;
      end;
    end);

end;

function TfrmMenu.ColocaTextoDir(Texto: string; Qtd: Integer;
Ch: string): string;
var
  x: Integer;
  str: string;
begin
  if Length(Texto) > Qtd then
    Result := Copy(Texto, (Length(Texto) - Qtd) + 1, Length(Texto))
  else
  begin
    str := '';
    for x := Length(Texto) to Qtd - 1 do
    begin
      str := str + Ch;
    end;
    Result := Texto + str;
  end
  { endif };
end;

procedure TfrmMenu.Image10Click(Sender: TObject);
begin

  if trim(edtCliente.Text) = '' then
  begin
    Showmessage('Informe o Cliente!!');
    edtCliente.SetFocus;
    exit;
  end;

  if trim(edtVendedor.Text) = '' then
  begin
    Showmessage('Informe o Vendedor!!');
    edtVendedor.SetFocus;
    exit;
  end;

  if trim(edtFpg.Text) = '' then
  begin
    Showmessage('Informe a Forma de Pagamento!!');
    edtFpg.SetFocus;
    exit;
  end;

  TLoading.Show(frmMenu, 'Salvando Orçamento...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      if Dados.qryOrcamento.State = dsedit then
        Dados.qryOrcamento.Post;

      Dados.qryOrcamento.Refresh;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControl.ActiveTab := TabLista;
        end);

    end).Start;

end;

procedure TfrmMenu.Image11Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabProduto;
  edtCod.Text := '';
  edtProduto.Text := '';
  edtQtd.Text := '1';
  edtPreco.Text := '0,00';
  edtTotalItem.Text := '0,00';
  opp := 'I';
end;

procedure TfrmMenu.Image9Click(Sender: TObject);
begin
  TLoading.Show(frmMenu, 'Aguarde Imprimindo...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      ImprimirVenda;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
        end);

    end).Start;

end;

procedure TfrmMenu.ImprimirVenda;
var
  Texto: string;
  Item: Integer;
begin

  if Bluetooth.Enabled = false then
  begin
    TLoading.Hide;
    Bluetooth.Enabled := true;
    Showmessage('Conectando impressora!' + sLineBreak +
      'Tente imprimir novamente!');
    exit;
  end;

  if Dados.qryConfigura.active = false then
    Dados.qryConfigura.Open;

  if (VarToStrDef(Dados.qryConfiguraimpressora.Value, '') <> '') then
  begin

    if ConectarImpressora(Dados.qryConfiguraimpressora.AsString) then
    begin
      if (FSocket <> nil) and (FSocket.Connected) then
      begin

        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(64)));
        // Limpa os dados no buffer da impressora e reset o modo da impressora para o modo que estava em vigor quando a energia foi ligada
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(1)));
        // alinhar todos os daods em uma linha para uma posição especificada 0- esquerda 1-centralizar 2-direita
        // FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(8)));
        // Selecionar modo de impressão 0-Caracter fonte A (12 × 24) 1-Caracter fonte B (9 × 17) 8-Modo Enfatizado selecionado.
        // FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(16)));
        // Modo Altura-Dupla selecionado
        // FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(32)));//Modo Largura-Dupla selecionado

        // cabeçalho da empresa

        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(16)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(1)));

        Texto := Copy(VarToStrDef(Dados.qryConfiguraempresa.Value, ''), 1, 32);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(0)));

        Texto := Copy(VarToStrDef(Dados.qryConfiguraendereco.Value, ''), 1, 32);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := Copy(VarToStrDef(Dados.qryConfigurabairro.Value, '') + ' ' +
          VarToStrDef(Dados.qryConfiguracidade.Value, '') + ' ' +
          VarToStrDef(Dados.qryConfigurauf.Value, ''), 1, 32);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := Copy(VarToStrDef(Dados.qryConfiguratelefone.Value, ''), 1, 32);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := '--------------------------------';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'VENDA...:' + Dados.qryOrcamentocodigo.AsString;
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(0)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'CLIENTE.:' + Dados.qryOrcamentofk_cliente.AsString + '-' +
          Dados.qryOrcamentocliente.AsString;
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'DATA....:' + Dados.qryOrcamentodata.AsString;
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'VENDEDOR:' + Dados.qryOrcamentovirtual_vendedor.AsString;
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := '--------------------------------';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));
        Texto := 'COD|DESCRICAO   |QTD|PRECO|TOTAL';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := '--------------------------------';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Dados.qryItem.First;

        Item := 1;
        while not Dados.qryItem.eof do
        begin
          Texto := ColocaTextoDir(Copy(Dados.qryItemdescricao.Value + '-' +
            Dados.qryItemdescricao.Value, 1, 32), 32, ' ');
          FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
          FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) +
            chr(0)));
          FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));

          Texto := ColocaTextoDir(Copy(Dados.qryItemqtd.AsString, 1, 5), 5, ' ')
            + ' X ' + ColocaTextoDir
            (Copy(FormatFloat(',0.00', Dados.qryItempreco.AsFloat), 1, 5), 5,
            ' ') + ' = ' + ColocaTextoDir
            (Copy(FormatFloat(',0.00', Dados.qryItemtotal.AsFloat), 1,
            12), 15, ' ');
          FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
          FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) +
            chr(0)));

          Dados.qryItem.Next;
        end;

        Texto := '--------------------------------';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'SubTotal:' + FormatFloat(',0.00',
          Dados.qryOrcamentosubtotal.Value);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'Desconto:' + FormatFloat(',0.00',
          Dados.qryOrcamentodesconto.Value);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(50)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'Total...:' + FormatFloat(',0.00',
          Dados.qryOrcamentototal.Value);
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(2)));

        Texto := 'Recebi a mercadoria,';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := '________________________________';
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(1)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(0)));

        Texto := 'Assinatura do Cliente';
        FSocket.SendData(TEncoding.UTF8.GetBytes(Texto));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(3)));
        FSocket.SendData(TEncoding.UTF8.GetBytes(chr(29) + chr(86) + chr(49)));

      end;
    end
    else
    begin
      TLoading.Hide;
      Showmessage('Dispositivo Desconectado!');
    end;
  end
  else
  begin
    TLoading.Hide;
    Showmessage('Selecione um dispositivo');
  end;
end;

function TfrmMenu.ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
var
  lDevice: TBluetoothDevice;
begin
  Result := nil;
  for lDevice in Bluetooth.PairedDevices do
  begin
    if lDevice.DeviceName = pNomeDevice then
    begin
      Result := lDevice;
    end;
  end;
end;

function TfrmMenu.ConectarImpressora(pNomeDevice: String): Boolean;
var
  lDevice: TBluetoothDevice;
begin
  Result := false;
  lDevice := ObterDevicePeloNome(pNomeDevice);
  if lDevice <> nil then
  begin
    FSocket := lDevice.CreateClientSocket(StringToGUID(UUID), false);
    if FSocket <> nil then
    begin
      FSocket.Connect;
      Result := FSocket.Connected
    end;
  end;
end;

procedure TfrmMenu.btnMenuOSClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;

end;

procedure TfrmMenu.btnMenuServicosClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabProduto;
end;

procedure TfrmMenu.btnMesClick(Sender: TObject);
begin
  ChecaBotao('Mes');
  btnPedidoClick(self);
end;

procedure TfrmMenu.btnPedidoClick(Sender: TObject);
begin

  TLoading.Show(frmMenu, 'Pesquisando Pedidos...');
  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      PesquisaOrcamento;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
        end);
    end).Start;

end;

procedure TfrmMenu.btnPesqCliClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPesqCli;
end;

procedure TfrmMenu.btnPesqMecanicoClick(Sender: TObject);
var
  FService: IFMXVirtualKeyboardService;
begin
  try
    Application.ProcessMessages;

    TPlatformServices.Current.SupportsPlatformService
      (IFMXVirtualKeyboardService, IInterface(FService));
    if (FService <> nil) then
    begin
      FService.HideVirtualKeyboard;
    end;
  finally
    // NADA
  end;
end;

procedure TfrmMenu.btnPesquisaClick(Sender: TObject);
begin
  TLoading.Show(frmMenu, 'Pesquisando Clientes...');
  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      Dados.qryPessoa.Close;
      Dados.qryPessoa.Params[0].Value := edtPesqCliente.Text + '%';
      Dados.qryPessoa.Params[1].Value := edtPesqCliente.Text + '%';
      Dados.qryPessoa.Open;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
        end);

    end).Start;

end;

procedure TfrmMenu.btnPesqProdutoClick(Sender: TObject);
begin
  TLoading.Show(frmMenu, 'Pesquisando Produtos...');
  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      Dados.qryProduto.Close;
      Dados.qryProduto.Params[0].Value := edtPesqProduto.Text + '%';
      Dados.qryProduto.Open;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
        end);

    end).Start;
end;

procedure TfrmMenu.BtnPesquisarClientesClick(Sender: TObject);
begin
  try
    Application.ProcessMessages;

    Dados.sTela := 'OS';
    frmCliente.Show;
  finally
    // NADA
  end;
end;

procedure TfrmMenu.btnPesqVendedorClick(Sender: TObject);
begin
  if not(Dados.qryOrcamento.State in dsEditModes) then
    Dados.qryOrcamento.Edit;
  frmVendedor.Show;
  Dados.sTela := 'Pedido'
end;

procedure TfrmMenu.btnSubPrecoClick(Sender: TObject);
begin
  if StrToFloatDef(edtPreco.Text, 1) > 1 then
    edtPreco.Text := FormatFloat('0.00', StrToFloatDef(edtPreco.Text, 1) - 1);
  CalcItem;
end;

procedure TfrmMenu.btnSubQtdClick(Sender: TObject);
begin
  if StrToFloatDef(edtQtd.Text, 1) > 1 then
    edtQtd.Text := FormatFloat('0.00', StrToFloatDef(edtQtd.Text, 1) - 1);

  CalcItem;
end;

procedure TfrmMenu.btnTodosClick(Sender: TObject);
begin
  ChecaBotao('Todos');
  btnPedidoClick(self);
end;

procedure TfrmMenu.ChecaBotao(Botao: String);
begin
  btnTodos.TextSettings.Font.Size := 12;
  btnDia.TextSettings.Font.Size := 12;
  btnMes.TextSettings.Font.Size := 12;
  btnAno.TextSettings.Font.Size := 12;

  if Botao = 'Todos' then
  begin
    btnTodos.TextSettings.Font.Size := 22;
    DataInicial := strtodate('01/01/1000');
    DataFinal := strtodate('31/12/9999');

  end;
  if Botao = 'Dia' then
  begin
    btnDia.TextSettings.Font.Size := 22;
    DataInicial := date;
    DataFinal := date

  end;
  if Botao = 'Mes' then
  begin
    btnMes.TextSettings.Font.Size := 22;

    DataInicial := StartOfTheMonth(date);
    DataFinal := EndOfTheMonth(date);

  end;
  if Botao = 'Ano' then
  begin
    btnAno.TextSettings.Font.Size := 22;
    DataInicial := StartOfTheYear(date);
    DataFinal := EndOfTheYear(date);
  end;

end;

procedure TfrmMenu.btnVoltarConfigClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabLista;
end;

procedure TfrmMenu.btnVoltarEnderecoClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
  Dados.qryItem.Cancel;
end;

procedure TfrmMenu.btnVoltarServicoClick(Sender: TObject);
begin
  mvMenu.ShowMaster;
end;

procedure TfrmMenu.Button2Click(Sender: TObject);
begin
  Dados.qryOrcamento.Cancel;
  TabControl.ActiveTab := TabLista;
end;

procedure TfrmMenu.Button3Click(Sender: TObject);
begin
  if trim(edtCod.Text) = '' then
  begin
    Showmessage('Selecione o Produto');
    exit;
  end;

  if trim(edtQtd.Text) = '' then
  begin
    Showmessage('Digite a Quantidade');
    exit;
  end;

  if trim(edtPreco.Text) = '' then
  begin
    Showmessage('Digite o Preço');
    exit;
  end;

  TLoading.Show(frmMenu, 'Adicionando Itens...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      AdicionarItem;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControl.ActiveTab := TabPedido;
        end);

    end).Start;

end;

procedure TfrmMenu.Button4Click(Sender: TObject);
begin
  Dados.qryOrcamento.Cancel;
  TabControl.ActiveTab := TabPedido;

end;

procedure TfrmMenu.ClearEditButton1Click(Sender: TObject);
begin
  edtDesconto.Text := '0,00';
end;

procedure TfrmMenu.ClearEditButton3Click(Sender: TObject);
begin
  edtPreco.Text := '0,00';
end;

PROCEDURE TfrmMenu.CalculaTotal;
begin
  edtTotal.Text := FormatFloat('0.00', StrToFloatDef(edtSubtotal1.Text, 0) -
    StrToFloatDef(edtDesconto.Text, 0));
end;

procedure TfrmMenu.edtDescontoExit(Sender: TObject);
begin
  CalculaTotal;
end;

procedure TfrmMenu.edtQtdExit(Sender: TObject);
begin
  CalcItem;
end;

procedure TfrmMenu.CalcItem;
begin
  edtTotalItem.Text := FormatFloat('0.00', StrToFloatDef(edtPreco.Text, 0) *
    StrToFloatDef(edtQtd.Text, 0));
end;

procedure TfrmMenu.AdicionarItem;
begin
  if opp = 'I' then
    Dados.qryItem.Insert
  else
    Dados.qryItem.Edit;

  CalcItem;
  Dados.qryItemcodigo.Value := Dados.Numerador('orcamento_item', 'codigo',
    'N', '', '');
  Dados.qryItemfk_orcamento.Value := Dados.qryOrcamentocodigo.Value;
  Dados.qryItemfk_produto.AsString := edtCod.Text;
  Dados.qryItemqtd.AsString := edtQtd.Text;
  Dados.qryItempreco.AsString := edtPreco.Text;
  Dados.qryItemtotal.AsString := edtTotalItem.Text;
  Dados.qryItem.Post;
  Dados.conexao.CommitRetaining;

  Dados.qryItem.Close;
  Dados.qryItem.Params[0].Value := Dados.qryOrcamentocodigo.Value;
  Dados.qryItem.Open;
  Dados.conexao.CommitRetaining;

  if not(Dados.qryOrcamento.State in dsEditModes) then
    Dados.qryOrcamento.Edit;
  Dados.qryOrcamentosubtotal.Value := Dados.qryItemttotal.AsVariant;
  Dados.qryOrcamento.Post;
  Dados.conexao.CommitRetaining;

end;

procedure TfrmMenu.ExcluindoItem;
begin
  Dados.qryItem.Delete;
  Dados.qryItem.Refresh;
  Dados.conexao.CommitRetaining;

  if not(Dados.qryOrcamento.State in dsEditModes) then
    Dados.qryOrcamento.Edit;
  if not Dados.qryItemttotal.IsNull then
    Dados.qryOrcamentosubtotal.Value := Dados.qryItemttotal.AsVariant
  else
    Dados.qryOrcamentosubtotal.Value := 0;
  Dados.qryOrcamento.Post;
  Dados.conexao.CommitRetaining;

end;

procedure TfrmMenu.PesquisaOrcamento;
begin
  Dados.qryOrcamento.Close;
  Dados.qryOrcamento.Params[0].Value := edtPesquisa.Text + '%';
  Dados.qryOrcamento.Params[1].Value := DataInicial;
  Dados.qryOrcamento.Params[2].Value := DataFinal;
  Dados.qryOrcamento.Open;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  mvMenu.HideMaster;
  ListBoxItem3.Visible := false;

  if Dados.qryConfigura.active = false then
    Dados.qryConfigura.Open;

  if Dados.qryConfiguratipo.Value = 'WEB' then
    ListBoxItem3.Visible := true;

end;

procedure TfrmMenu.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
Shift: TShiftState);
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

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  ChecaBotao('Todos');
  PesquisaOrcamento;

  TabControl.ActiveTab := TabLista;

  Dados.qryVendedor.Close;
  Dados.qryVendedor.Open;

  Dados.qryConfigura.Close;
  Dados.qryConfigura.Open;

end;

procedure TfrmMenu.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FTecladoShow := false;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmMenu.FormVirtualKeyboardShown(Sender: TObject;
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

procedure TfrmMenu.ListBoxItem10Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.ListBoxItem1Click(Sender: TObject);
begin
  mvMenu.HideMaster;
  Dados.sTela := 'PEDIDO';
  frmMenu.Show;
  btnPedidoClick(self);
end;

procedure TfrmMenu.ListBoxItem2Click(Sender: TObject);
begin
  mvMenu.HideMaster;
  Dados.sTela := 'CLIENTES';
  frmCliente.Show;
  frmCliente.lstCliente.SetFocus;
end;

procedure TfrmMenu.ListBoxItem3Click(Sender: TObject);
begin
  mvMenu.HideMaster;
  Dados.sTela := 'SINCRONIZAR';
  frmSincronizar.Show;
  frmSincronizar.CheckProdutos.IsChecked := false;
  frmSincronizar.CheckPessoas.IsChecked := false;
  frmSincronizar.CheckOrcamento.IsChecked := false;
  frmSincronizar.CheckPessoasBaixa.IsChecked := false;
  frmSincronizar.CheckProdutos.IsChecked := false;
  frmSincronizar.btnSalvar.Enabled := true;

end;

procedure TfrmMenu.ListBoxItem4Click(Sender: TObject);
begin
  mvMenu.HideMaster;
  frmproduto.Show;
  frmproduto.ListView1.SetFocus;
end;

procedure TfrmMenu.ListBoxItem9Click(Sender: TObject);
begin
  mvMenu.HideMaster;
  frmConfig.Show;
  frmConfig.TabControl1.TabIndex := 0;
end;

procedure TfrmMenu.ListView1ItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  if Dados.sTela = 'CONFIGURA' then
  begin
    frmConfig.Show;
    if not(Dados.qryConfigura.State in dsEditModes) then
      Dados.qryConfigura.Edit;
  end
  else
  begin
    if not(Dados.qryOrcamento.State in dsEditModes) then
      Dados.qryOrcamento.Edit;
    Dados.qryOrcamentofkvendedor.Value := Dados.qryVendedorcodigo.Value;
    TabControl.ActiveTab := TabPedido;
  end;

end;

procedure TfrmMenu.lsItemItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  TabControl.ActiveTab := TabProduto;
  edtCod.Text := Dados.qryItemfk_produto.AsString;
  edtProduto.Text := Dados.qryItemdescricao.AsString;
  edtQtd.Text := Dados.qryItemqtd.AsString;
  edtPreco.Text := Dados.qryItempreco.AsString;
  edtTotalItem.Text := Dados.qryItemtotal.AsString;
  opp := 'A';
end;

procedure TfrmMenu.lsProdutoItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin

  edtCod.Text := Dados.qryProdutocodigo.AsString;
  edtProduto.Text := Dados.qryProdutodescricao.Value;
  edtPreco.Text := FormatFloat('0.00', Dados.qryProdutopr_venda.Value);

  if trim(edtPreco.Text) = '' then
    edtPreco.Text := '0';

  if trim(edtQtd.Text) = '' then
    edtQtd.Text := '1';

  edtTotalItem.Text := FormatFloat('0.00', strtofloat(edtPreco.Text) *
    strtofloat(edtQtd.Text));

  TabControl.ActiveTab := TabProduto;
end;

procedure TfrmMenu.lstClienteItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  if not(Dados.qryOrcamento.State in dsEditModes) then
    Dados.qryOrcamento.Edit;
  Dados.qryOrcamentofk_cliente.Value := Dados.qryPessoacodigo.AsInteger;
  Dados.qryOrcamentocliente.Value := Dados.qryPessoarazao.AsString;
  Dados.qryOrcamentotelefone.Value := Dados.qryPessoafone1.AsString;
  Dados.qryOrcamentocelular.Value := Dados.qryPessoacelular1.AsString;
  Dados.qryOrcamentoendereco.Value := Dados.qryPessoaendereco.AsString;
  Dados.qryOrcamentonumero.Value := Dados.qryPessoanumero.AsString;
  Dados.qryOrcamentobairro.Value := Dados.qryPessoabairro.AsString;
  Dados.qryOrcamentocidade.Value := Dados.qryPessoamunicipio.AsString;
  Dados.qryOrcamentouf.Value := Dados.qryPessoauf.AsString;
  Dados.qryOrcamentocnpj.Value := Dados.qryPessoacnpj.AsString;
  Dados.qryOrcamento.Post;

  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.lstOrcamentoItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  TabControl.ActiveTab := TabPedido;

  Dados.qryItem.Close;
  Dados.qryItem.Params[0].Value := Dados.qryOrcamentocodigo.Value;
  Dados.qryItem.Open;

  Label7.Text := 'Pedido nº' + Dados.qryOrcamentocodigo.AsString;

  Dados.qryOrcamento.Edit;

end;

procedure TfrmMenu.SearchEditButton3Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabPesqProd;
end;

procedure TfrmMenu.SpeedButton1Click(Sender: TObject);
begin
  edtDesconto.Text := FormatFloat('0.00',
    StrToFloatDef(edtDesconto.Text, 1) + 1);
  CalculaTotal;
end;

procedure TfrmMenu.SpeedButton2Click(Sender: TObject);
begin
  if StrToFloatDef(edtDesconto.Text, 0) > 0 then
    edtDesconto.Text := FormatFloat('0.00',
      StrToFloatDef(edtDesconto.Text, 1) - 1);
  CalculaTotal;
end;

procedure TfrmMenu.SpeedButton6Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabFinaliza;
  if not(Dados.qryOrcamento.State in dsEditModes) then
    Dados.qryOrcamento.Edit;
end;

procedure TfrmMenu.Timer1Timer(Sender: TObject);
begin
//  if date > strtodate('31/12/2019') then
//    Application.Terminate;
end;

procedure TfrmMenu.btnAddPrecoClick(Sender: TObject);
begin
  edtPreco.Text := FormatFloat('0.00', StrToFloatDef(edtPreco.Text, 1) + 1);
  CalcItem;
end;

procedure TfrmMenu.btnAddQtdClick(Sender: TObject);
begin
  edtQtd.Text := FormatFloat('0.00', StrToFloatDef(edtQtd.Text, 1) + 1);
  CalcItem;
end;

end.
