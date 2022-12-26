﻿unit u_principal;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  Vcl.ExtCtrls,

  //############ ATENCAO AQUI ####################
  //units adicionais obrigatorias
   uTInject.ConfigCEF, uTInject,            uTInject.Constant,      uTInject.JS,     uInjectDecryptFile,
   uTInject.Console,   uTInject.Diversos,   uTInject.AdjustNumber,  uTInject.Config, uTInject.Classes,

  //units Opcionais (dependendo do que ira fazer)
   System.NetEncoding, System.TypInfo,  WinInet,

  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Dialogs, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, Vcl.OleCtrls, SHDocVw, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.Imaging.jpeg,
  System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  //WS - Developers
  IniFiles, Tlhelp32, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmPrincipal = class(TForm)
    TInject1: TInject;
    OpenDialog1: TOpenDialog;
    TrayIcon1: TTrayIcon;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    memo_unReadMessage: TMemo;
    StatusBar1: TStatusBar;
    groupEnvioMsg: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mem_message: TMemo;
    btSendTextAndFile: TButton;
    btSendText: TButton;
    Panel1: TPanel;
    groupListaChats: TGroupBox;
    Button3: TButton;
    listaChats: TListView;
    groupListaContatos: TGroupBox;
    Splitter1: TSplitter;
    ed_num: TComboBox;
    Pnl_Config: TPanel;
    Panel2: TPanel;
    whatsOn: TImage;
    whatsOff: TImage;
    lblStatus: TLabel;
    Lbl_Avisos: TLabel;
    Timer2: TTimer;
    CheckBox5: TCheckBox;
    Label3: TLabel;
    Panel3: TPanel;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    chk_apagarMsg: TCheckBox;
    btStatusBat: TButton;
    Rdb_FormaConexao: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Panel4: TPanel;
    Button2: TButton;
    chk_AutoResposta: TCheckBox;
    ComboBox1: TComboBox;
    Label5: TLabel;
    listaContatos: TListView;
    Pnl_FONE: TPanel;
    Edt_LengDDD: TLabeledEdit;
    Edt_LengDDI: TLabeledEdit;
    Edt_LengFone: TLabeledEdit;
    Edt_DDIPDR: TLabeledEdit;
    CheckBox4: TCheckBox;
    btSendContact: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btCheckNumber: TButton;
    btIsConnected: TButton;
    btSendLocation: TButton;
    btSendLinkWithPreview: TButton;
    Label6: TLabel;
    ed_videoLink: TEdit;
    Button1: TButton;
    Image2: TImage;
    ed_profilePicThumbURL: TEdit;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    listaGrupos: TListView;
    GroupBox1: TGroupBox;
    Button4: TButton;
    listaParticipantes: TListView;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    lbl_idGroup: TLabel;
    lbl_idParticipant: TLabel;
    edt_nomeGrupo: TEdit;
    edt_foneParticipante: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button11: TButton;
    Button12: TButton;
    ed_idParticipant: TEdit;
    Label4: TLabel;
    edt_groupInviteLink: TEdit;
    Label7: TLabel;
    listaAdministradores: TListView;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    btCleanChat: TButton;
    btGetMe: TButton;
    btnTestCheckNumber: TButton;
    btGetSeveralStatus: TButton;
    btGetStatus: TButton;
    Panel7: TPanel;
    btSetProfileName: TButton;
    btSetProfileStatus: TButton;
    ed_profileData: TEdit;
    Image3: TImage;
    Button19: TButton;
    btnRemoveGroupLink: TButton;
    lblNumeroConectado: TLabel;
    lblContactStatus: TLabel;
    lblContactNumber: TLabel;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    ActionList1: TActionList;
    actHabilitaOpcoes: TAction;
    TabSheet5: TTabSheet;
    Label12: TLabel;
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriver: TFDPhysFBDriverLink;
    lblStatusDB: TLabel;
    GroupBox3: TGroupBox;
    memLog: TMemo;
    GroupBox4: TGroupBox;
    memEnvio: TMemo;
    Label13: TLabel;
    lblStatusEnvio: TLabel;
    qryWhats: TFDQuery;
    qryWhatsCODIGO: TIntegerField;
    qryWhatsDATA: TDateField;
    qryWhatsMENSAGEM: TStringField;
    qryWhatsANEXO: TStringField;
    qryWhatsFONE: TStringField;
    qryWhatsSTATUS: TStringField;
    qryWhatsMENSAGEM_PADRAO: TMemoField;
    qryWhatsNOME: TStringField;
    qryWhatsEMPRESA: TStringField;
    qryWhatsORIGEM: TStringField;
    qryWhatsHORA: TTimeField;
    qryWhatsCAMINHO_ANEXO: TStringField;
    tmrEnvio: TTimer;
    btnEnvio: TButton;
    tmrIniciar: TTimer;
    ApplicationEvents: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSendTextClick(Sender: TObject);
    procedure btSendTextAndFileClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

    procedure TInject1GetUnReadMessages(Const Chats: TChatList);
    procedure listaChatsDblClick(Sender: TObject);
    procedure listaContatosDblClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TInject1GetStatus(Sender: TObject);
    procedure btStatusBatClick(Sender: TObject);
    procedure Edt_DDIPDRExit(Sender: TObject);
    procedure ed_numChange(Sender: TObject);
    procedure ed_numSelect(Sender: TObject);
    procedure TInject1GetMyNumber(Sender: TObject);
    procedure TInject1ErroAndWarning(Sender: TObject; const PError,      PInfoAdc: string);
    procedure Timer2Timer(Sender: TObject);
    procedure TInject1GetChatList(const Chats: TChatList);
    procedure TInject1GetAllContactList(      const AllContacts: TRetornoAllContacts);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TInject1GetQrCode(COnst Sender: TObject; const QrCode: TResultQRCodeClass);
    procedure whatsOnClick(Sender: TObject);
    procedure TInject1LowBattery(Sender: TObject);
    procedure TInject1DisconnectedBrute(Sender: TObject);
    procedure chk_3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btSendContactClick(Sender: TObject);
    procedure listaContatosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btCheckNumberClick(Sender: TObject);
    procedure TInject1GetCheckIsValidNumber(Sender: TObject; Number: string;      IsValid: Boolean);
    procedure btIsConnectedClick(Sender: TObject);
    procedure TInject1IsConnected(Sender: TObject; Connected: Boolean);
    procedure TInject1GetBatteryLevel(Sender: TObject);
    procedure btSendLinkWithPreviewClick(Sender: TObject);
    procedure btSendLocationClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;      const pDisp: IDispatch; const URL: OleVariant);
    procedure TInject1GetProfilePicThumb(Sender: TObject; Base64: string);
    procedure Button5Click(Sender: TObject);
    procedure listaGruposClick(Sender: TObject);
    procedure TInject1GetAllGroupList(const AllGroups: TRetornoAllGroups);
    procedure TInject1GetAllGroupContacts(      const Contacts: TClassAllGroupContacts);
    procedure listaParticipantesClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TInject1GetAllGroupAdmins(    const AllGroups: TRetornoAllGroupAdmins);
    procedure btSetProfileNameClick(Sender: TObject);
    procedure btnRemoveGroupLinkClick(Sender: TObject);
    procedure btSetProfileStatusClick(Sender: TObject);
    procedure btCleanChatClick(Sender: TObject);
    procedure btGetStatusClick(Sender: TObject);
    procedure TInject1GetStatusMessage(const Result: TResponseStatusMessage);
    procedure btGetSeveralStatusClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure TInject1GetInviteGroup(const Invite: string);
    procedure TInject1GetMe(const vMe: TGetMeClass);
    procedure btGetMeClick(Sender: TObject);
    procedure btnTestCheckNumberClick(Sender: TObject);
    procedure TInject1NewGetNumber(const vCheckNumber: TReturnCheckNumber);
    procedure listaChatsClick(Sender: TObject);
    procedure ed_numKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Rdb_FormaConexaoClick(Sender: TObject);
    procedure actHabilitaOpcoesExecute(Sender: TObject);
    procedure ConexaoAfterConnect(Sender: TObject);
    procedure ConexaoAfterDisconnect(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnEnvioClick(Sender: TObject);
    procedure tmrEnvioTimer(Sender: TObject);
    procedure tmrIniciarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);

