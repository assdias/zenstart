unit UMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, math,
  System.Variants, FMX.VirtualKeyboard, FMX.Platform, FMX.Ani, System.threading,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.Controls.Presentation,
  FMX.MultiView, FMX.ListView.Types, FMX.ListView.Appearances, data.db,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit, FMX.TabControl,
  FMX.EditBox, FMX.NumberBox, MultiDetailAppearanceU, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, data.Bind.EngExt,
  FMX.Bind.DBEngExt, data.Bind.Components, data.Bind.DBScope, System.ImageList,
  FMX.ImgList, FMX.Printer, System.Bluetooth, System.Bluetooth.Components,
  Datasnap.DBClient, FMX.ScrollBox, FMX.Memo, FMX.Memo.Types;

type
  TfrmMenu = class(TForm)
    Rectangle7: TRectangle;
    ImageList1: TImageList;
    Bluetooth: TBluetooth;
    TabControl: TTabControl;
    TabMesa: TTabItem;
    ToolBar5: TToolBar;
    Label5: TLabel;
    BtnMenu: TButton;
    Layout_Menu: TLayout;
    Layout1: TLayout;
    FloatAnimationMenu: TFloatAnimation;
    Rectangle1: TRectangle;
    ImageList3: TImageList;
    Image2: TImage;
    Layout4: TLayout;
    btnMesas: TButton;
    btnConfiguracoes: TButton;
    btnSair: TButton;
    TabItens: TTabItem;
    ToolBar3: TToolBar;
    Label9: TLabel;
    btnVoltarItens: TButton;
    ListBox2: TListBox;
    ListBoxItem11: TListBoxItem;
    edtProduto: TEdit;
    btnBuscaProduto: TSearchEditButton;
    Label14: TLabel;
    ListBoxItem5: TListBoxItem;
    edtQtd: TEdit;
    BtnBuscaQtd: TSearchEditButton;
    Label15: TLabel;
    ListBoxItem6: TListBoxItem;
    edtPreco: TEdit;
    btnBuscaPreco: TSearchEditButton;
    Label10: TLabel;
    ListBoxItem7: TListBoxItem;
    edtTotalItem: TEdit;
    Label11: TLabel;
    btnExcluirItem: TButton;
    btnSalvarItem: TButton;
    TabPedido: TTabItem;
    ListViewPedido: TListView;
    ToolBar1: TToolBar;
    Label7: TLabel;
    btnVoltarPedido: TButton;
    TabListaProd: TTabItem;
    ToolBar2: TToolBar;
    Label12: TLabel;
    btnVoltarProdutos: TButton;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    edtPesqProduto: TEdit;
    btnPesqProduto: TSearchEditButton;
    Rectangle4: TRectangle;
    Label13: TLabel;
    TabTeclado: TTabItem;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    lbl_valor: TLabel;
    img_salvar: TImage;
    Circle1: TCircle;
    img_limpar: TImage;
    layout_valor: TLayout;
    Layout8: TLayout;
    lbl_tecla7: TLabel;
    Layout10: TLayout;
    lbl_tecla8: TLabel;
    Layout11: TLayout;
    lbl_tecla9: TLabel;
    lbl_tecla4: TLayout;
    Label23: TLabel;
    Layout12: TLayout;
    lbl_tecla5: TLabel;
    Layout13: TLayout;
    lbl_tecla6: TLabel;
    Layout14: TLayout;
    lbl_tecla1: TLabel;
    Layout15: TLayout;
    lbl_tecla2: TLabel;
    Layout16: TLayout;
    lbl_tecla3: TLabel;
    Layout17: TLayout;
    lbl_tecla00: TLabel;
    Layout18: TLayout;
    lbl_tecla0: TLabel;
    Layout19: TLayout;
    img_backspace: TImage;
    Layout9: TLayout;
    Rectangle9: TRectangle;
    lblMesaItem: TLabel;
    FloatAnimationImp: TFloatAnimation;
    Layout21: TLayout;
    Rectangle12: TRectangle;
    lblMesaIte: TLabel;
    btnAtualiza: TButton;
    btnAtualizaCo: TButton;
    LayoutAguarde: TLayout;
    Rectangle14: TRectangle;
    Label2: TLabel;
    AniIndicator1: TAniIndicator;
    ListViewMesa: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LvwProduto: TListView;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    ListBoxItem4: TListBoxItem;
    Label16: TLabel;
    edtOBS: TMemo;
    Layout6: TLayout;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    btnNovo: TButton;
    TabTrocar: TTabItem;
    ToolBar4: TToolBar;
    Label1: TLabel;
    btnVoltarTroca: TButton;
    Rectangle2: TRectangle;
    ListBox1: TListBox;
    LstOrigem: TListBoxItem;
    lstboxOrigem: TListBoxItem;
    lstDestino: TListBoxItem;
    lstVDestino: TListBoxItem;
    ListViewOrigem: TListView;
    ListViewDestino: TListView;
    ListBoxItem1: TListBoxItem;
    btnTrocar: TButton;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    btnTrocarMesa: TButton;
    Layout7: TLayout;
    ListBox3: TListBox;
    ListBoxItem13: TListBoxItem;
    Label19: TLabel;
    lblTotal: TLabel;
    Layout5: TLayout;
    Button1: TButton;
    procedure btnPesqMecanicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarItensClick(Sender: TObject);
    procedure btnVoltarProdutosClick(Sender: TObject);
    procedure btnVoltarDetalhesClick(Sender: TObject);
    procedure btnSairImpressaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarPedidoClick(Sender: TObject);
    procedure btnVoltarConfigClick(Sender: TObject);
    procedure FloatAnimationMenuFinish(Sender: TObject);
    procedure CircleImpressaoClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnSubQtdClick(Sender: TObject);
    procedure btnSubPrecoClick(Sender: TObject);
    procedure btnMesasClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure img_backspaceClick(Sender: TObject);
    procedure img_limparClick(Sender: TObject);
    procedure lbl_tecla0Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure btnSairPedidoClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure Layout8Click(Sender: TObject);
    procedure lbl_tecla2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ListViewMesaItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnBuscaPrecoClick(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure BtnBuscaQtdClick(Sender: TObject);
    procedure LvwProdutoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure edtQtdExit(Sender: TObject);
    procedure img_salvarClick(Sender: TObject);
    procedure ListViewPedidoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnAtualizaCoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnTrocarMesaClick(Sender: TObject);
    procedure btnPesqProdutoClick(Sender: TObject);
    procedure btnTrocarClick(Sender: TObject);
    procedure btnVoltarTrocaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
  private
    { Private declarations }
    Sinal, tipo, opp, tela, vQuantidade, vValor: string;
    aProduto: Integer;
    FSocket: TBluetoothSocket;
    function ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
    function ConectarImpressora(pNomeDevice: String): Boolean;
    function ColocaTextoDir(Texto: string; Qtd: Integer; Ch: string): string;
    procedure OcultaMenu(vTela: String);
    procedure ExibeMenu(vTela: String);
    procedure CalcItem;

    procedure GetItens(produto: string; IdProduto: Integer;
      Qtd, PRECO, TOTAL: extended; Obs: String);
    procedure Abremesa;
    procedure FLimpaItens;
    procedure calculaTotal;
    procedure abredestino;
    procedure Transferir;
    function AbreIP: Boolean;
    procedure calculaTotalMesa;
  public
    { Public declarations }
    aCodigo: Integer;
    aTipoImpressao: String;
  end;

var
  frmMenu: TfrmMenu;

Const
  UUID = '{00001101-0000-1000-8000-00805F9B34FB}';

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

uses uDados, uConfig;

procedure Tecla_Backspace();
var
  valor: string;
begin
  with frmMenu do
  begin
    valor := lbl_valor.Text; // 5.200,00
    valor := StringReplace(valor, '.', '', [rfReplaceAll]); // 5200,00
    valor := StringReplace(valor, ',', '', [rfReplaceAll]); // 520000

    if Length(valor) > 1 then
      valor := Copy(valor, 1, Length(valor) - 1)
    else
      valor := '0';

    lbl_valor.Text := FormatFloat('#,##0.00', StrToFloat(valor) / 100);
  end;
end;

procedure Tecla_Numero(lbl: TObject);
var
  valor: string;
begin
  with frmMenu do
  begin
    valor := lbl_valor.Text;
    valor := StringReplace(valor, '.', '', [rfReplaceAll]);
    valor := StringReplace(valor, ',', '', [rfReplaceAll]);

    valor := valor + TLabel(lbl).Text;

    lbl_valor.Text := FormatFloat('#,##0.00', StrToFloat(valor) / 100);
  end;
end;

procedure TfrmMenu.btnSairClick(Sender: TObject);
begin
  OcultaMenu('MENU');
  Button1.Visible := true;
  Application.Terminate;
end;

procedure TfrmMenu.btnSairImpressaoClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.btnSairPedidoClick(Sender: TObject);
begin
  OcultaMenu('PEDIDO');
end;

procedure TfrmMenu.btnFinalizarClick(Sender: TObject);
begin
  try
    LayoutAguarde.Visible := true;
    TThread.CreateAnonymousThread(
      procedure
      begin
        // FecharVenda;
        Sleep(10);
        LayoutAguarde.Visible := false;

        TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin
            TabControl.ActiveTab := TabMesa;
          end);
      end).Start;
  except
    on e: exception do
    begin
      LayoutAguarde.Visible := false;
      raise exception.Create(e.Message);
    end;
  end;
