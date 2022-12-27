program Restaurante;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMenu in 'UMenu.pas' {frmMenu},
  uDados in 'uDados.pas' {Dados: TDataModule},
  ControlMover in 'ControlMover.pas',
  Loading in 'Loading.pas',
  uConfig in 'uConfig.pas' {frmConfig},
  uLogin in 'uLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmConfig, frmConfig);
  Application.Run;
end.
