unit uAbertura;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  FMX.Objects, FMX.VirtualKeyboard, FMX.Platform, FireDAC.Phys.SQLiteWrapper.Stat, FMX.Ani;

type
  TfrmAcesso = class(TForm)
    Timer1: TTimer;
    TabControl1: TTabControl;
    tabSplash: TTabItem;
    tabLogin: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Image7: TImage;
    Image2: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    edtUsuario: TEdit;
    Layout3: TLayout;
    edtSenha: TEdit;
    Layout4: TLayout;
    btnAcessar: TButton;
    btnSair: TButton;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcesso: TfrmAcesso;

implementation

{$R *.fmx}

uses UMenu, uDados, uConfig;

procedure TfrmAcesso.btnAcessarClick(Sender: TObject);
begin

  dados.qryUsuarios.Close;
  dados.qryUsuarios.Open;

  if dados.qryUsuarios.IsEmpty then
  begin
    dados.sTela := 'Login';
    frmconfig.show;
    frmconfig.TabControl1.TabIndex := 1;
    dados.qryUsuarios.Insert;
    frmconfig.edtUsuarioLocal.Text := edtUsuario.Text;
    frmconfig.edtSenhaLocal.Text := edtSenha.Text;
    dados.qryUsuariosusuario.Value := frmconfig.edtUsuarioLocal.Text;
    dados.qryUsuariossenha.Value := frmconfig.edtSenha.Text;
    exit;
  end;

  if (edtUsuario.Text <> dados.qryUsuariosusuario.Value) or
    (edtSenha.Text <> dados.qryUsuariossenha.Value) then
  begin
    ShowMessage('Usuário ou Senha Inválida!');
    exit;
  end;

  edtUsuario.Text := '';
  edtSenha.Text := '';
  frmMenu.show;

end;

procedure TfrmAcesso.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmAcesso.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmAcesso.FormShow(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
end;

procedure TfrmAcesso.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FTecladoShow := false;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmAcesso.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
var
  O: TFMXObject;
begin
  FTecladoShow := true;

  if Assigned(Focused) and (Focused.GetObject is TControl) then
    if TControl(Focused).AbsoluteRect.Bottom - Padding.Top >= (Bounds.Top) then
    begin
      for O in Children do
        if (O is TFloatAnimation) and
          (TFloatAnimation(O).PropertyName = 'Padding.Top') then
          TFloatAnimation(O).StopAtCurrent;

      AnimateFloat('Padding.Top', Bounds.Top - TControl(Focused)
        .AbsoluteRect.Bottom + Padding.Top, 0.1)
    end
    else
  else
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TfrmAcesso.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  TabControl1.ActiveTab := tabLogin;
end;

end.
