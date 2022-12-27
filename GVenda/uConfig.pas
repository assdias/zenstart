unit uConfig;

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
  MultiDetailAppearanceU, FMX.DateTimeCtrls, System.Bluetooth,
  System.Bluetooth.Components, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid;

const

  UUID = '{00001101-0000-1000-8000-00805F9B34FB}';

type
  TfrmConfig = class(TForm)
    TabControl1: TTabControl;
    TABMENU: TTabItem;
    TABUSUARIO: TTabItem;
    TABSERV: TTabItem;
    TABIMP: TTabItem;
    Layout2: TLayout;
    bntUsuario: TButton;
    btnBanco: TButton;
    btnImpressora: TButton;
    Layout16: TLayout;
    edtUsuarioLocal: TEdit;
    btnSalvarUsuario: TButton;
    edtSenhaLocal: TEdit;
    Layout1: TLayout;
    edtServidor: TEdit;
    bnSalvarBanco: TButton;
    edtBanco: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtVendedor: TEdit;
    SearchEditButton1: TSearchEditButton;
    Layout3: TLayout;
    btnSalvar: TButton;
    btnTestar: TButton;
    Bluetooth: TBluetooth;
    btnSair: TButton;
    ToolBar3: TToolBar;
    Label3: TLabel;
    Button4: TButton;
    Button3: TButton;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button5: TButton;
    ToolBar2: TToolBar;
    Label2: TLabel;
    Button2: TButton;
    cbImpressora: TComboBox;
    TabEmp: TTabItem;
    ToolBar4: TToolBar;
    Label4: TLabel;
    Button1: TButton;
    Layout4: TLayout;
    edtNome: TEdit;
    Button7: TButton;
    edtEndereco: TEdit;
    edtCidade: TEdit;
    edtBairro: TEdit;
    btnEmp: TButton;
    edtUF: TEdit;
    edtCEP: TEdit;
    edtFone: TEdit;
    edtTipo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnTestarClick(Sender: TObject);
    procedure btnSalvarUsuarioClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure bntUsuarioClick(Sender: TObject);
    procedure btnImpressoraClick(Sender: TObject);
    procedure bnSalvarBancoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnEmpClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
    FSocket1: TBluetoothSocket;
    function ConectarImpressora(pNomeDevice: String): Boolean;
    function ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
    procedure GravarVendedor;
    procedure GravarBanco;
    procedure GravarImpressora;
    procedure GravarMeusDados;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;
  FTecladoShow: Boolean;

implementation

{$R *.fmx}

uses uDados, System.Math, UMenu, uVendedor, Loading;

procedure TfrmConfig.btnVoltarClick(Sender: TObject);
begin
  if Dados.sTela = 'Login' then
    Application.Terminate
  else
    close;
end;

procedure TfrmConfig.Button3Click(Sender: TObject);
var
  lDevice: TBluetoothDevice;
begin
  if Bluetooth.Enabled = false then
    Bluetooth.Enabled := true;
  cbImpressora.Items.Clear;
  for lDevice in Bluetooth.PairedDevices do
  begin
    cbImpressora.Items.Add(lDevice.DeviceName);
  end;
end;

procedure TfrmConfig.Button4Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TABMENU;
end;

procedure TfrmConfig.Button5Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TABMENU;
end;

procedure TfrmConfig.Button7Click(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
  begin
    ShowMessage('Informe o Nome!');
    exit;
  end;

  if trim(edtEndereco.Text) = '' then
  begin
    ShowMessage('Informe o Endereco!');
    exit;
  end;

  if trim(edtBairro.Text) = '' then
  begin
    ShowMessage('Informe o  Bsirro!');
    exit;
  end;

  if trim(edtCidade.Text) = '' then
  begin
    ShowMessage('Informe a Cidade!');
    exit;
  end;

  if trim(edtUF.Text) = '' then
  begin
    ShowMessage('Informe a UF!');
    exit;
  end;

  if trim(edtFone.Text) = '' then
  begin
    ShowMessage('Informe o Telefone!');
    exit;
  end;

  TLoading.Show(frmConfig, 'Salvando os dados...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      GravarMeusDados;

      TThread.Synchronize(nil,
        procedure
        begin
          TLoading.Hide;
          TabControl1.ActiveTab := TABMENU;
        end);
    end).Start;

end;

procedure TfrmConfig.bnSalvarBancoClick(Sender: TObject);
begin
  if trim(edtServidor.Text) = '' then
  begin
    ShowMessage('Informe o Servidor!');
    exit;
  end;

  if trim(edtBanco.Text) = '' then
  begin
    ShowMessage('Informe o Banco!');
    exit;
  end;

  if trim(edtUsuario.Text) = '' then
  begin
    ShowMessage('Informe o Usuário!');
    exit;
  end;

  if trim(edtSenha.Text) = '' then
  begin
    ShowMessage('Informe a Senha!');
    exit;
  end;

  TLoading.Show(frmConfig, 'Salvando os dados...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      GravarBanco;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControl1.ActiveTab := TABMENU;
        end);

    end).Start;

end;