Const InputBoxMsg = WM_USER + 123;

  private
    { Private declarations }
    bIniciado: Boolean;
    FIniciando: Boolean;
    FStatus: Boolean;
    FNameContact:  string;
    Procedure ExecuteFilter;
    procedure Logs(Str: string; Titulo: string);
    procedure ConectarDataBase;
    procedure InputBoxSet(var Msg: TMessage); message InputBoxMsg;
    function IsFireBirdRunning: boolean;
    function GetFileDate(Arquivo: String): string;

  public
    { Public declarations }
    mensagem  : string;
    AFile     : string;
    bParar    : Boolean;

    procedure AddChatList(ANumber: String);
    procedure AddContactList(ANumber: String);
    procedure AddGroupList(ANumber: string);
    procedure AddGroupAdmins(ANumber: string);
    procedure AddGroupContacts(ANumber: string);
    function  VerificaPalavraChave( pMensagem, pSessao, pTelefone, pContato : String ) : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Datasnap.DBClient, Winapi.ShellAPI, System.AnsiStrings, System.JSON, u_envios;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  bIniciado :=  False;
  ReportMemoryLeaksOnShutdown  := false;
  PageControl1.ActivePageIndex := 0;
  FIniciando := True;
  try
    ComboBox1.Items.Clear;
    for I := 0 to 3 do
    Begin
      ComboBox1.Items.Add(GetEnumName(TypeInfo(TLanguageInject), ord(TLanguageInject(i))));
    End;

    GlobalCEFApp.LogConsoleActive := true;
    ComboBox1.ItemIndex   := Integer(TInject1.LanguageInject);
    TabSheet2.TabVisible  := False;
    TabSheet3.TabVisible  := False;
    TabSheet4.TabVisible  := False;
    TabSheet5.TabVisible  := False;
    chk_apagarMsg.Checked := TInject1.Config.AutoDelete;
    LabeledEdit1.text     := TInject1.Config.ControlSendTimeSec.ToString;
    LabeledEdit2.Text     := TInject1.Config.SecondsMonitor.ToString;
    (* CONFIGURAÇÕES DA SOFTHOUSE *)
    Self.Width  :=  526;
    Panel2.Width  :=  490;
    whatsOff.Left :=  193;
    whatsOn.Left  :=  193;
    lblStatus.Left  :=  193;

  finally
    FIniciando := False;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  if not bIniciado then
    tmrIniciar.Enabled  :=  True;
end;

function TfrmPrincipal.GetFileDate(Arquivo: String): string;
begin
  try
    Result := DateToStr(FileDateToDateTime(FileAge(Arquivo)));;
  except
  end;
end;

procedure TfrmPrincipal.InputBoxSet(var Msg: TMessage);
var
  i: integer;
begin
  for i:=0 to Screen.Forms[0].ComponentCount-1 do
  begin
    if Screen.Forms[0].Components[i] is TEdit then
    begin
      With TEdit( Screen.Forms[0].Components[i] ) do
      begin
        PasswordChar := '*'; //Aqui está o caractere q irá aparecer na inputbox
        Clear;               //Limpamos a caixa de digitação da senha.
      end;
    end;
  end;
