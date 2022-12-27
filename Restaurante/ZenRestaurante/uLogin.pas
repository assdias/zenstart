unit uLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.Objects, FireDAC.Phys.SQLiteWrapper.Stat, FMX.Ani;

type
  TFrmLogin = class(TForm)
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    edtUsuario: TEdit;
    Layout3: TLayout;
    edtSenha: TEdit;
    Layout4: TLayout;
    btnAcessar: TButton;
    btnSair: TButton;
    Button1: TButton;
    ColorKeyAnimation1: TColorKeyAnimation;
    Image1: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

uses uDados, UMenu, uConfig;

procedure TFrmLogin.btnAcessarClick(Sender: TObject);
begin

  Dados.qryConfigura.Close;
  Dados.qryConfigura.Open;

  if Dados.qryConfigura.IsEmpty then
    frmConfig.show
  else
  begin
    Dados.cdsUsuarios.Close;
    Dados.cdsUsuarios.Params[0].Value := edtUsuario.Text;
    Dados.cdsUsuarios.Params[1].Value := edtSenha.Text;
    Dados.cdsUsuarios.Open;

    if Dados.cdsUsuarios.IsEmpty then
    begin
      ShowMessage('Usuário/senha inválido!');
      exit;
    end;

  end;

  Dados.idUsuario := Dados.cdsUsuariosCODIGO.AsInteger;
  Dados.idVendedor := Dados.cdsUsuariosFK_VENDEDOR.AsInteger;

  frmmenu.show;
  frmmenu.LayoutAguarde.Visible := false;

end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
  frmConfig.show;
end;

end.