procedure TfrmConfig.bntUsuarioClick(Sender: TObject);
begin
  Dados.qryUsuarios.close;
  Dados.qryUsuarios.Open;

  if Dados.qryConfigura.Active = false then
    Dados.qryConfigura.Open;

  edtVendedor.ReadOnly := false;
  if Dados.qryConfiguratipo.Value = 'WEB' then
    edtVendedor.ReadOnly := true;

  if Dados.qryUsuarios.IsEmpty then
    Dados.qryUsuarios.Insert
  else
    Dados.qryUsuarios.Edit;
  edtUsuarioLocal.Text := VarToStrDef(Dados.qryUsuariosusuario.Value, '');
  edtSenhaLocal.Text := VarToStrDef(Dados.qryUsuariossenha.Value, '');
  edtVendedor.Text := VarToStrDef(Dados.qryUsuariosvendedor.Value, '');
  TabControl1.ActiveTab := TABUSUARIO;
end;

procedure TfrmConfig.btnBancoClick(Sender: TObject);
begin
  Dados.qryConfigura.close;
  Dados.qryConfigura.Open;
  if Dados.qryConfigura.IsEmpty then
    Dados.qryConfigura.Insert
  else
  begin
    Dados.qryConfigura.Edit;
    edtServidor.Text := VarToStrDef(Dados.qryConfiguraservidor.Value, '');
    edtBanco.Text := VarToStrDef(Dados.qryConfigurabanco.Value, '');
    edtUsuario.Text := VarToStrDef(Dados.qryConfigurausuario.Value, '');
    edtSenha.Text := VarToStrDef(Dados.qryConfigurasenha.Value, '');
    edtTipo.Text := VarToStrDef(Dados.qryConfiguratipo.Value, '');
  end;

  TabControl1.ActiveTab := TABSERV;

end;

procedure TfrmConfig.btnEmpClick(Sender: TObject);
begin
  Bluetooth.Enabled := true;
  Dados.qryConfigura.close;
  Dados.qryConfigura.Open;
  if Dados.qryConfigura.IsEmpty then
    Dados.qryConfigura.Insert
  else
  begin
    Dados.qryConfigura.Edit;
    edtNome.Text := VarToStrDef(Dados.qryConfiguraempresa.Value, '');
    edtEndereco.Text := VarToStrDef(Dados.qryConfiguraendereco.Value, '');
    edtBairro.Text := VarToStrDef(Dados.qryConfigurabairro.Value, '');
    edtCidade.Text := VarToStrDef(Dados.qryConfiguracidade.Value, '');
    edtCEP.Text := VarToStrDef(Dados.qryConfiguracep.Value, '');
    edtFone.Text := VarToStrDef(Dados.qryConfiguratelefone.Value, '');
    edtUF.Text := VarToStrDef(Dados.qryConfiguraUF.Value, '');

  end;
  TabControl1.ActiveTab := TabEmp;
end;

procedure TfrmConfig.btnImpressoraClick(Sender: TObject);
begin
  Bluetooth.Enabled := true;

  Dados.qryConfigura.close;
  Dados.qryConfigura.Open;

  if Dados.qryConfigura.IsEmpty then
    Dados.qryConfigura.Insert
  else
  begin
    Dados.qryConfigura.Edit;
    cbImpressora.Items.Clear;
    cbImpressora.Items.Add(Dados.qryConfiguraimpressora.AsString);
    cbImpressora.ItemIndex := 0;
  end;
  TabControl1.ActiveTab := TABIMP;

end;

procedure TfrmConfig.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfig.btnSalvarClick(Sender: TObject);
begin
  if cbImpressora.ItemIndex = -1 then
  begin
    ShowMessage('Selecione a impressora');
    exit;
  end;
  TLoading.Show(frmConfig, 'Salvando Impressora...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      GravarImpressora;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;
          TabControl1.ActiveTab := TABMENU;
        end);

    end).Start;

end;

procedure TfrmConfig.btnSalvarUsuarioClick(Sender: TObject);
begin
  if trim(edtUsuarioLocal.Text) = '' then
  begin
    ShowMessage('Informe o Usuário!');
    exit;
  end;

  if trim(edtSenhaLocal.Text) = '' then
  begin
    ShowMessage('Informe a Senha!');
    exit;
  end;

  if trim(edtVendedor.Text) = '' then
  begin
    ShowMessage('Informe o Vendedor!');
    exit;
  end;

  TLoading.Show(frmConfig, 'Salvando Vendedor...');

  TThread.CreateAnonymousThread(
    procedure
    begin
      sleep(100);
      GravarVendedor;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          TLoading.Hide;

          if Dados.sTela = 'Login' then
            Application.Terminate
          else
            TabControl1.ActiveTab := TABMENU;
        end);

    end).Start;

end;

function TfrmConfig.ObterDevicePeloNome(pNomeDevice: String): TBluetoothDevice;
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

