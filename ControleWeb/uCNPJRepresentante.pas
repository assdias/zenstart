unit uCNPJRepresentante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCNPJRepresentante = class(TForm)
    Label1: TLabel;
    edtCNPJRepre: TMaskEdit;
    btnEntrar: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edtCNPJRepreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCNPJRepresentante: TfrmCNPJRepresentante;

implementation

{$R *.dfm}

uses uWeb;

procedure TfrmCNPJRepresentante.btnEntrarClick(Sender: TObject);
begin
  if edtCNPJRepre.Text = '00000000000000' then
    begin
      Form1.sCNPJRepresentante  :=  '';
      Form1.edtCNPJRepresentante.Text :=  '';
      Form1.edtCNPJRepresentante.Enabled  :=  True;
    end
  else
    begin
      Form1.sCNPJRepresentante  :=  edtCNPJRepre.Text;
      Form1.edtCNPJRepresentante.Text :=  edtCNPJRepre.Text;
      Form1.edtCNPJRepresentante.Enabled  :=  False;
    end;
  Close;
end;

procedure TfrmCNPJRepresentante.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmCNPJRepresentante.edtCNPJRepreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnEntrar.SetFocus;
end;

end.
