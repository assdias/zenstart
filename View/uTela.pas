unit uTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTela = class(TForm)
    DBGrid1: TDBGrid;
    qryTabela: TFDQuery;
    dsTebela: TDataSource;
    qryTabelaCODIGO: TIntegerField;
    qryTabelaTABELA: TStringField;
    qryTabelaCAMPO: TIntegerField;
    qryTabelaFK_USUARIO: TIntegerField;
    qryTabelaTAMANHO: TIntegerField;
    qryTabelaATIVO: TStringField;
  private
    procedure VerificaTabela(aTabela: String; aUsuario: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTela: TfrmTela;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmTela.VerificaTabela(aTabela: String; aUsuario: Integer);
var
  qryCampos: TFDQuery;
  qryInsere: TFDQuery;
begin
  try

    qryInsere := TFDQuery.Create(self);
    qryInsere.Connection := dados.Conexao;
    qryInsere.Close;
    qryInsere.SQL.Clear;
    qryInsere.SQL.Add
      ('INSERT INTO CONFIGURA_TELA(CODIGO, TABELA, CAMPO, FK_USUARIO, TAMANHO,');
    qryInsere.SQL.Add
      ('ATIVO)VALUES(:CODIGO, :TABELA, :CAMPO, :FK_USUARIO, :TAMANHO,');
    qryInsere.SQL.Add(':ATIVO);');

    qryTabela.Close;
    qryTabela.Params[0].Value := aTabela;
    qryTabela.Params[1].Value := aUsuario;
    qryTabela.Open;

    if qryTabela.IsEmpty then
    begin
      qryCampos := TFDQuery.Create(self);
      qryCampos.Connection := dados.Conexao;

      qryCampos.Close;
      qryCampos.SQL.Clear;
      qryCampos.SQL.Add('SELECT  rf.rdb$field_name as campos');
      qryCampos.SQL.Add('FROM rdb$relations r');
      qryCampos.SQL.Add
        ('INNER JOIN rdb$relation_fields rf on rf.rdb$relation_name = r.rdb$relation_name');
      qryCampos.SQL.Add
        ('WHERE r.rdb$system_flag = 0 and r.rdb$relation_type = 0');
      qryCampos.SQL.Add('AND r.rdb$relation_name =:tabela');
      qryCampos.SQL.Add('ORDER BY rf.rdb$relation_name');
      qryCampos.Params[0].Value := aTabela;
      qryCampos.Open;

      while not qryCampos.eof do
      begin
        if not qryTabela.Locate('CAMPO', qryCampos.Fields[0].AsString, []) then
        begin
          qryInsere.ParamByName('CODIGO').AsInteger :=
            dados.Numerador('CONFIGURA_TELA', 'CODIGO', 'N', '', '');
          qryInsere.ParamByName('TABELA').AsString := aTabela;
          qryInsere.ParamByName('CAMPO').AsString :=
            qryCampos.Fields[0].AsString;
          qryInsere.ParamByName('FK_USUARIO').AsInteger := aUsuario;
          qryInsere.ParamByName('TAMANHO').AsInteger := 0;
          qryInsere.ParamByName('ATIVO').Value := 'S';
          qryInsere.ExecSQL;
        end;
        qryCampos.Next
      end;

      dados.Conexao.CommitRetaining;
    end;

  finally
    qryCampos.Free;
    qryInsere.Free;
    qryTabela.Refresh;
  end;

end;

end.
