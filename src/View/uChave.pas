unit uChave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, DB, serial,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.Imaging.pngimage, FireDAC.Phys.MySQLDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, JvExControls,
  JvLinkLabel;

type
  TfrmChave = class(TForm)
    Timer1: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    btnSair: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskValidade: TMaskEdit;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    RllContato: TLabel;
    Image2: TImage;
    SB: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    soma: integer;
    procedure calculachave;
    function MudaChave(Chave: string): string;
    function CryptChave(Tipo: string; Str: string): string;
  public
    { Public declarations }

  end;

var
  frmChave: TfrmChave;

implementation

{$R *.dfm}

uses Udados, uDadosWeb;

procedure TfrmChave.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmChave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmChave.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
end;

procedure TfrmChave.BitBtn2Click(Sender: TObject);
begin
  try
    BitBtn2.Enabled := false;
    try
      DadosWeb.ConexaoChave.close;
      DadosWeb.ConexaoChave.Open;
      if DadosWeb.ConexaoChave.Connected then
      begin
        DadosWeb.CadastraEmpresa;
        DadosWeb.RetornaSerial;
        ShowMessage('Atualiza��o realizada com sucesso!');
        Application.Terminate;
      end;
    except
      on e: exception do
        raise exception.Create(e.Message + sLineBreak + 'Tente novamente!');
    end;
    close;
  finally
    BitBtn2.Enabled := true;
  end;
end;

procedure TfrmChave.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmChave.FormCreate(Sender: TObject);
begin
  RllContato.Caption := 'Fale Conosco: ' + dados.qryParametroCONTATO.Value +
    sLineBreak + 'Site: ' + dados.qryParametroSITE.AsString + sLineBreak +
    'Email: ' + dados.qryParametroEMAIL_SUPORTE.AsString + sLineBreak +
    'Whatsapp: ' + dados.qryParametroFONE1.Value +
    Trim(' ' + dados.qryParametroFONE2.AsString);

  MaskValidade.EditText := DateToStr(date + 30);
  calculachave;
end;

procedure TfrmChave.BitBtn1Click(Sender: TObject);
var
  contrasenha, senhapadrao: string;
  nTerminais: String;
  qTerminais: integer;
begin
  if Edit2.Text = '' then
  begin
    ShowMessage('Informe a Chave de Libera��o!');
    exit;
  end;

  if length(Edit2.Text) < 15 then
  begin
    ShowMessage('Chave de Libera��o Inv�lida!');
    exit;
  end;

  if MaskValidade.Text = '  /  /    ' then
  begin
    ShowMessage('Informe a Data de Validade da Licen�a!');
    exit;
  end;

  nTerminais := copy(Edit2.Text, Pos('-T', Edit2.Text) + 2, length(Edit2.Text));

  if Trim(nTerminais) = '' then
  begin
    ShowMessage('Chave inv�lida!');
    exit;
  end;

  senhapadrao := soma.ToString;

  MaskValidade.EditText := copy(MudaChave(Edit2.Text), 1, 2) + '/' +
    copy(MudaChave(Edit2.Text), 3, 2) + '/' + copy(MudaChave(Edit2.Text), 5, 4);

  contrasenha := Trim(copy(Edit2.Text, Pos('-', Edit2.Text) + 1, 5));

  qTerminais := round(MudaChave(nTerminais).ToInteger / 15);

  if contrasenha = senhapadrao then
    Edit2.Text := nserial;

  if nserial = Edit2.Text then
  begin
    with dados do
    begin
      qryChave.close;
      qryChave.Params[0].Value := dados.Getcomputer;
      qryChave.Open;

      if qryChave.IsEmpty then
      begin
        qryChave.Insert;
        dados.qryChaveMAQUINA.Value := dados.Getcomputer;
      end
      else
        qryChave.Edit;
      qryChaveCHAVEACESSO.Value := crypt('C', nserial);
      qryChave.Post;
      dados.Conexao.CommitRetaining;

      dados.qryEmpresa.Edit;
      dados.qryEmpresaDATA_VALIDADE.AsString :=
        dados.crypt('C', MaskValidade.Text);
      dados.qryEmpresaNSERIE.AsString := dados.crypt('C', '...');
      dados.qryEmpresaCHECA.Value := crypt('C', 'PRODUCAO');
      dados.qryEmpresaNTERM.AsString := dados.crypt('C', qTerminais.ToString);
      dados.qryEmpresaCSENHA.AsString := dados.crypt('C', 'N');

      dados.qryEmpresa.Post;
      dados.Conexao.CommitRetaining;
      close;
    end;
  end
  else
    ShowMessage('Chave Incorreta.');
