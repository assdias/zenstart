unit uWeb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, IniFiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  UniProvider, MySQLUniProvider, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    dsEmpresa: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    conexao: TUniConnection;
    MySQL: TMySQLUniProvider;
    qryEmpresa: TUniQuery;
    qryEmpresacodigo: TIntegerField;
    qryEmpresacnpj: TStringField;
    qryEmpresarazao: TStringField;
    qryEmpresaendereco: TStringField;
    qryEmpresacidade: TStringField;
    qryEmpresabairro: TStringField;
    qryEmpresacep: TStringField;
    qryEmpresauf: TStringField;
    qryEmpresafone: TStringField;
    qryEmpresaemail: TStringField;
    qryEmpresadata: TDateTimeField;
    qryEmpresanterminais: TIntegerField;
    qryEmpresaserial: TStringField;
    qryEmpresavalidade_licenca: TDateField;
    qryEmpresabloqueado: TStringField;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    MaskEdit2: TMaskEdit;
    Label15: TLabel;
    Button4: TButton;
    Panel2: TPanel;
    MaskEdit3: TMaskEdit;
    Label16: TLabel;
    Button5: TButton;
    TabSheet3: TTabSheet;
    lblServidor: TLabeledEdit;
    lblDatabase: TLabeledEdit;
    lblUsuario: TLabeledEdit;
    lblSenha: TLabeledEdit;
    Button6: TButton;
    Label17: TLabel;
    edtCNPJ: TEdit;
    edtRazao: TEdit;
    edtEndereco: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtCEP: TEdit;
    edtBairro: TEdit;
    edtEmail: TEdit;
    edtFone: TEdit;
    edtCadastro: TEdit;
    edtCodigo: TEdit;
    chkBloquear: TCheckBox;
    edtTerm: TEdit;
    edtValidade: TMaskEdit;
    GroupBox2: TGroupBox;
    gridTerminais: TDBGrid;
    qryTerminais: TUniQuery;
    dsTerminais: TDataSource;
    qryTerminaisCODIGO: TIntegerField;
    qryTerminaisFK_EMPRESA: TIntegerField;
    qryTerminaisMAC: TStringField;
    qryTerminaisNOME_COMPUTADOR: TStringField;
    Button7: TButton;
    qryTerminaisVIRTUAL_MAC: TStringField;
    qryTerminaisVIRTUAL_COMPUTADOR: TStringField;
    edtCNPJRepresentante: TMaskEdit;
    Label18: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure qryEmpresanterminaisValidate(Sender: TField);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure qryTerminaisCalcFields(DataSet: TDataSet);
    procedure dsEmpresaDataChange(Sender: TObject; Field: TField);
  private
    arquivo: string;
    procedure configurabd;
    procedure alterar;
    procedure Gravar;
    function Crypt(Action, Src: String): String;
    { Private declarations }
  public
    sCNPJRepresentante: string;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uCNPJRepresentante;

procedure TForm1.Button1Click(Sender: TObject);
var
  cnpj: string;
begin
  if not FileExists(arquivo) then
    exit;

  if Application.messageBox('Tem Certeza de que deseja atualizar todos',
    'Confirmação', mb_YesNo) = mrNo then
    exit;

  try
    try
      Button1.Enabled := false;
      if not conexao.Connected then
        conexao.Open;

      cnpj := qryEmpresacnpj.AsString;
      qryEmpresa.Close;
      qryEmpresa.Params[0].Value := MaskEdit3.Text + '%';
      if edtCNPJRepresentante.Enabled then
        qryEmpresa.Params[1].Value := edtCNPJRepresentante.Text + '%';
      qryEmpresa.Open;
      qryEmpresa.First;

      while not qryEmpresa.Eof do
      begin
        qryEmpresa.Edit;
        qryEmpresavalidade_licenca.Value := StrToDateDef(MaskEdit1.Text, date);
        qryEmpresanterminais.Value := StrToIntDef(MaskEdit2.Text, 3);
        qryEmpresabloqueado.Value := 'N';
        if CheckBox1.Checked then
          qryEmpresabloqueado.Value := 'S';
        qryEmpresa.Post;
        qryEmpresa.Next;
      end;
      ShowMessage('Alteração Concluida!');
    except
      on e: exception do
        ShowMessage('Erro:' + e.Message);
    end;
  finally
    Button1.Enabled := true;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Gravar;
