program ZenVenda;

uses
  System.StartUpCopy,
  FMX.Forms,
  uAbertura in 'uAbertura.pas' {frmAcesso},
  UMenu in 'UMenu.pas' {frmMenu},
  uDados in 'uDados.pas' {Dados: TDataModule},
  uProduto in 'uProduto.pas' {frmProduto},
  uSincronizar in 'uSincronizar.pas' {frmSincronizar},
  ControlMover in 'ControlMover.pas',
  uCliente in 'uCliente.pas' {frmCliente},
  uConfig in 'uConfig.pas' {frmConfig},
  uVendedor in 'uVendedor.pas' {FrmVendedor},
  Loading in 'Loading.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TfrmAcesso, frmAcesso);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmSincronizar, frmSincronizar);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmSincronizar, frmSincronizar);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmConfig, frmConfig);
  Application.CreateForm(TFrmVendedor, FrmVendedor);
  Application.CreateForm(TFrmVendedor, FrmVendedor);
  Application.Run;
end.