end;

function TfrmPrincipal.IsFireBirdRunning: boolean;
const
  PROCESS_TERMINATE = $0001;
var
  Co: BOOL;
  FS: THandle;
  FP: TProcessEntry32;
  S: string;
begin
  FS := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FP.dwSize := Sizeof(FP);
  Co := Process32First(FS, FP);
  while Integer(Co) <> 0 do
  begin
    S := S + FP.szExeFile + #13;
    Co := Process32Next(FS, FP);
  end;
  CloseHandle(FS);
  if pos('fbserver', S) > 0 then
    Result := true
  else
    Result := false;
end;

procedure TfrmPrincipal.AddContactList(ANumber: String);
var
  Item: TListItem;
begin
  Item := listaContatos.Items.Add;
  if Length(ANumber) < 12 then
     ANumber := '55' + ANumber;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupAdmins(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaAdministradores.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupContacts(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaParticipantes.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupList(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaGrupos.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TInject1.ShutDown;
//  FreeAndNil(GlobalCEFApp);
end;

procedure TfrmPrincipal.actHabilitaOpcoesExecute(Sender: TObject);
var
  Senha: string;
begin
  PostMessage(Handle, InputBoxMsg, 0, 0);
  Senha := InputBox('Autenticação', 'Informe sua senha:', '');
  if Senha = 'system123456' then
    begin
      TabSheet2.TabVisible   := not TabSheet2.TabVisible;
      TabSheet3.TabVisible   := not TabSheet3.TabVisible;
      TabSheet4.TabVisible   := not TabSheet4.TabVisible;
    end
  else
    ShowMessage('Senha Invalida!');
end;

Procedure TfrmPrincipal.AddChatList(ANumber: String);
var
  Item: TListItem;
begin
  Item := listaChats.Items.Add;
  if Length(ANumber) < 12 then
     ANumber := '55' + ANumber;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 2;
end;

procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
  self.Hide();
  self.WindowState := wsMinimized;
  trayIcon1.Visible := true;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
end;

procedure TfrmPrincipal.ApplicationEventsMinimize(Sender: TObject);
begin
  TrayIcon1.Visible := True;
  Self.Hide;
end;

procedure TfrmPrincipal.btCheckNumberClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  //TInject1.CheckIsValidNumber(ed_num.Text); deprecated
  TInject1.NewCheckIsValidNumber(ed_num.Text);
end;

procedure TfrmPrincipal.btSendContactClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.sendContact(ed_num.Text, mem_message.Text, FNameContact);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendLinkWithPreviewClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.sendLinkPreview(ed_num.Text, ed_videoLink.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendLocationClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;
    //                    number        lat         lgn        Message link
    TInject1.sendLocation(ed_num.Text, '-70.4078', '25.3789', 'Segue a localização');
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendTextAndFileClick(Sender: TObject);
Begin
  if not OpenDialog1.Execute then
     Exit;

  try
    if not TInject1.Auth then
       exit;

    TInject1.SendFile(ed_num.Text, openDialog1.FileName,  mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btIsConnectedClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.CheckIsConnected();
end;


{procedure TfrmPrincipal.btNewCheckNumberClick(Sender: TObject);
begin



end;



 Funcao nao utilizada
function DownloadArquivo(const Origem, Destino: String): Boolean;
const BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
 Result   := False;
 sAppName := ExtractFileName(Application.ExeName);
 hSession := InternetOpen(PChar(sAppName),
                INTERNET_OPEN_TYPE_PRECONFIG,
               nil, nil, 0);
 try
  hURL := InternetOpenURL(hSession,
            PChar(Origem),
            nil,0,0,0);
  try
   AssignFile(f, Destino);
   Rewrite(f,1);
   repeat
    InternetReadFile(hURL, @Buffer,
                     SizeOf(Buffer), BufferLen);
    BlockWrite(f, Buffer, BufferLen)
   until BufferLen = 0;
   CloseFile(f);
   Result:=True;
  finally
   InternetCloseHandle(hURL)
  end
 finally
  InternetCloseHandle(hSession)
 end
end;}


procedure TfrmPrincipal.Button10Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupJoinViaLink(edt_groupInviteLink.Text);
end;

procedure TfrmPrincipal.Button11Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupLeave(lbl_idGroup.Caption);
end;

procedure TfrmPrincipal.Button12Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupDelete(lbl_idGroup.Caption);
end;

procedure TfrmPrincipal.btGetSeveralStatusClick(Sender: TObject);
begin

  try

    FStatus := false;
    if not TInject1.Auth then
       Exit;

    TInject1.GetStatusContact('558196988474@c.us');
    TInject1.GetStatusContact('558198007759@c.us');
  finally

  end;

end;



procedure TfrmPrincipal.btGetMeClick(Sender: TObject);
begin

  try

    if not TInject1.Auth then
       Exit;

    TInject1.GetMe();
  finally

  end;

end;



procedure TfrmPrincipal.Button19Click(Sender: TObject);
begin

   if not TInject1.Auth then

     Exit;

  TInject1.GetGroupInviteLink(lbl_idGroup.Caption);//  '558192317066-1592044430@g.us'

end;



procedure TfrmPrincipal.btCleanChatClick(Sender: TObject);
begin

  if not TInject1.Auth then

     Exit;


  TInject1.CleanALLChat(ed_num.Text);

end;



procedure TfrmPrincipal.btGetStatusClick(Sender: TObject);
begin

  try

    FStatus := true;
    if not TInject1.Auth then
       Exit;

    TInject1.GetStatusContact(ed_num.Text);
  finally

  end;

end;



procedure TfrmPrincipal.btnEnvioClick(Sender: TObject);
begin
  if btnEnvio.Caption = 'Parar' then
    begin
      bParar  :=  True;
      tmrEnvio.Enabled  :=  False;
      btnEnvio.Caption := 'Enviar';
      lblStatusEnvio.Caption  :=  'Parado';
    end
  else
    begin
      bParar  :=  False;
      tmrEnvio.Enabled  :=  True;
      btnEnvio.Caption := 'Parar';
      lblStatusEnvio.Caption  :=  'Aguardando';
      tmrEnvioTimer(Self);
    end;
end;

procedure TfrmPrincipal.btnRemoveGroupLinkClick(Sender: TObject);
begin
   try

    if not TInject1.Auth then
       Exit;

    TInject1.GroupRemoveInviteLink(lbl_idGroup.Caption);
  finally

  end;

end;



procedure TfrmPrincipal.btSetProfileNameClick(Sender: TObject);
begin

  try

    if not TInject1.Auth then
       Exit;

    TInject1.SetProfileName(ed_profileData.Text);
  finally

  end;

end;



procedure TfrmPrincipal.btSetProfileStatusClick(Sender: TObject);
begin

   try

    if not TInject1.Auth then
       Exit;

    TInject1.SetStatus(ed_profileData.Text);
  finally

  end;

end;



procedure TfrmPrincipal.btnTestCheckNumberClick(Sender: TObject);
begin

 if not TInject1.Auth then

     Exit;

  TInject1.NewCheckIsValidNumber('558195833533@c.us');

  TInject1.NewCheckIsValidNumber('558195833532@c.us');

  TInject1.NewCheckIsValidNumber('558195833531@c.us');

end;



procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  JS: string;
begin
  if (not TInject1.Auth) or (ed_profilePicThumbURL.Text = '') then
       Exit;

  TInject1.getProfilePicThumb(ed_profilePicThumbURL.Text);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  TInject1.getAllContacts;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  TInject1.getAllChats;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  if not TInject1.Auth then
    Exit;

  TInject1.createGroup(edt_nomeGrupo.Text, edt_foneParticipante.Text);
  edt_nomeGrupo.Clear;
  edt_foneParticipante.Clear;
end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.getAllGroups;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupAddParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.btStatusBatClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.GetBatteryStatus;
end;

procedure TfrmPrincipal.btSendTextClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.send(ed_num.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupRemoveParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupPromoteParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.Button9Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupDemoteParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.chk_3Click(Sender: TObject);
begin
  ExecuteFilter;
end;

procedure TfrmPrincipal.ConectarDataBase;
var
  iArq: TIniFile;
  nTentativas: word;
begin
  try
    nTentativas := 1;
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');

    Conexao.Params.Values['DriverID'] := 'FB';
    Conexao.Params.Values['Server'] := iArq.ReadString('BD', 'IP', '');
    Conexao.Params.Values['Database'] := iArq.ReadString('BD', 'Path', '');
    FBDriver.VendorLib := ExtractFilePath(Application.ExeName) + 'fbclient.dll';

    while nTentativas <= 12 do
    begin
      if not IsFireBirdRunning then
      begin
        nTentativas := nTentativas + 1;
        Application.ProcessMessages;
        sleep(10000);
      end
      else
        nTentativas := 13;
    end;

    if nTentativas = 13 then
    begin
      Logs('Falha ao conectar banco de dados.', 'Conexão Data Base');
    end;

    try
      Conexao.Connected := true;
    Except
      on E: Exception do
        begin
          Logs('Não foi possivel conectar na base de dados!'+sLineBreak+E.Message, 'Conexão Data Base');
          ShowMessage('Verifique a Conexão com o Banco de Dados');
        end;
    end;

  finally
    iArq.Free;
  end
end;

procedure TfrmPrincipal.ConexaoAfterConnect(Sender: TObject);
begin
  if Conexao.Connected then
    begin
      lblStatusDB.Caption :=  'Conectado';
      lblStatusDB.Font.Color  :=  clGreen;
      lblStatusDB.Refresh;
    end;
end;

procedure TfrmPrincipal.ConexaoAfterDisconnect(Sender: TObject);
begin
  if not Conexao.Connected then
    begin
      lblStatusDB.Caption :=  'desconectado';
      lblStatusDB.Font.Color  :=  clRed;
      lblStatusDB.Refresh;
    end;
end;

procedure TfrmPrincipal.ed_numChange(Sender: TObject);
var
  LRet: TStringList;
  I: Integer;
  Ltexto: String;
begin
  //Esta processando outro CHANGE
  if not CheckBox5.Checked then
     Exit;

  if ed_num.AutoComplete = False Then
     Exit;


  {
   ##### modo 1
  TInject1.GetContacts(ComboBox1.Text, ComboBox1.Items);
  if ComboBox1.Items.Count <= 0 then
     ComboBox1.Style := csSimple else
     ComboBox1.Style := csOwnerDrawFixed;


  ##### modo 2
   }

  LRet:= TStringList.Create;
  ed_num.AutoComplete := False;
  Ltexto                 := ed_num.Text;
  try
    ed_num.Items.Clear;
    if LRet.Count <= 0 then
       ed_num.Style := csSimple else
       ed_num.Style := csDropDown;

    for I := 0 to LRet.Count -1 do
       ed_num.Items.Add(LRet.Strings[i]);
  finally
    ed_num.Text         := Ltexto;
    ed_num.SelStart     := Length(Ltexto);
    ed_num.AutoComplete := True;
    FreeAndNil(LRet);
  end;
end;

procedure TfrmPrincipal.ed_numKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin

  lblContactNumber.Caption := ed_num.Text;

  lblContactStatus.Caption := '-';

end;



procedure TfrmPrincipal.ed_numSelect(Sender: TObject);
begin
  if not CheckBox5.Checked then
     Exit;

  if (ed_num.ItemIndex >=0) and (ed_num.Items.Count > 0) then
  Begin
    ed_num.AutoComplete := False;
    ed_num.Text         := ed_num.Items.Strings[ed_num.ItemIndex];
    ed_num.AutoComplete := True;
  End;
end;

procedure TfrmPrincipal.ExecuteFilter;
begin
//
end;

procedure TfrmPrincipal.Edt_DDIPDRExit(Sender: TObject);
begin
  if FIniciando then
     Exit;

  TInject1.Config.AutoDelete            := chk_apagarMsg.Checked;
  //TInject1.Config.AutoStart           := chk_AutoStart.Checked;

  TInject1.Config.ControlSendTimeSec    := StrToIntDef(LabeledEdit1.Text, 8);
  TInject1.Config.SecondsMonitor        := StrToIntDef(LabeledEdit2.Text, 3);


//  TInject1.Config.ShowRandom          := .Checked;
//  TInject1.Config.SyncContacts        := .Checked;

  TInject1.AjustNumber.LengthDDI         := StrToIntDef(Edt_LengDDI.text , 2);
  TInject1.AjustNumber.LengthDDD         := StrToIntDef(Edt_LengDDD.text , 2);
  TInject1.AjustNumber.LengthPhone       := StrToIntDef(Edt_LengFone.text, 8);
  TInject1.AjustNumber.DDIDefault        := StrToIntDef(Edt_DDIPDR.text  , 55);
  TInject1.AjustNumber.AllowOneDigitMore := CheckBox4.Checked;

  ExecuteFilter;

  TInject1.LanguageInject                := TLanguageInject(ComboBox1.ItemIndex);
end;

procedure TfrmPrincipal.TInject1DisconnectedBrute(Sender: TObject);
begin
  ShowMessage('Conexão foi finalizada pelo celular');
end;

procedure TfrmPrincipal.TInject1ErroAndWarning(Sender: TObject;
  const PError, PInfoAdc: string);
begin
  Timer2.Enabled        := False;
  Lbl_Avisos.Caption    := Perror + ' -> ' + PInfoAdc;
  Lbl_Avisos.Font.Color := clBlack;

  Timer2.Enabled        := True;
end;

procedure TfrmPrincipal.TInject1GetAllContactList(
  const AllContacts: TRetornoAllContacts);
var
  AContact: TContactClass;
begin
  listaContatos.Clear;

  for AContact in AllContacts.result do
  begin
    AddContactList(AContact.id + ' ' +AContact.name);
  end;

  AContact := nil;

end;

procedure TfrmPrincipal.TInject1GetAllGroupAdmins(
  const AllGroups: TRetornoAllGroupAdmins);
var
  i: integer;
begin
  listaAdministradores.Clear;

  for i := 0 to (AllGroups.Numbers.count) - 1 do
  begin
    AddGroupAdmins(allgroups.Numbers[i])
  end;
end;

procedure TfrmPrincipal.TInject1GetAllGroupContacts(
  const Contacts: TClassAllGroupContacts);
var
  JSonValue       : TJSonValue;
  ArrayRows       : TJSONArray;
  i: integer;
begin
  JsonValue := TJSonObject.ParseJSONValue(contacts.result);
  ArrayRows := JsonValue as TJSONArray;

  listaParticipantes.Clear;

  for i := 0 to ArrayRows.Size - 1 do
  begin
    AddGroupContacts(ArrayRows.Items[i].value)
  end;
end;

procedure TfrmPrincipal.TInject1GetAllGroupList(
  const AllGroups: TRetornoAllGroups);
var
  i: integer;
begin
  listaGrupos.Clear;

  for i := 0 to (AllGroups.Numbers.count) - 1 do
  begin
    AddGroupList(allgroups.Numbers[i])
  end;

end;

procedure TfrmPrincipal.TInject1GetBatteryLevel(Sender: TObject);
begin
  Lbl_Avisos.Caption  := 'O telefone '  + TInject(Sender).MyNumber + ' está com '+ TInject(Sender).BatteryLevel.ToString + '% de bateria';
  btStatusBat.caption := 'Status da bateria (' + TInject(Sender).BatteryLevel.ToString + '%)';
end;

procedure TfrmPrincipal.TInject1GetChatList(const Chats: TChatList);
var
  AChat: TChatClass;
begin
  listaChats.Clear;
  for AChat in Chats.result do
    AddChatList('('+ AChat.unreadCount.ToString + ') ' + AChat.name + ' - ' + AChat.id);
end;

procedure TfrmPrincipal.TInject1GetCheckIsValidNumber(Sender: TObject;
  Number: string; IsValid: Boolean);
begin
  if IsValid then
     ShowMessage('Whatsapp Valid -' + Number) else
     ShowMessage('Whatsapp Invalid') ;
end;

procedure TfrmPrincipal.TInject1GetInviteGroup(const Invite: string);
begin

 ShowMessage(Invite);

end;



procedure TfrmPrincipal.TInject1GetMe(const vMe: TGetMeClass);
var aList : TStringList;

begin

 try

  aList := TStringList.Create();



  aList.Add('Battery: ' + vME.battery.ToString);

  aList.Add('LC: ' +  vMe.lc);

  aList.Add('LG: ' + vMe.lg);

  aList.Add('Locate: ' + vMe.locate);



  if vMe.plugged then

   aList.Add('Plugged: true')

  else

   aList.Add('Plugged: false');



  aList.Add('Pushname: ' + vMe.pushname);

  aList.Add('ServerToken: ' + vMe.serverToken);

  aList.Add('Status: ' + vMe.status.status);

  aList.Add('Me: ' + vMe.me);

  aList.Add('Phone Device_Manufacturer:  ' + vMe.phone.device_manufacturer);

  aList.Add('Phone Device Model: ' + vMe.phone.device_model);

  aList.Add('Phone MCC: ' + vMe.phone.mcc);

  aList.Add('Phone MNC: ' + vMe.phone.mnc);

  aList.Add('Phone OS Builder Number: ' + vMe.phone.os_build_number);

  aList.Add('Phone OS Version: ' + vMe.phone.os_version);

  aList.Add('Phone wa Version: ' + vMe.phone.wa_version);



  if vME.phone.InjectWorking then

   aList.Add('Phone InjectWorkink: true')

  else

   aList.Add('Phone InjectWorkin: false');



  Showmessage (aList.Text);

 finally

  aList.Free;

 end;

end;



procedure TfrmPrincipal.TInject1GetMyNumber(Sender: TObject);
begin
  lblNumeroConectado.Caption :=   TInject(Sender).MyNumber;
end;

procedure TfrmPrincipal.TInject1GetProfilePicThumb(Sender: TObject;
  Base64: string);
var
  LInput: TMemoryStream;
  LOutput: TMemoryStream;
  AStr: TStringList;
  lThread: TThread;
begin
  lThread := TThread.CreateAnonymousThread(
  procedure
  begin
    try
      LInput := TMemoryStream.Create;
      LOutput := TMemoryStream.Create;
      AStr  := TStringList.Create;
      AStr.Add(Base64);
      AStr.SaveToStream(LInput);
      LInput.Position := 0;
      TNetEncoding.Base64.Decode( LInput, LOutput );
      LOutput.Position := 0;
      {$IFDEF VER330}
        Image2.Picture.LoadFromStream(LOutput);
      {$ELSE}
        Image2.Picture.Bitmap.LoadFromStream(LOutput);
      {$ENDIF}
    finally
      LInput.Free;
      LOutput.Free;
      AStr.Free;
    end;
  end
  );
  lThread.FreeOnTerminate := true;
  lThread.Start;
end;

procedure TfrmPrincipal.TInject1GetQrCode(Const Sender: TObject;  const QrCode: TResultQRCodeClass);
begin
  if TInject1.FormQrCodeType = TFormQrCodeType(Ft_none) then
     Image1.Picture := QrCode.AQrCodeImage else
     Image1.Picture := nil; //Limpa foto
end;

procedure TfrmPrincipal.TInject1GetStatus(Sender: TObject);//Const PStatus : TStatusType; Const PFormQrCode: TFormQrCodeType);
begin
  if not Assigned(Sender) Then
     Exit;

  try
//    TabSheet2.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
//    TabSheet3.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
//    TabSheet4.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
    TabSheet5.TabVisible  := (TInject(Sender).Status = Inject_Initialized);
  Except
  end;

  if (TInject(Sender).Status = Inject_Initialized) then
  begin
    lblStatus.Caption            := 'Online';
    lblStatus.Font.Color         := $0000AE11;
    SpeedButton3.Enabled              := true;
    ConectarDataBase;
    tmrEnvio.Enabled  := True;
    PageControl1.ActivePageIndex  :=  4;
    //Mudar a posição se der conectado
    Self.Position :=  poDesigned;
    Self.Top  :=  0;
    Self.Left :=  0;
  end else
  begin
    SpeedButton3.Enabled              := false;
    lblStatus.Caption            := 'Offline';
    lblStatus.Font.Color         := $002894FF;
    Conexao.Connected :=  False;
    PageControl1.ActivePageIndex  :=  0;
  end;

  StatusBar1.Panels[1].Text  := lblStatus.Caption;
  whatsOn.Visible            := SpeedButton3.enabled;
  lblNumeroConectado.Visible := whatsOn.Visible;
  whatsOff.Visible           := Not whatsOn.Visible;


  Label3.Visible := False;
  case TInject(Sender).status of
    Server_ConnectedDown       : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Disconnected        : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Disconnecting       : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Connected           : Label3.Caption := '';
    Server_Connecting          : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Initializing        : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Initialized         : Label3.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingNoPhone   : Label3.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingReaderCode: Label3.Caption := TInject(Sender).StatusToStr;
    Server_TimeOut             : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Destroying          : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Destroy             : Label3.Caption := TInject(Sender).StatusToStr;
  end;
  If Label3.Caption <> '' Then
     Label3.Visible := true;


  If TInject(Sender).Status in [Server_ConnectingNoPhone, Server_TimeOut] Then
  Begin
    if TInject(Sender).FormQrCodeType = Ft_Desktop then
    Begin
       if TInject(Sender).Status = Server_ConnectingNoPhone then
          TInject1.FormQrCodeStop;
    end else
    Begin
      if TInject(Sender).Status = Server_ConnectingNoPhone then
      Begin
        if not TInject(Sender).FormQrCodeShowing then
           TInject(Sender).FormQrCodeShowing := True;
      end else
      begin
        TInject(Sender).FormQrCodeReloader;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.TInject1GetStatusMessage(
  const Result: TResponseStatusMessage);

var

  i: integer;

var

  AResult: String;

var

 cara: TResponseStatusMessage;

begin

  if FStatus = true then

  begin

    lblContactStatus.Caption := Result.status

  end else

    begin

      showmessage(Result.id + ' - ' + Result.status);

    end;

end;



procedure TfrmPrincipal.TInject1GetUnReadMessages(Const Chats: TChatList);
var
  AChat: TChatClass;
  AMessage: TMessagesClass;
  contato, telefone: string;
  injectDecrypt: TInjectDecryptFile;
begin
    for AChat in Chats.result do
    begin
      for AMessage in AChat.messages do
      begin
        if not AChat.isGroup then //Não exibe mensages de grupos
        begin
          if not AMessage.sender.isMe then  //Não exibe mensages enviadas por mim
          begin
            memo_unReadMessage.Clear;

            //Tratando o tipo do arquivo recebido e faz o download para pasta \BIN\temp
            case AnsiIndexStr(UpperCase(AMessage.&type), ['PTT', 'IMAGE', 'VIDEO', 'AUDIO', 'DOCUMENT']) of
              0: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
              1: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'jpg', AChat.id); end;
              2: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp4', AChat.id); end;
              3: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
              4: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'pdf', AChat.id); end;
            end;
            sleepNoFreeze(100);
            memo_unReadMessage.Lines.Add(PChar( 'Nome Contato: ' + Trim(AMessage.Sender.pushName)));
            memo_unReadMessage.Lines.Add(PChar( 'Chat Id     : ' + AChat.id));
            //memo_unReadMessage.Lines.Add(PChar(AMessage.mediaData.&type) + 'Lat: '+AMessage.lat.ToString + ' Long: '+ AMessage.lng.ToString);
            //memo_unReadMessage.Lines.Add(PChar(AMessage.mediaKey));
            memo_unReadMessage.Lines.Add(PChar('Tipo mensagem: '      + AMessage.&type));
            memo_unReadMessage.Lines.Add( StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));

            telefone  :=  Copy(AChat.id, 3, Pos('@', AChat.id) - 3);
            contato   :=  AMessage.Sender.pushName;
            ed_profilePicThumbURL.text := AChat.contact.profilePicThumb;
            TInject1.ReadMessages(AChat.id);

            if chk_AutoResposta.Checked then
               VerificaPalavraChave(AMessage.body, '', telefone, contato);
          end;
        end;
      end;
    end;
end;

procedure TfrmPrincipal.TInject1IsConnected(Sender: TObject;
  Connected: Boolean);
begin
  if Connected = true then
  showMessage('Conectado / Connected') else
  showMessage('Desconectado / Not connected')
end;

procedure TfrmPrincipal.TInject1LowBattery(Sender: TObject);
begin
  Timer2.Enabled        := False;
  Lbl_Avisos.Caption    := 'Alarme de BATERIA.  Você está com ' + TInject(Sender).BatteryLevel.ToString + '%';
  Lbl_Avisos.Font.Color := clRed;
  Timer2.Enabled        := True;
end;

procedure TfrmPrincipal.TInject1NewGetNumber(
  const vCheckNumber: TReturnCheckNumber);

begin
 if vCheckNumber.valid then
  Showmessage(vCheckNumber.id + ' é um numero Válido')

 else
  Showmessage(vCheckNumber.id + ' é um numero INVÁLIDO');

end;



procedure TfrmPrincipal.tmrEnvioTimer(Sender: TObject);
var
  vThread : TEnvios;
begin
  qryWhats.Close;
  tmrEnvio.Enabled  :=  False;
  vThread :=  TEnvios.Create;
  vThread.Resume;
end;

procedure TfrmPrincipal.tmrIniciarTimer(Sender: TObject);
begin
  bIniciado :=  True;
  tmrIniciar.Enabled  :=  False;
  SpeedButton1Click(Self);
  TrayIcon1.Visible := True;
  WindowState := wsMinimized;
  Self.Hide;
end;

procedure TfrmPrincipal.listaChatsClick(Sender: TObject);
begin

  lblContactStatus.caption := '-';

end;



procedure TfrmPrincipal.listaChatsDblClick(Sender: TObject);
begin
  ed_num.Text := TInject1.GetChat(listaChats.Selected.Index).id;
  lblContactNumber.Caption := ed_num.Text;
end;

procedure TfrmPrincipal.listaContatosClick(Sender: TObject);
begin
  mem_message.Text := Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
     Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]) - 1);


  FNameContact :=
  stringReplace(Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1],
              Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1])+6,
              length(listaContatos.Items[listaContatos.Selected.Index].SubItems[1])), 'Subitem 2', '', [rfReplaceAll, rfIgnoreCase]);

  lblContactStatus.caption := '-';