procedure TfrmConfig.GravarVendedor;
begin
  Dados.qryUsuariosusuario.Value := edtUsuarioLocal.Text;
  Dados.qryUsuariossenha.Value := edtSenhaLocal.Text;
  Dados.qryUsuariosvendedor.Value := edtVendedor.Text;
  if Dados.qryVendedor.Active = false then
    Dados.qryVendedor.Open;
  if not Dados.qryVendedor.Locate('nome', edtVendedor.Text, []) then
  begin
    if Dados.qryVendedor.IsEmpty then
      Dados.qryVendedor.Insert
    else
      Dados.qryVendedor.Edit;
    Dados.qryVendedornome.Value := edtVendedor.Text;
    Dados.qryVendedor.Post;
  end;
  Dados.qryUsuariosfk_vendedor.Value := Dados.qryVendedorcodigo.Value;
  Dados.qryUsuarios.Post;
  Dados.conexao.CommitRetaining;
end;

procedure TfrmConfig.GravarBanco;
begin
  Dados.qryConfiguraservidor.Value := edtServidor.Text;
  Dados.qryConfigurabanco.Value := edtBanco.Text;
  Dados.qryConfigurausuario.Value := edtUsuario.Text;
  Dados.qryConfigurasenha.Value := edtSenha.Text;
  Dados.qryConfiguratipo.Value := edtTipo.Text;
  Dados.qryConfigura.Post;
  Dados.conexao.CommitRetaining;
end;

procedure TfrmConfig.GravarImpressora;
begin
  if not(Dados.qryConfigura.State in dsEditModes) then
    Dados.qryConfigura.Edit;
  Dados.qryConfiguraimpressora.Value := cbImpressora.Items.Strings
    [cbImpressora.ItemIndex];
  Dados.qryConfigura.Post;
  Dados.conexao.CommitRetaining;
end;

procedure TfrmConfig.GravarMeusDados;
begin
  Dados.qryConfiguraempresa.Value := edtNome.Text;
  Dados.qryConfiguraendereco.Value := edtEndereco.Text;
  Dados.qryConfigurabairro.Value := edtBairro.Text;
  Dados.qryConfiguracidade.Value := edtCidade.Text;
  Dados.qryConfiguracep.Value := edtCEP.Text;
  Dados.qryConfiguratelefone.Value := edtFone.Text;
  Dados.qryConfiguraUF.Value := edtUF.Text;
  Dados.qryConfigura.Post;
  Dados.conexao.CommitRetaining;
end;

function TfrmConfig.ConectarImpressora(pNomeDevice: String): Boolean;
var
  lDevice: TBluetoothDevice;
begin
  Result := false;
  lDevice := ObterDevicePeloNome(pNomeDevice);
  if lDevice <> nil then
  begin
    FSocket1 := lDevice.CreateClientSocket(StringToGUID(UUID), false);
    if FSocket1 <> nil then
    begin
      FSocket1.Connect;
      Result := FSocket1.Connected
    end;
  end;
end;

procedure TfrmConfig.btnTestarClick(Sender: TObject);
begin

  btnSairClick(self);

  if Bluetooth.Enabled = false then
    Bluetooth.Enabled := true;
  if (Dados.qryConfiguraimpressora.Value <> '') then
  begin
    if ConectarImpressora(Dados.qryConfiguraimpressora.AsString) then
    begin
      if (FSocket1 <> nil) and (FSocket1.Connected) then
      begin
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(64)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(1)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(8)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(16)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(32)));

        FSocket1.SendData(TEncoding.UTF8.GetBytes('TDevRocks' + chr(13)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(1)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes('Datecs DPP 250' + chr(13)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(1)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(33) + chr(0)));

        FSocket1.SendData
          (TEncoding.UTF8.GetBytes('Imprimindo direto para Bluetooth '));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(1)));
        FSocket1.SendData
          (TEncoding.UTF8.GetBytes('Imprimindo direto para Bluetooth '));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(1)));

        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(97) + chr(0)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(5)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(29) + chr(107) + chr(2) +
          '8983847583721' + chr(0)));
        FSocket1.SendData(TEncoding.UTF8.GetBytes(chr(27) + chr(100) + chr(5)));

        MessageDlg('Impressão Realizado com Sucesso.' + sLineBreak +
          'Reinicie o Aplicativo!', System.UITypes.TMsgDlgType.mtConfirmation,
          [System.UITypes.TMsgDlgBtn.mbOK], 0,
          procedure(const BotaoPressionado: TModalResult)
          begin
            case BotaoPressionado of
              mrOk:
                begin
                  Application.Terminate;
                end;
            end;
          end);
      end;
    end
    else
    begin
      ShowMessage('Dispositivo Desconectado!');
    end;
  end
  else
  begin
    ShowMessage('Selecione um dispositivo');
  end;
  Bluetooth.Enabled := false;
end;

procedure TfrmConfig.FormKeyUp(Sender: TObject; var Key: Word;
var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if TabControl1.ActiveTab = TABMENU then
      Key := 0;
  end;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  Dados.qryConfigura.close;
  Dados.qryConfigura.Open;

  Dados.qryVendedor.close;
  Dados.qryVendedor.Open;

end;

procedure TfrmConfig.SearchEditButton1Click(Sender: TObject);
begin
  FrmVendedor.Show;
  Dados.sTela := 'Login';
end;

end.
