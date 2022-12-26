unit uZeraEstoqueNegativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmZeraNegativo = class(TForm)
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    qryAcerta: TFDQuery;
    qryAcertaCODIGO: TIntegerField;
    qryAcertaFKPRODUTO: TIntegerField;
    qryAcertaE_S: TStringField;
    qryAcertaDATA: TDateField;
    qrySaldo: TFDQuery;
    qryAcertaQTD_F: TFMTBCDField;
    qryAcertaQTD_A: TFMTBCDField;
    qrySaldoCODIGO: TIntegerField;
    qrySaldoQTDR: TFMTBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmZeraNegativo: TfrmZeraNegativo;

implementation

{$R *.dfm}

uses Udados, uDMEstoque;

procedure TfrmZeraNegativo.BitBtn1Click(Sender: TObject);
begin

  try
    BitBtn1.Enabled := false;

    qrySaldo.Close;
    qrySaldo.Open;

    if qrySaldo.IsEmpty then
      exit;

    qrySaldo.Last;
    try
      ProgressBar1.Max := qrySaldo.RecordCount;
    except
      ProgressBar1.Max := 1;
    end;
    ProgressBar1.Position := 1;
    ProgressBar1.Min := 1;

    qryAcerta.Close;
    qryAcerta.Open;

    qrySaldo.First;
    while not qrySaldo.Eof do // ajusta saldo
    begin

      qryAcerta.Insert;
      qryAcertaCODIGO.Value := dados.Numerador('ACERTA_ESTOQUE', 'CODIGO',
        'N', '', '');

      qryAcertaFKPRODUTO.Value := qrySaldoCODIGO.Value;
      qryAcertaE_S.Value := 'E';
      qryAcertaQTD_A.AsFloat := -1 * qrySaldoQTDR.AsFloat;
      qryAcertaQTD_F.Value := 0;
      qryAcertaDATA.Value := DATE;
      qryAcerta.Post;
      dados.Conexao.CommitRetaining;

      dados.qryExecute.Close;
      dados.qryExecute.SQL.Clear;
      dados.qryExecute.SQL.Add(' update produto');
      dados.qryExecute.SQL.Add(' set');
      dados.qryExecute.SQL.Add(' QTD_ATUAL=0');
      dados.qryExecute.SQL.Add(' where');
      dados.qryExecute.SQL.Add('codigo=:id ');
      dados.qryExecute.Params[0].Value := qrySaldoCODIGO.Value;
      dados.qryExecute.ExecSQL;
      dados.Conexao.CommitRetaining;

      qrySaldo.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
    end;
    Application.ProcessMessages;

    BitBtn1.Enabled := false;

    // zera estoque real negativo

    Application.ProcessMessages;
    ShowMessage('Atualização concluída com sucesso!');

  finally
    BitBtn1.Enabled := true;
  end;

end;

procedure TfrmZeraNegativo.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmZeraNegativo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    Close;
  end;
end;

end.