end;

procedure TfrmMenu.btnMesasClick(Sender: TObject);
begin
  OcultaMenu('MENU');
  Button1.Visible := true;
end;

procedure TfrmMenu.btnVoltarPedidoClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabMesa;
end;

procedure TfrmMenu.btnVoltarProdutosClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabItens;
end;

procedure TfrmMenu.btnVoltarTrocaClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabMesa;
end;

procedure TfrmMenu.GetItens(produto: string; IdProduto: Integer;
Qtd, PRECO, TOTAL: extended; Obs: String);
begin
  edtProduto.Text := produto;
  if Qtd <> -1 then
    edtQtd.Text := FormatFloat('0.00', Qtd);
  edtPreco.Text := FormatFloat('0.00', PRECO);
  edtTotalItem.Text := FormatFloat('0.00', TOTAL);
  edtOBS.Text := Obs;
  aProduto := IdProduto;
end;

procedure TfrmMenu.img_backspaceClick(Sender: TObject);
begin
  Tecla_Backspace();
end;

procedure TfrmMenu.img_limparClick(Sender: TObject);
begin
  lbl_valor.Text := '0,00';
end;

procedure TfrmMenu.img_salvarClick(Sender: TObject);
begin
  if tela = 'Consumo' then
  begin
    { edtValorPago.Text := lbl_valor.Text;
      TabControl.ActiveTab := TabConsumo;
      TabControlConsumo.ActiveTab := tabValorFechar; }
  end
  else
  begin
    if vQuantidade = 'S' then
      edtQtd.Text := lbl_valor.Text
    else
      edtPreco.Text := lbl_valor.Text;
    TabControl.ActiveTab := TabItens;
  end;

  calculaTotal;