end;

procedure TForm1.configurabd;
begin
  conexao.Database := lblDatabase.Text;
  conexao.Server := lblServidor.Text;
  conexao.Username := lblUsuario.Text;
  conexao.Password := lblSenha.Text;
end;

function TForm1.Crypt(Action, Src: String): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key, KeyNew: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;

  Key := 'XNGREXCPAJHKQWERYTUIOP98756LKJHASFGMNBVCAXZ13450';

  KeyNew := 'PRODOXCPAJHKQWERYTUIOP98765LKJHASFGMNBVCAXZ01234';

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 128;
  if (Action = UpperCase('C')) then
  begin
    // Randomize;
    OffSet := Range;
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if not FileExists(arquivo) then
    exit;
  try
    Button4.Enabled := false;
    conexao.Close;
    if not conexao.Connected then
      conexao.Open;
    qryEmpresa.Close;
    qryEmpresa.Params[0].Value := MaskEdit3.Text + '%';
    if edtCNPJRepresentante.Enabled then
      qryEmpresa.Params[1].Value := edtCNPJRepresentante.Text + '%';
    qryEmpresa.Open;
  finally
    Button4.Enabled := true;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  try
    if not FileExists(arquivo) then
      exit;

    Button5.Enabled := false;
    if not conexao.Connected then
      conexao.Open;
    qryEmpresa.Close;
    qryEmpresa.Params[0].Value := MaskEdit3.Text + '%';
    if edtCNPJRepresentante.Enabled then
      qryEmpresa.Params[1].Value := edtCNPJRepresentante.Text + '%';
    qryEmpresa.Open;
  finally
    Button5.Enabled := true;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  GravaIni: TIniFile;
begin
  try
    GravaIni := TIniFile.Create(arquivo);
    GravaIni.WriteString('BD', 'SERVIDOR', lblServidor.Text);
    GravaIni.WriteString('BD', 'DATABASE', lblDatabase.Text);
    GravaIni.WriteString('BD', 'SENHA', lblSenha.Text);
    GravaIni.WriteString('BD', 'USUARIO', lblUsuario.Text);
  finally
    GravaIni.Free;
  end;
  configurabd;
  ShowMessage('Concluido!');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if qryTerminais.IsEmpty then
    Exit;
  if qryTerminaisCODIGO.Value <= 0 then
    begin
      ShowMessage('Terminal selecionado invalido!');
      Exit;
    end;
  if messagedlg('Deseja excluir o TERMINAL?', mtConfirmation,[mbYes,mbNo],0)= mrYes then
    begin
      try
        qryTerminais.Delete;
        qryTerminais.Refresh;
        ShowMessage('Terminal EXCLUIDO.')
      except
        on E: Exception do
          ShowMessage('Falha ao excluir o terminal.'+sLineBreak+E.Message);
      end;
    end;
end;

procedure TForm1.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TForm1.DBGrid3DblClick(Sender: TObject);
begin
  alterar;
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm1.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try

    if Application.messageBox('Tem Certeza de que deseja excluir cliente',
      'Confirmação', mb_YesNo) = mrYes then
    begin

      if Key = VK_DELETE then
      begin
        if not qryEmpresa.IsEmpty then
          qryEmpresa.Delete;
      end;
    end;
  except
    on e: exception do
      raise exception.Create
        ('Não foi possivel excluir empresa, tente novamente!' + sLineBreak +
        'Erro:' + e.Message);
  end;
end;

procedure TForm1.dsEmpresaDataChange(Sender: TObject; Field: TField);
begin
  qryTerminais.Close;
  qryTerminais.Params[0].Value  :=
    qryEmpresacodigo.Value;
  qryTerminais.Open;
end;