end;

procedure TfrmChave.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TfrmChave.FormShow(Sender: TObject);
begin
  SB.Panels[0].Text := SB.Panels[0].Text + ' '+Dados.Getcomputer;
  SB.Panels[1].Text := SB.Panels[1].Text + ' '+Dados.GetMacAddress;
end;

procedure TfrmChave.Timer1Timer(Sender: TObject);
begin
  calculachave;
end;

function TfrmChave.MudaChave(Chave: string): string;
var
  tamanho, i: integer;
  nserial: String;
  vSerial: String;
begin
  Result := '';
  vSerial := Chave;
  // TiraPontos(dados.qryEmpresaCNPJ.Value)
  tamanho := length(vSerial);
  for i := 1 to tamanho do
  begin
    case vSerial[i] of
      '0':
        nserial := nserial + 'D';
      '1':
        nserial := nserial + 'B';
      '2':
        nserial := nserial + 'C';
      '3':
        nserial := nserial + 'A';
      '4':
        nserial := nserial + 'E';
      '5':
        nserial := nserial + 'F';
      '6':
        nserial := nserial + 'G';
      '7':
        nserial := nserial + 'H';
      '8':
        nserial := nserial + 'I';
      '9':
        nserial := nserial + 'J';

      'Z':
        nserial := nserial + '0';
      'L':
        nserial := nserial + '3';
      'X':
        nserial := nserial + '2';
      'O':
        nserial := nserial + '4';
      'W':
        nserial := nserial + '5';
      'M':
        nserial := nserial + '1';
      'V':
        nserial := nserial + '6';
      'N':
        nserial := nserial + '7';
      'H':
        nserial := nserial + '8';
      'J':
        nserial := nserial + '9';
    end;
  end;
  Result := nserial;
end;

procedure TfrmChave.calculachave;
var
  dia, mes, ano: Word;
  hora, min, sec, msec: Word;
begin
  DecodeDate(date, ano, mes, dia);
  DecodeTime(now, hora, min, sec, msec);

  (* VERS�O ORIGINAL *)
//  Edit1.Text := MudaChave(ano.ToString) + '.' + MudaChave(mes.ToString) + '.' +
//    MudaChave(dia.ToString) + '.' + MudaChave(hora.ToString) + '.' +
//    MudaChave(min.ToString) + '.' + MudaChave(sec.ToString);
  (* VERS�O WS *)
  Edit1.Text := '[ ' + CryptChave('C', MudaChave(ano.ToString)) +
                ' ]-[ ' + CryptChave('C', MudaChave(mes.ToString)) +
                ' ]-[ ' + CryptChave('C', MudaChave(dia.ToString)) +
                ' ]-[ ' + CryptChave('C', MudaChave(hora.ToString)) +
                ' ]-[ ' + CryptChave('C', MudaChave(min.ToString)) +
                ' ]-[ ' + CryptChave('C', MudaChave(sec.ToString)) + ' ]';
  soma := (ano * 9) + (mes * 5) + (dia * 8) + (hora * 7) + (min * 2) +
    (sec * 4);
end;

function TfrmChave.CryptChave(Tipo, Str: string): string;
const
  Alfabeto: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Chave:    string = 'HJIKLCADEMBFGUXNPTQRWOSVZY';
var
  I,
  Posicao: Integer;
  resultado: string;
  Caracter: string;
begin
  if Tipo = 'C' then
    begin
      for I := 1 to Length(Str) do
        begin
          Posicao :=  Pos(Str[I], Alfabeto);
          Caracter :=  copy(Chave, Posicao, 1);
          resultado :=  resultado + Caracter;
        end;
    end
  else if Tipo = 'D' then
    begin
      for I := 1 to Length(Str) do
        begin
          Posicao :=  Pos(Str[I], Chave);
          Caracter :=  copy(Alfabeto, Posicao, 1);
          resultado :=  resultado + Caracter;
        end;
    end;
  Result  :=  resultado;
end;

end.