end;

procedure TfrmMenu.btnConfiguracoesClick(Sender: TObject);
begin
  frmconfig.show;
  Button1.Visible := true;
end;

procedure TfrmMenu.Button10Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabMesa;
end;

procedure TfrmMenu.Button12Click(Sender: TObject);
begin
  if tela = 'Mesa' then
    TabControl.ActiveTab := TabMesa
  else
    TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.Button1Click(Sender: TObject);
begin
  if AbreIP then
  begin
    Abremesa;
  end
  else
    raise exception.Create('Não foi possivel se conectar ao servidor!');

end;

procedure TfrmMenu.btnNovoClick(Sender: TObject);
begin
  FLimpaItens;
  opp := 'Novo';
  TabControl.ActiveTab := TabItens;
  OcultaMenu('PEDIDO');
end;

procedure TfrmMenu.Button2Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.Button8Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.btnExcluirItemClick(Sender: TObject);
begin
  try
    if opp <> 'Novo' then
    begin
      MessageDlg('Deseja Excluir Item?',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
          case AResult of
            mrYES:
              begin
                Dados.FITEM.Apaga;
              end;
            mrNo:
              begin
                // caso não

              end;
          end;
        end)
    end;
    TabControl.ActiveTab := TabPedido;
  except
    On e: exception do
      raise exception.Create('Erro:' + e.Message);
  end;
