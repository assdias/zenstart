program ControleWeb;

uses
  Vcl.Forms,
  uWeb in 'uWeb.pas' {Form1},
  uCNPJRepresentante in 'uCNPJRepresentante.pas' {frmCNPJRepresentante};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
