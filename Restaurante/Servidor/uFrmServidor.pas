unit uFrmServidor;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Menus, Vcl.AppEvnts;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    ctiPrincipal: TTrayIcon;
    pmMenu: TPopupMenu;
    RestaurarAplicao1: TMenuItem;
    SairdaAplicao1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    procedure RestaurarAplicao1Click(Sender: TObject);
    procedure SairdaAplicao1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
  private
    procedure ChangeStatusWindow;
    function GetHandleOnTaskBar: THandle;
    procedure HideApplication;
    procedure ShowApplication;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

Function TfrmPrincipal.GetHandleOnTaskBar: THandle;
Begin
{$IFDEF COMPILER11_UP}
  If Application.MainFormOnTaskBar And Assigned(Application.MainForm) Then
    Result := Application.MainForm.Handle
  Else
{$ENDIF COMPILER11_UP}
    Result := Application.Handle;
End;

procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
  HideApplication;
end;

procedure TfrmPrincipal.ChangeStatusWindow;
Begin
  If Self.Visible Then
    SairdaAplicao1.Caption := 'Minimizar para a bandeja'
  Else
    SairdaAplicao1.Caption := 'Sair da Aplicação';
  Application.ProcessMessages;
End;

procedure TfrmPrincipal.SairdaAplicao1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.ShowApplication;
Begin
  ctiPrincipal.Visible := false;
  Application.ShowMainForm := true;
  If Self <> Nil Then
  Begin
    Self.Visible := true;
    Self.WindowState := WsNormal;
  End;
  ShowWindow(GetHandleOnTaskBar, SW_SHOW);
  ChangeStatusWindow;
End;

procedure TfrmPrincipal.HideApplication;
Begin
  ctiPrincipal.Visible := true;
  Application.ShowMainForm := false;
  If Self <> Nil Then
    Self.Visible := false;
  Application.Minimize;
  ShowWindow(GetHandleOnTaskBar, SW_HIDE);
  ChangeStatusWindow;
End;

procedure TfrmPrincipal.RestaurarAplicao1Click(Sender: TObject);
begin
  ShowApplication;
end;

end.