end;

procedure TfrmMenu.btnSalvarItemClick(Sender: TObject);
begin
  if aProduto = 0 then
  begin
    ShowMessage('Informe o Produto!');
    exit;
  end;

  if opp = 'Novo' then
  begin
    Dados.cdsMaiorDetalhe.Close;
    Dados.cdsMaiorDetalhe.Open;

    Dados.cdsMaiorItem.Close;
    Dados.cdsMaiorItem.Params[0].AsInteger := Dados.cdsVendasCODIGO.AsInteger;
    Dados.cdsMaiorItem.Open;

    aCodigo := Dados.cdsMaiorDetalheCODIGO.AsInteger + 1;
  end
  else
    aCodigo := Dados.cdsDetalhesCODIGO.Value;

  Dados.FITEM.Abre(Dados.cdsVendasCODIGO.AsInteger);
  calculaTotalMesa;

  LayoutAguarde.Visible := true;

  try

    TThread.CreateAnonymousThread(
      procedure
      begin
        with Dados.FITEM do
        begin
          FCODIGO := aCodigo;
          FITEM := Dados.cdsMaiorItemCODIGO.AsInteger + 1;
          FFKVENDA := Dados.cdsVendasCODIGO.AsInteger;
          FOBSERVACAO := edtOBS.Text;
          FID_PRODUTO := aProduto;
          FQTD := strtofloatdef(edtQtd.Text, 1);
          FCOD_BARRA := '';
          FE_MEDIO := 0;
          FPRECO := strtofloatdef(edtPreco.Text, 0);
          FVALOR_ITEM := strtofloatdef(edtTotalItem.Text, 0);
          FVDESCONTO := 0;
          FTOTAL := FVALOR_ITEM;
          FSITUACAO := Dados.cdsVendasSITUACAO.Value;
          FFK_MESA := Dados.cdsMesasCODIGO.Value;

          if opp = 'Novo' then
            Dados.FITEM.Insere
          else
            Dados.FITEM.Edita;

        end;

        TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin
            TabControl.ActiveTab := TabPedido;
            Sleep(10);
            LayoutAguarde.Visible := false;
            Dados.FITEM.Abre(Dados.cdsVendasCODIGO.AsInteger);
            calculaTotalMesa;

          end);
      end).Start;

  except
    On e: exception do
    begin
      LayoutAguarde.Visible := false;
      raise exception.Create('Erro:' + e.Message);
    end;
  end;

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

  end;
end;

procedure TfrmMenu.btnPesqProdutoClick(Sender: TObject);
begin

  try
    LayoutAguarde.Visible := true;
    Dados.cdsProdutos.Close;
    Dados.cdsProdutos.Params[0].Value := edtPesqProduto.Text + '%';
    Dados.cdsProdutos.Open;

    LayoutAguarde.Visible := false;
  except
    On e: exception do
    begin
      LayoutAguarde.Visible := false;
      raise exception.Create(e.Message);
    end;

  end;
end;

procedure TfrmMenu.CalcItem;
begin
  edtTotalItem.Text := FormatFloat('0.00', strtofloatdef(edtPreco.Text, 0) *
    strtofloatdef(edtQtd.Text, 0));
end;

procedure TfrmMenu.btnVoltarItensClick(Sender: TObject);
begin
  if Dados.cdsDetalhes.State in dsEditmodes then
    Dados.cdsDetalhes.Cancel;
  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.btnSubPrecoClick(Sender: TObject);