procedure TForm1.alterar;
begin
  edtCodigo.Text := qryEmpresacodigo.AsString;
  edtRazao.Text := qryEmpresarazao.Value;
  edtCNPJ.Text := qryEmpresacnpj.Value;
  edtEndereco.Text := qryEmpresaendereco.Value;
  edtCidade.Text := qryEmpresacidade.Value;
  edtUF.Text := qryEmpresauf.Value;
  edtCEP.Text := qryEmpresacep.Value;
  edtBairro.Text := qryEmpresabairro.Value;
  edtEmail.Text := qryEmpresaemail.Value;
  edtFone.Text := qryEmpresafone.Value;
  edtTerm.Text := qryEmpresanterminais.AsString;
  edtValidade.Text := qryEmpresavalidade_licenca.AsString;
  edtCadastro.Text := qryEmpresadata.AsString;
  chkBloquear.Checked := false;
  if qryEmpresabloqueado.Value = 'S' then
    chkBloquear.Checked := true;
end;

procedure TForm1.Gravar;
var
  codigo: integer;
begin
  try
    codigo := qryEmpresacodigo.Value;
    Button4.Click;
    if conexao.Connected then
    begin
      if qryEmpresa.Locate('codigo', codigo, []) then
      begin
        qryEmpresa.Edit;
        qryEmpresanterminais.Value := StrToIntDef(edtTerm.Text, 3);
        qryEmpresavalidade_licenca.Value :=
          StrToDateDef(edtValidade.Text, date);
        qryEmpresadata.Value := StrToDateDef(edtCadastro.Text, date);
        qryEmpresabloqueado.Value := 'S';
        if not chkBloquear.Checked then
          qryEmpresabloqueado.Value := 'N';
        qryEmpresa.Post;
        PageControl1.ActivePageIndex := 0;
        ShowMessage('Cadastro Atualizado!');
      end;
    end
  except
    on e: exception do
      raise exception.Create('Erro:' + e.Message);
  end;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  alterar;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  LeIni: TIniFile;
begin
  try
    arquivo := ExtractFilePath(Application.ExeName) + 'Config_Mysql.ini';
    if FileExists(arquivo) then
    begin
      LeIni := TIniFile.Create(arquivo);
      lblServidor.Text := LeIni.ReadString('BD', 'SERVIDOR', '');
      lblDatabase.Text := LeIni.ReadString('BD', 'DATABASE', '');
      lblSenha.Text := LeIni.ReadString('BD', 'SENHA', '');
      lblUsuario.Text := LeIni.ReadString('BD', 'USUARIO', '');
      configurabd;
    end;
  finally
    LeIni.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if not FileExists(arquivo) then
    exit;
  try
    frmCNPJRepresentante := TfrmCNPJRepresentante.Create(Application);
    frmCNPJRepresentante.ShowModal;
  finally
    frmCNPJRepresentante.Release;
  end;
  if sCNPJRepresentante <> '' then
    begin
      qryEmpresa.SQL.Text :=  qryEmpresa.SQL.Text
          .Replace('/*where*/', ' and (cnpj_representante = '+QuotedStr(sCNPJRepresentante)+')');
    end
  else
    begin
      qryEmpresa.SQL.Text :=  qryEmpresa.SQL.Text
          .Replace('/*where*/', '  and ((cnpj_representante like :repre) or (cnpj_representante is null))');
    end;

  conexao.Close;
  conexao.Open;
  qryEmpresa.Close;
  qryEmpresa.Params[0].Value := MaskEdit3.Text + '%';
  if edtCNPJRepresentante.Enabled then
    qryEmpresa.Params[1].Value := edtCNPJRepresentante.Text + '%';
  qryEmpresa.Open;
end;

procedure TForm1.qryEmpresanterminaisValidate(Sender: TField);
begin
  if qryEmpresanterminais.Value < 1 then
    raise exception.Create('Numero de terminais inválido');
end;

procedure TForm1.qryTerminaisCalcFields(DataSet: TDataSet);
begin
  //qryTerminaisVIRTUAL_MAC.Value :=  Crypt('D', qryTerminaisMAC.Value);    wagner
  qryTerminaisVIRTUAL_MAC.Value :=  qryTerminaisMAC.Value;
  qryTerminaisVIRTUAL_COMPUTADOR.Value :=  Crypt('D', qryTerminaisNOME_COMPUTADOR.Value);
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