end;

procedure TfrmPrincipal.listaContatosDblClick(Sender: TObject);
begin
  ed_num.Text :=  Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
    Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]))+'c.us';

  lblContactNumber.Caption := ed_num.Text;
end;

procedure TfrmPrincipal.listaGruposClick(Sender: TObject);
begin
  if listaGrupos.ItemIndex <>  - 1 then
  begin
    lbl_idGroup.Caption :=  Copy(listaGrupos.Items[listaGrupos.Selected.Index].SubItems[1], 0,
      Pos('@', listaGrupos.Items[listaGrupos.Selected.Index].SubItems[1]))+'g.us';

    if not TInject1.Auth then
      Exit;

    TInject1.listGroupContacts(lbl_idGroup.Caption);
  end;
end;

procedure TfrmPrincipal.listaParticipantesClick(Sender: TObject);
begin
  if listaParticipantes.ItemIndex <>  - 1 then
  begin
    ed_idParticipant.text :=  Copy(listaParticipantes.Items[listaParticipantes.Selected.Index].SubItems[1], 0,
      Pos('@', listaParticipantes.Items[listaParticipantes.Selected.Index].SubItems[1]))+'c.us';
  end;
end;

procedure TfrmPrincipal.Logs(Str, Titulo: string);
var
  Log: TStringList;
  Dir: string;