begin
  if strtofloatdef(edtPreco.Text, 1) > 1 then
    edtPreco.Text := FormatFloat('0.00', strtofloatdef(edtPreco.Text, 1) - 1);
  CalcItem;
end;

procedure TfrmMenu.btnSubQtdClick(Sender: TObject);
begin
  if strtofloatdef(edtQtd.Text, 1) > 1 then
    edtQtd.Text := FormatFloat('0.00', strtofloatdef(edtQtd.Text, 1) - 1);

  CalcItem;
end;

procedure TfrmMenu.btnTrocarClick(Sender: TObject);
begin
  Transferir;
end;

procedure TfrmMenu.btnTrocarMesaClick(Sender: TObject);
begin
  abredestino;
  TabControl.ActiveTab := TabTrocar;
  OcultaMenu('MENU');
  Button1.Visible := true;
end;

procedure TfrmMenu.Transferir;
var
  idPedidoO: Integer;
  idPedidoD: Integer;
  idOrigem: Integer;
  idDestino: Integer;
  UltimoItem: Integer;
begin
  // try

  idPedidoO := Dados.cdsOrigemFK_VENDA.AsInteger;
  idOrigem := Dados.cdsOrigemCODIGO.AsInteger;
  idDestino := Dados.cdsDestinoCODIGO.AsInteger;

  if idOrigem = idDestino then
    raise exception.Create('Mesa de Origem igual a Mesa de Destino');

  if idOrigem > 0 then // libera a mesa de origem
  begin
    if Dados.cdsMesas.Locate('CODIGO', idOrigem, []) then
    begin
      Dados.cdsMesas.Edit;
      Dados.cdsMesasSITUACAO.Value := 'L';
      Dados.cdsMesasFK_VENDA.Clear;
      Dados.cdsMesas.Post;
      Dados.cdsMesas.ApplyUpdates(-1);
    end;
  end;

  if idDestino > 0 then
  begin

    if Dados.cdsMesas.Locate('CODIGO', idDestino, []) then
    begin

      if Dados.cdsMesasSITUACAO.Value = 'L' then // se a mesa estiver livre
      begin
        Dados.cdsMesas.Edit;
        Dados.cdsMesasSITUACAO.Value := 'O';
        Dados.cdsMesasFK_VENDA.Value := idPedidoO;
        Dados.cdsMesas.Post;
        Dados.cdsMesas.ApplyUpdates(-1);

        Dados.FVenda.Abre(idPedidoO);

        if not Dados.cdsVendas.IsEmpty then
        begin
          Dados.cdsVendas.Edit;
          Dados.cdsVendasFK_MESA.Value := Dados.cdsMesasCODIGO.Value;
          Dados.cdsVendas.Post;
          Dados.cdsVendas.ApplyUpdates(-1);
        end;
      end
      else
      begin // mesa ocupada

        idPedidoD := Dados.cdsMesasFK_VENDA.AsInteger;
        if idPedidoD > 0 then
        begin

          Dados.cdsItensO.Close;
          Dados.cdsItensO.Params[0].Value := idPedidoO;
          Dados.cdsItensO.Open;
          Dados.cdsItensO.First;

          Dados.cdsItensD.Close;
          Dados.cdsItensD.Params[0].Value := idPedidoD;
          Dados.cdsItensD.Open;
          Dados.cdsItensD.Last;

          UltimoItem := Dados.cdsItensDITEM.AsInteger + 1;

          while not Dados.cdsItensO.eof do
          begin
            Dados.cdsItensO.Edit;
            Dados.cdsItensOFKVENDA.Value := idPedidoD;
            Dados.cdsItensOITEM.Value := UltimoItem;
            Dados.cdsItensO.Post;
            Dados.cdsItensO.ApplyUpdates(-1);
            Dados.cdsItensO.Next;
            UltimoItem := UltimoItem + 1;
          end;

          Dados.FVenda.Abre(idPedidoD);

        end;
      end;

    end;
  end;

  Abremesa;

  ShowMessage('Tranferência realizada com sucesso!');

end;

procedure TfrmMenu.abredestino;
begin
  Dados.cdsOrigem.Close;
  Dados.cdsOrigem.Open;

  Dados.cdsDestino.Close;
  Dados.cdsDestino.Open;

