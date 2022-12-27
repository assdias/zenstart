unit uSerial;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.DateTimeCtrls, FMX.Layouts,
  FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.Objects;

type
  TFrmSerial = class(TForm)
    ListBox1: TListBox;
    lstChave1: TListBoxItem;
    lstChave2: TListBoxItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button3: TButton;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    lstValidade: TListBoxItem;
    DateEdit1: TDateEdit;
    ListBoxItem3: TListBoxItem;
    Button1: TButton;
    ListBoxItem4: TListBoxItem;
    Edit7: TEdit;
    ListBoxItem1: TListBoxItem;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    lstTerminais: TListBoxItem;
    Edit8: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    function MudaChave(Chave: string): string;
    function CryptChave(Tipo: string; Str: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSerial: TFrmSerial;

implementation

{$IFDEF ANDROID}

uses
  FMX.Helpers.Android, Androidapi.Jni.GraphicsContentViewText,
  Androidapi.Jni.Net, Androidapi.Jni.JavaTypes, idUri, Androidapi.Jni,
  Androidapi.JNIBridge, Androidapi.Helpers;

{$ENDIF}
{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TFrmSerial.Button1Click(Sender: TObject);
var
  ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8, ch9, ch10: string;
  TSoma, TTerminais: Extended;
begin
  if
  (Edit1.Text = '') or
  (Edit2.Text = '') or
  (Edit3.Text = '') or
  (Edit4.Text = '') or
  (Edit5.Text = '') or
  (Edit6.Text = '') or
  (Edit8.Text = '')
  then
    begin
      ShowMessage('Preencher todas as informações.');
      Exit;
    end;
  try
    ch1 := MudaChave(CryptChave('D', Edit1.Text));
    ch2 := MudaChave(CryptChave('D', Edit2.Text));
    ch3 := MudaChave(CryptChave('D', Edit3.Text));
    ch4 := MudaChave(CryptChave('D', Edit4.Text));
    ch5 := MudaChave(CryptChave('D', Edit5.Text));
    ch6 := MudaChave(CryptChave('D', Edit6.Text));
    ch7 := MudaChave(copy(DateEdit1.Text, 1, 2));
    ch8 := MudaChave(copy(DateEdit1.Text, 4, 2));
    ch9 := MudaChave(copy(DateEdit1.Text, 7, 4));
    TTerminais := StrToIntDef(Edit8.Text, 3) * 15;
    ch10 := MudaChave(TTerminais.tostring);

    TSoma := (ch1.ToInteger * 9) + (ch2.ToInteger * 5) + (ch3.ToInteger * 8) +
      (ch4.ToInteger * 7) + (ch5.ToInteger * 2) + (ch6.ToInteger * 4);

    Edit7.Text := ch7 + ch8 + ch9 +'-'+ FloatToStr(TSoma) + '-T' + ch10;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFrmSerial.Button2Click(Sender: TObject);
var
{$IFDEF ANDROID}
  IntentWhats: JIntent;
{$ENDIF}
  mensagem: string;
begin
  if trim(Edit7.Text) = '' then
  begin
    ShowMessage('Gere a chave!');
    exit;
  end;
{$IFDEF ANDROID}
  if not Edit7.Text.IsEmpty then
    mensagem := 'CHAVE DE LIBERAÇÃO:' + Edit7.Text;
  IntentWhats := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_SEND);
  IntentWhats.setType(StringToJString('text/plain'));
  IntentWhats.putExtra(TJIntent.JavaClass.EXTRA_TEXT,
    StringToJString(mensagem));
  IntentWhats.setPackage(StringToJString('com.whatsapp'));
  SharedActivity.startActivity(IntentWhats);
{$ENDIF}
end;

procedure TFrmSerial.Button3Click(Sender: TObject);
begin
  Close;
end;

function TFrmSerial.CryptChave(Tipo, Str: string): string;
const
  Alfabeto: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Chave:    string = 'HJIKLCADEMBFGUXNPTQRWOSVZY';
var
  I,
  Posicao: Integer;
  resultado: string;
  Caracter: string;
begin
  try
    resultado :=  '';
    if Tipo = 'C' then
      begin
        {$IFDEF ANDROID}
        for I := 0 to Length(Str)-1 do
          begin
            Posicao :=  Pos(Str[I], Alfabeto);
            Caracter :=  copy(Chave, Posicao, 1);
            resultado :=  resultado + Caracter;
          end;
        {$ENDIF}
        {$IFDEF MSWINDOWS}
        for I := 1 to Length(Str) do
          begin
            Posicao :=  Pos(Str[I], Alfabeto);
            Caracter :=  copy(Chave, Posicao, 1);
            resultado :=  resultado + Caracter;
          end;
        {$ENDIF}
      end
    else if Tipo = 'D' then
      begin
        {$IFDEF ANDROID}
        for I := 0 to Length(Str)-1 do
          begin
            Posicao :=  Pos(Str[I], Chave);
            Caracter :=  copy(Alfabeto, Posicao, 1);
            resultado :=  resultado + Caracter;
          end;
        {$ENDIF}
        {$IFDEF MSWINDOWS}
        for I := 1 to Length(Str) do
          begin
            Posicao :=  Pos(Str[I], Chave);
            Caracter :=  copy(Alfabeto, Posicao, 1);
            resultado :=  resultado + Caracter;
          end;
        {$ENDIF}
      end;
    Result  :=  resultado;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFrmSerial.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit2.SetFocus;
end;

procedure TFrmSerial.Edit2KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit3.SetFocus;
end;

procedure TFrmSerial.Edit3KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit4.SetFocus;
end;

procedure TFrmSerial.Edit4KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit5.SetFocus;
end;

procedure TFrmSerial.Edit5KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit6.SetFocus;
end;

procedure TFrmSerial.Edit6KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key in [vkNext, vkReturn] then
    Edit8.SetFocus;
end;

procedure TFrmSerial.FormShow(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  Button2.Visible := false;
{$ENDIF}
  DateEdit1.Date  :=  Date + 30;
end;

Function TFrmSerial.MudaChave(Chave: string): string;
var
  tamanho, i: integer;
  NSerial: String;
  vSerial: String;
begin
  Result := '';
  vSerial := Chave; // TiraPontos(Dados.qryEmpresaCNPJ.Value)
  tamanho := Length(vSerial);
  {$IFDEF ANDROID}
  for i := 0 to tamanho-1 do
  begin
    case vSerial[i] of
      'D':
        NSerial := NSerial + '0';
      'B':
        NSerial := NSerial + '1';
      'C':
        NSerial := NSerial + '2';
      'A':
        NSerial := NSerial + '3';
      'E':
        NSerial := NSerial + '4';
      'F':
        NSerial := NSerial + '5';
      'G':
        NSerial := NSerial + '6';
      'H':
        NSerial := NSerial + '7';
      'I':
        NSerial := NSerial + '8';
      'J':
        NSerial := NSerial + '9';
      '0':
        NSerial := NSerial + 'Z';
      '3':
        NSerial := NSerial + 'L';
      '2':
        NSerial := NSerial + 'X';
      '4':
        NSerial := NSerial + 'O';
      '5':
        NSerial := NSerial + 'W';
      '1':
        NSerial := NSerial + 'M';
      '6':
        NSerial := NSerial + 'V';
      '7':
        NSerial := NSerial + 'N';
      '8':
        NSerial := NSerial + 'H';
      '9':
        NSerial := NSerial + 'J';
    end;
  end;
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  for i := 1 to tamanho do
  begin
    case vSerial[i] of
      'D':
        NSerial := NSerial + '0';
      'B':
        NSerial := NSerial + '1';
      'C':
        NSerial := NSerial + '2';
      'A':
        NSerial := NSerial + '3';
      'E':
        NSerial := NSerial + '4';
      'F':
        NSerial := NSerial + '5';
      'G':
        NSerial := NSerial + '6';
      'H':
        NSerial := NSerial + '7';
      'I':
        NSerial := NSerial + '8';
      'J':
        NSerial := NSerial + '9';
      '0':
        NSerial := NSerial + 'Z';
      '3':
        NSerial := NSerial + 'L';
      '2':
        NSerial := NSerial + 'X';
      '4':
        NSerial := NSerial + 'O';
      '5':
        NSerial := NSerial + 'W';
      '1':
        NSerial := NSerial + 'M';
      '6':
        NSerial := NSerial + 'V';
      '7':
        NSerial := NSerial + 'N';
      '8':
        NSerial := NSerial + 'H';
      '9':
        NSerial := NSerial + 'J';
    end;
  end;
  {$ENDIF}
  Result := NSerial;
end;

end.