begin
  try
    if Trim(Str) = '' then
      Exit;
    Dir :=  ExtractFilePath(Application.ExeName) + 'WhatsAppLog\';
    try
      if Trim(Titulo) = '' then
        Titulo  :=  '[WhatsAppServer]'
      else
        Titulo  :=  '['+Titulo+']';
      Log :=  TStringList.Create;
      if not DirectoryExists(Dir) then
        ForceDirectories(Dir);
      if FileExists(Dir+'Logs.ws') then
        begin
          Log.LoadFromFile(Dir+'Logs.ws');
          if Log.Count > 5000 then
            begin
              Log.Clear;
              DeleteFile(Dir+'Logs.ws');
            end;
        end;
      Log.Add('');
      Log.Add(Titulo);
      Log.Add('Data/Hora: '+FormatDateTime('dd/mm/yyyy hh:mm:ss', Now));
      Log.Add('<<'+Str+'>>');
      Log.SaveToFile(Dir+'Logs.ws');
    finally
      log.Free;
    end;
  except
  end;
end;

procedure TfrmPrincipal.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 4 then
    begin
      if FileExists(ExtractFilePath(Application.ExeName) + 'WhatsAppLog\Logs.ws') then
        begin
          if GetFileDate(ExtractFilePath(Application.ExeName) + 'WhatsAppLog\Logs.ws') <> DateToStr(Date) then
            DeleteFile(ExtractFilePath(Application.ExeName) + 'WhatsAppLog\Logs.ws')
          else
            memLog.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'WhatsAppLog\Logs.ws');
        end;
      if memLog.Lines.Count > 0 then
        SendMessage(memLog.Handle, WM_VSCROLL, SB_BOTTOM, 0);
    end
  else
    memLog.Lines.Clear;