end;

procedure TfrmMenu.btnVoltarConfigClick(Sender: TObject);
begin
  if tela = 'MENU' then
    TabControl.ActiveTab := TabMesa
  else
    Application.Terminate;
end;

procedure TfrmMenu.btnVoltarDetalhesClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.OcultaMenu(vTela: String);
begin
  if vTela = 'MENU' then
  begin
    Sinal := '+';
    FloatAnimationMenu.Inverse := true;
    FloatAnimationMenu.Start;
  end;

end;

procedure TfrmMenu.CircleImpressaoClick(Sender: TObject);
begin
  if Sinal = '+' then
  begin
    ExibeMenu('IMPRESSAO');
  end
  else
    OcultaMenu('IMPRESSAO');
end;

procedure TfrmMenu.Abremesa;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          Dados.cdsMesas.Close;
          Dados.cdsMesas.Open;
        end);
    end).Start;

end;

procedure TfrmMenu.FLimpaItens;
begin
  edtProduto.Text := '';
  edtQtd.Text := '1';
  edtPreco.Text := '0,00';
  edtTotalItem.Text := '0,00';
end;

function TfrmMenu.AbreIP: Boolean;
begin
  try
    result := false;
    Dados.qryConfigura.Close;
    Dados.qryConfigura.Open;

    Dados.SQLCon.Params.Values['HOSTNAME'] := Dados.qryConfiguraip.Value;
    Dados.SQLCon.Close;
    Dados.SQLCon.Open;
    if Dados.SQLCon.Connected then
      result := true;
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;

end;

procedure TfrmMenu.btnAtualizaClick(Sender: TObject);
begin
  Button1.Visible := false;
  if Sinal = '+' then
  begin
    ExibeMenu('MENU');
  end
  else
    OcultaMenu('MENU');

end;

procedure TfrmMenu.btnAtualizaCoClick(Sender: TObject);
begin
  Dados.FITEM.Abre(Dados.cdsVendasCODIGO.AsInteger);
  calculaTotalMesa;

end;

procedure TfrmMenu.btnBuscaPrecoClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabTeclado;
  vQuantidade := 'N';
  vValor := 'S';
  tela := 'Itens';
  lbl_valor.Text := edtPreco.Text;
end;

procedure TfrmMenu.btnBuscaProdutoClick(Sender: TObject);
begin
  tela := 'ITEM';
  TabControl.ActiveTab := TabListaProd;
  btnPesqProdutoClick(Self);
end;

procedure TfrmMenu.BtnBuscaQtdClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabTeclado;
  vQuantidade := 'S';
  vValor := 'N';
  tela := 'Itens';
  lbl_valor.Text := edtQtd.Text;
end;

procedure TfrmMenu.FloatAnimationMenuFinish(Sender: TObject);
begin
  if FloatAnimationMenu.Inverse = true then
    Layout_Menu.Visible := false;

end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
{$IF Defined(ANDROID) OR Defined(IOS)}
  formatsettings.ShortDateFormat := 'dd/mm/yyyy';
  formatsettings.DateSeparator := '-';
  formatsettings.DecimalSeparator := '.';
  formatsettings.ThousandSeparator := ',';
{$ELSE}
  formatsettings.ShortDateFormat := 'dd/mm/yyyy';
  formatsettings.DateSeparator := '-';
  formatsettings.DecimalSeparator := '.';
  formatsettings.ThousandSeparator := ',';
{$IFEND}
  Layout_Menu.Visible := false;
end;

procedure TfrmMenu.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
Shift: TShiftState);
var
  Fechar: Boolean;
begin
  if TabControl.ActiveTab = TabMesa then
  begin
    if Key = vkHardwareBack then
    begin
      Key := 0;
      Application.Terminate;
    end;
  end;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  TabControl.ActiveTab := TabMesa;
  Sinal := '+';

end;

function TfrmMenu.ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
var
  lDevice: TBluetoothDevice;
