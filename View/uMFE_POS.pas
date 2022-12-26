unit uMFE_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DBGridEh, DBCtrlsEh, DBLookupEh, JvComponentBase,
  JvEnterTab,  Vcl.Buttons;

type

  TfrmPOS = class(Tform)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtValor: TJvCalcEdit;
    Label9: TLabel;
    edtNSU: TEdit;
    Label10: TLabel;
    edtCodigoAutorizacao: TEdit;
    btnInserir: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Panel8: TPanel;
    Label14: TLabel;
    lblGeral: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Label2: TLabel;
    lblTVenda: TLabel;
    tnConcluir: TButton;
    qryPOS: TFDQuery;
    qryPOSCODIGO: TIntegerField;
    qryPOSFK_VENDA: TIntegerField;
    qryPOSFKCREDENCIADORA: TIntegerField;
    qryPOSFKBANDEIRA: TIntegerField;
    qryPOSNSU: TStringField;
    qryPOSCOD_AUTORIZACAO: TIntegerField;
    qryPOSVALOR: TFMTBCDField;
    qryBandeira: TFDQuery;
    qryBandeiraCODIGO: TIntegerField;
    qryBandeiraDESCRICAO: TStringField;
    qryBandeiraATIVO: TStringField;
    cbCredenciadora: TDBLookupComboboxEh;
    cbBandeira: TDBLookupComboboxEh;
    qryCredenciadora: TFDQuery;
    qryCredenciadoraCODIGO: TIntegerField;
    qryCredenciadoraNOME: TStringField;
    qryCredenciadoraATIVO: TStringField;
    dsPOS: TDataSource;
    dsBandeira: TDataSource;
    dsCredenciadora: TDataSource;
    qryPOSVIRTUAL_BANDEIRA: TStringField;
    qryPOSVIRTUAL_CREDENCIADORA: TStringField;
    qryPOSTTOTAL: TAggregateField;
    btnCancelar: TButton;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure btnInserirClick(Sender: TObject);
    procedure tnConcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dsPOSDataChange(Sender: TObject; Field: TField);
  private
    FPodeFechar: Boolean;
  public
    FVenda: Integer;
    FTOtal: extended;
    procedure AbrePos;
  end;

var
  frmPOS: TfrmPOS;
implementation

{$R *.dfm}

uses Udados;

procedure TfrmPOS.AbrePos;
begin
  qryPOS.Close;
  qryPOS.Params[0].Value := FVenda;
  qryPOS.Open;
end;

procedure TfrmPOS.btnCancelarClick(Sender: TObject);
begin
  FPodeFechar := true;
  Close;
end;

procedure TfrmPOS.btnInserirClick(Sender: TObject);
begin
  if Trim(cbBandeira.Text) = '' then
  begin
    cbBandeira.SetFocus;
    raise Exception.Create('Escolha a Bandeira');
  end;

  if Trim(cbCredenciadora.Text) = '' then
  begin
    cbCredenciadora.SetFocus;
    raise Exception.Create('Escolha Credenciadora');
  end;

  if edtValor.Value <= 0 then
  begin
    edtValor.SetFocus;
    raise Exception.Create('Informe o Valor do pagamento');
  end;

  if Trim(edtNSU.Text) = '' then
  begin
    edtNSU.SetFocus;
    raise Exception.Create('Informe o NSU do pagamento');
  end;

  if Trim(edtCodigoAutorizacao.Text) = '' then
  begin
    edtCodigoAutorizacao.SetFocus;
    raise Exception.Create('Informe o Código de autorização do pagamento');
  end;

  qryPOS.Insert;
  qryPOS.FieldByName('FK_VENDA').AsInteger := FVenda;
  qryPOS.FieldByName('FK_CREDENCIADORA').AsInteger := cbCredenciadora.KeyValue;
  qryPOS.FieldByName('FK_BANDEIRA').AsInteger := cbBandeira.KeyValue;
  qryPOS.FieldByName('VALOR').AsFloat := edtValor.Value;
  qryPOS.FieldByName('NSU').AsString := edtNSU.Text;
  qryPOS.FieldByName('COD_AUTORIZACAO').AsInteger :=
    strtointdef(edtCodigoAutorizacao.Text, 0);
  qryPOS.FieldByName('CODIGO').AsInteger := dados.Numerador('VENDA_MFE_POS',
    'CODIGO', 'N', '', '');
  qryPOS.Post;
  dados.Conexao.CommitRetaining;

end;

procedure TfrmPOS.dsPOSDataChange(Sender: TObject; Field: TField);
begin
  if qryPOSTTOTAL.Value > 0 then
    lblGeral.Caption := FormatFloat('0.00', qryPOSTTOTAL.Value)
  else
    lblGeral.Caption := FormatFloat('0.00', 0);
end;

procedure TfrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FPodeFechar then
    Action := canone;
end;

procedure TfrmPOS.FormShow(Sender: TObject);
begin
  qryBandeira.Close;
  qryBandeira.Open;

  qryCredenciadora.Close;
  qryCredenciadora.Open;


  FPodeFechar := false;
  lblTVenda.Caption := FormatFloat('0.00', FTOtal)
end;

procedure TfrmPOS.tnConcluirClick(Sender: TObject);
begin
  if lblTVenda.Caption = lblGeral.Caption then
    FPodeFechar := true
  else
  begin
    FPodeFechar := false;
    raise Exception.Create('Total da Venda diferente de total informado!');
  end;

end;

end.