end;

procedure TfrmPrincipal.Rdb_FormaConexaoClick(Sender: TObject);
begin
  if Rdb_FormaConexao.ItemIndex = 2 then
    begin
      ShowMessage('Opção não disponivel.');
      Rdb_FormaConexao.ItemIndex  :=  1;
    end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if not TInject1.Auth(false) then
  Begin
    TInject1.FormQrCodeType := TFormQrCodeType(Rdb_FormaConexao.ItemIndex);
    TInject1.FormQrCodeStart;
  End;

  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;

end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://mikelustosa.kpages.online/tinject', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  if not TInject1.auth then
    exit;

   TInject1.Logtout;
   TInject1.Disconnect;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://www.youtube.com/user/mikelustosa', '', '', 1);
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
  Lbl_Avisos.Caption := '';
  Timer2.Enabled := False;
end;

procedure TfrmPrincipal.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

function TfrmPrincipal.VerificaPalavraChave(pMensagem, pSessao, pTelefone,
  pContato: String): Boolean;
begin
  Result := False;
   if ( POS('OLA', AnsiUpperCase(pMensagem))        > 0 ) or ( POS('OLÁ', AnsiUpperCase(pMensagem))       > 0 ) or
      ( POS('BOM DIA', AnsiUpperCase(pMensagem))    > 0 ) or ( POS('BOA TARDE', AnsiUpperCase(pMensagem)) > 0 ) or
      ( POS('BOA NOITE', AnsiUpperCase(pMensagem))  > 0 ) or ( POS('INÍCIO', AnsiUpperCase(pMensagem))    > 0 ) or
      ( POS('HELLO', AnsiUpperCase(pMensagem))      > 0 ) or ( POS('HI', AnsiUpperCase(pMensagem))        > 0 ) or
      ( POS('INICIO', AnsiUpperCase(pMensagem))     > 0 ) or ( POS('OI', AnsiUpperCase(pMensagem))        > 0 )then
      begin
        mensagem :=
        TInject1.Emoticons.AtendenteH+ 'Olá *'+pContato+'!*\n\n'+
        'Você está no auto atendimento do *TInject*!\n\n'+
        'Digite um número:\n\n'+
        TInject1.Emoticons.Um             +' Suporte\n\n'+
        TInject1.Emoticons.Dois           +' Consultar CEP\n\n'+
        TInject1.Emoticons.Tres           +' Financeiro\n\n'+
        TInject1.Emoticons.Quatro         +' Horários de atendimento\n\n';
        TInject1.SendFile(pTelefone, ExtractFileDir(Application.ExeName)+'\Img\softmais.png', mensagem);
        Result := True;
        exit;
      end;
   exit;
end;

procedure TfrmPrincipal.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
{if WebBrowser1.Document <> nil then
   begin
     WebBrowser1.Document.QueryInterface(IViewObject, viewObject) ;
     if Assigned(viewObject) then
     try
       bitmap := TBitmap.Create;
       try
         r := Rect(0, 0, WebBrowser1.Width, WebBrowser1.Height) ;

         bitmap.Height := WebBrowser1.Height;
         bitmap.Width := WebBrowser1.Width;

         viewObject.Draw(DVASPECT_CONTENT, 1, nil, nil, Application.Handle, bitmap.Canvas.Handle, @r, nil, nil, 0) ;

         with TJPEGImage.Create do
         try
           Assign(bitmap) ;
           //SaveToFile(fileName) ;
           image2.Picture.Assign(bitmap);
         finally
           Free;
         end;
       finally
         bitmap.Free;
       end;
     finally
       viewObject._Release;
     end;
   end; }

end;

procedure TfrmPrincipal.whatsOnClick(Sender: TObject);
begin
  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;
end;

end.