begin
  result := nil;
  for lDevice in Bluetooth.PairedDevices do
  begin
    if lDevice.DeviceName = pNomeDevice then
    begin
      result := lDevice;
    end;
  end;
end;

function TfrmMenu.ColocaTextoDir(Texto: string; Qtd: Integer;
Ch: string): string;
var
  x: Integer;
  str: string;
begin
  if Length(Texto) > Qtd then
    result := Copy(Texto, (Length(Texto) - Qtd) + 1, Length(Texto))
  else
  begin
    str := '';
    for x := Length(Texto) to Qtd - 1 do
    begin
      str := str + Ch;
    end;
    result := Texto + str;
  end
  { endif };
end;

function TfrmMenu.ConectarImpressora(pNomeDevice: String): Boolean;
var
  lDevice: TBluetoothDevice;
begin
  result := false;
  lDevice := ObterDevicePeloNome(pNomeDevice);
  if lDevice <> nil then
  begin
    FSocket := lDevice.CreateClientSocket(StringToGUID(UUID), false);
    if FSocket <> nil then
    begin
      FSocket.Connect;
      result := FSocket.Connected
    end;
  end;
end;

procedure TfrmMenu.edtQtdExit(Sender: TObject);
begin
  calculaTotal;
end;

procedure TfrmMenu.ExibeMenu(vTela: String);
begin
  if vTela = 'MENU' then
  begin
    Sinal := '-';
    Layout_Menu.Position.Y := frmMenu.Height + 20;
    Layout_Menu.Visible := true;

    FloatAnimationMenu.Inverse := false;
    FloatAnimationMenu.StartValue := frmMenu.Height + 20;
    FloatAnimationMenu.StopValue := 0;
    FloatAnimationMenu.Start;

  end;

end;

procedure TfrmMenu.lbl_tecla0Click(Sender: TObject);
begin
  Tecla_Numero(Sender);
end;

procedure TfrmMenu.lbl_tecla2Click(Sender: TObject);
begin
  Tecla_Numero(Sender);
end;

procedure TfrmMenu.Layout8Click(Sender: TObject);
begin
  Tecla_Numero(Sender);
end;

procedure TfrmMenu.ListViewMesaItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  Dados.AtualizaMesa(Dados.cdsMesasCODIGO.Value);
  calculaTotalMesa;

  TabControl.ActiveTab := TabPedido;
end;

procedure TfrmMenu.ListViewPedidoItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin

  opp := 'Alterar';

  GetItens(Dados.cdsDetalhesDESCRICAO.Value, Dados.cdsDetalhesID_PRODUTO.Value,
    Dados.cdsDetalhesQTD.AsFloat, Dados.cdsDetalhesPRECO.AsFloat,
    Dados.cdsDetalhesVALOR_ITEM.AsFloat, Dados.cdsDetalhesOBSERVACAO.AsString);

  TabControl.ActiveTab := TabItens;
end;

procedure TfrmMenu.calculaTotalMesa;
var
  aTaxaGarcon: extended;
  aTaxaArtista: extended;
begin

  lblTotal.Text := '0,00';

  if Dados.cdsDetalhesTTOTAL.Value > 0 then
  begin
    lblTotal.Text := FormatFloat(',0.00', Dados.cdsDetalhesTTOTAL.Value);

  end;

end;

procedure TfrmMenu.calculaTotal;
var
  TOTAL, PRECO, Qtd: extended;
begin
  PRECO := strtofloatdef(edtPreco.Text, 0);
  Qtd := strtofloatdef(edtQtd.Text, 0);
  TOTAL := PRECO * Qtd;

  edtTotalItem.Text := FormatFloat(',0.00', TOTAL);

end;

procedure TfrmMenu.LvwProdutoItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  TabControl.ActiveTab := TabItens;
  GetItens(Dados.cdsProdutosDESCRICAO.Value, Dados.cdsProdutosCODIGO.Value, -1,
    Dados.cdsProdutosPR_VENDA.AsFloat, 0, '');
  calculaTotal;
  aProduto := Dados.cdsProdutosCODIGO.Value;
end;

end.
