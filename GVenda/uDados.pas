unit uDados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXCommon, inifiles,
  IPPeerClient, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  DBAccess, Uni, MemDS, FireDAC.Stan.Intf, FireDAC.Stan.Option, System.IoUtils,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, UniProvider,
  MySQLUniProvider, FireDAC.Phys.SQLiteWrapper.Stat;

type
  TDados = class(TDataModule)
    conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDQLite: TFDPhysSQLiteDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryPessoa: TFDQuery;
    qryPessoaempresa: TSmallintField;
    qryPessoacodigo: TIntegerField;
    qryPessoatipo: TStringField;
    qryPessoacnpj: TStringField;
    qryPessoaie: TStringField;
    qryPessoafantasia: TStringField;
    qryPessoarazao: TStringField;
    qryPessoaendereco: TStringField;
    qryPessoanumero: TStringField;
    qryPessoacomplemento: TStringField;
    qryPessoacodmun: TIntegerField;
    qryPessoamunicipio: TStringField;
    qryPessoabairro: TStringField;
    qryPessoauf: TStringField;
    qryPessoacep: TStringField;
    qryPessoafone1: TStringField;
    qryPessoafone2: TStringField;
    qryPessoacelular1: TStringField;
    qryPessoacelular2: TStringField;
    qryPessoaemail1: TStringField;
    qryPessoaemail2: TStringField;
    qryPessoasexo: TStringField;
    qryPessoadt_nasc: TDateField;
    qryPessoaecivil: TStringField;
    qryPessoalimite: TBCDField;
    qryPessoadia_pgto: TSmallintField;
    qryPessoanum_usu: TSmallintField;
    qryPessoafatura: TStringField;
    qryPessoacheque: TStringField;
    qryPessoaccf: TStringField;
    qryPessoaspc: TStringField;
    qryPessoaisento: TStringField;
    qryPessoaforn: TStringField;
    qryPessoafun: TStringField;
    qryPessoacli: TStringField;
    qryPessoafab: TStringField;
    qryPessoatran: TStringField;
    qryPessoaadm: TStringField;
    qryPessoaativo: TStringField;
    qryPessoadt_admissao: TDateField;
    qryPessoadt_demissao: TDateField;
    qryPessoasalario: TBCDField;
    qryPessoapai: TStringField;
    qryPessoamae: TStringField;
    qryProduto: TFDQuery;
    qryOrcamento: TFDQuery;
    qryItem: TFDQuery;
    qryItemcodigo: TIntegerField;
    qryItemfk_orcamento: TIntegerField;
    qryItemfk_produto: TIntegerField;
    qryItemqtd: TBCDField;
    qryItempreco: TBCDField;
    qryItemtotal: TBCDField;
    qryItemitem: TSmallintField;
    qryItemdescricao: TStringField;
    qryOrcamentocodigo: TIntegerField;
    qryOrcamentodata: TDateField;
    qryOrcamentofkvendedor: TIntegerField;
    qryOrcamentofk_cliente: TIntegerField;
    qryOrcamentocliente: TStringField;
    qryOrcamentotelefone: TStringField;
    qryOrcamentocelular: TStringField;
    qryOrcamentoendereco: TStringField;
    qryOrcamentonumero: TStringField;
    qryOrcamentobairro: TStringField;
    qryOrcamentocidade: TStringField;
    qryOrcamentouf: TStringField;
    qryOrcamentocnpj: TStringField;
    qryOrcamentoforma_pagamento: TStringField;
    qryOrcamentovalidade: TSmallintField;
    qryOrcamentosituacao: TStringField;
    qryOrcamentototal: TBCDField;
    qryOrcamentocep: TStringField;
    qryOrcamentofkempresa: TIntegerField;
    qryOrcamentosubtotal: TBCDField;
    qryOrcamentopercentual: TBCDField;
    qryOrcamentodesconto: TBCDField;
    qryCidade: TFDQuery;
    qryCidadecodigo: TIntegerField;
    qryCidadedescricao: TStringField;
    qryCidadecoduf: TIntegerField;
    qryCidadeuf: TStringField;
    qryExecute: TFDQuery;
    qryPessoanovo: TStringField;
    qryProdutocodigo: TIntegerField;
    qryProdutotipo: TStringField;
    qryProdutocodbarra: TStringField;
    qryProdutoreferencia: TStringField;
    qryProdutounidade: TStringField;
    qryProdutopr_custo: TBCDField;
    qryProdutopr_venda: TBCDField;
    qryProdutoqtd_atual: TFMTBCDField;
    qryProdutodescricao: TStringField;
    dsOrcamento: TDataSource;
    qryItemvirtual_qtd: TStringField;
    qryItemvirtual_total: TStringField;
    qryItemvirtual_preco: TStringField;
    qryItemttotal: TAggregateField;
    qryOrcamentovirtual_numero: TStringField;
    qryOrcamentovirtual_data: TStringField;
    qryOrcamentovirtual_total: TStringField;
    cdsProdutos: TUniQuery;
    cdsPessoas: TUniQuery;
    cdsOrcamento: TUniQuery;
    cdsItens: TUniQuery;
    cdsCidade: TUniQuery;
    MySQLUniProvider: TMySQLUniProvider;
    UniConexao: TUniConnection;
    cdsProdutoscodigo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutostipo: TStringField;
    cdsProdutoscodbarra: TStringField;
    cdsProdutosreferencia: TStringField;
    cdsProdutosunidade: TStringField;
    cdsProdutospr_custo: TFloatField;
    cdsProdutospr_venda: TFloatField;
    cdsProdutosqtd_atual: TFloatField;
    cdsPessoastipo: TStringField;
    cdsPessoascnpj: TStringField;
    cdsPessoasie: TStringField;
    cdsPessoasfantasia: TStringField;
    cdsPessoasrazao: TStringField;
    cdsPessoasendereco: TStringField;
    cdsPessoasnumero: TStringField;
    cdsPessoascomplemento: TStringField;
    cdsPessoascodmun: TIntegerField;
    cdsPessoasmunicipio: TStringField;
    cdsPessoasbairro: TStringField;
    cdsPessoasuf: TStringField;
    cdsPessoascep: TStringField;
    cdsPessoascelular1: TStringField;
    cdsPessoascelular2: TStringField;
    cdsPessoasisento: TStringField;
    cdsCidadecodigo: TIntegerField;
    cdsCidadedescricao: TStringField;
    cdsCidadecoduf: TIntegerField;
    cdsCidadeuf: TStringField;
    qryNumerador: TFDQuery;
    cdsPessoascodigo: TIntegerField;
    cdsOrcamentocodigo: TIntegerField;
    cdsOrcamentodata: TDateField;
    cdsOrcamentofk_cliente: TIntegerField;
    cdsOrcamentoforma_pagamento: TStringField;
    cdsOrcamentovalidade: TSmallintField;
    cdsOrcamentosituacao: TStringField;
    cdsOrcamentototal: TFloatField;
    cdsOrcamentosubtotal: TFloatField;
    cdsOrcamentopercentual: TFloatField;
    cdsOrcamentodesconto: TFloatField;
    cdsItenscodigo: TIntegerField;
    cdsItensfk_orcamento: TIntegerField;
    cdsItensfk_produto: TIntegerField;
    cdsItensqtd: TFloatField;
    cdsItenspreco: TFloatField;
    cdsItenstotal: TFloatField;
    cdsItensdescricao: TStringField;
    cdsNumerador: TUniQuery;
    cdsNumeradorcodigo: TIntegerField;
    cdsVendedor: TUniQuery;
    cdsVendedorcodigo: TIntegerField;
    cdsVendedornome: TStringField;
    qryVendedor: TFDQuery;
    qryVendedorcodigo: TIntegerField;
    qryVendedornome: TStringField;
    qryConfigura: TFDQuery;
    cdsOrcamentofk_vendedor: TIntegerField;
    qryOrcamentovirtual_vendedor: TStringField;
    qryUsuarios: TFDQuery;
    qryUsuarioscodigo: TFDAutoIncField;
    qryUsuariosusuario: TStringField;
    qryUsuariossenha: TStringField;
    qryUsuariosfk_vendedor: TIntegerField;
    qryUsuariosvendedor: TStringField;
    qryConfiguracodigo: TFDAutoIncField;
    qryConfiguraimpressora: TStringField;
    qryConfiguraservidor: TStringField;
    qryConfigurabanco: TStringField;
    qryConfigurausuario: TStringField;
    qryConfigurasenha: TStringField;
    qryConfiguraempresa: TStringField;
    qryConfiguraendereco: TStringField;
    qryConfiguracidade: TStringField;
    qryConfigurabairro: TStringField;
    qryConfiguracep: TStringField;
    qryConfiguratelefone: TStringField;
    qryConfiguratipo: TStringField;
    qryConfigurauf: TStringField;
    qryOrcamentoTTOTAL: TAggregateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryPessoaAfterPost(DataSet: TDataSet);
    procedure qryOrcamentoAfterPost(DataSet: TDataSet);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure qryConfigAfterPost(DataSet: TDataSet);
    procedure qryProdutoAfterPost(DataSet: TDataSet);
    procedure qryCidadeAfterPost(DataSet: TDataSet);
    procedure qryItemCalcFields(DataSet: TDataSet);
    procedure qryOrcamentoBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeInsert(DataSet: TDataSet);
    procedure qryOrcamentoCalcFields(DataSet: TDataSet);
    procedure qryOrcamentoBeforeDelete(DataSet: TDataSet);
    procedure qryConfiguraAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Padrao;
  public
    { Public declarations }
    sTela: string;
    function Numerador(Tabela, Campo, filtra, where, valor: String): Integer;
  end;

var
  Dados: TDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

function TDados.Numerador(Tabela, Campo, filtra, where, valor: String): Integer;
begin
  Result := 0;
  if filtra = 'N' then
  begin
    qryNumerador.Close;
    qryNumerador.SQL.Text := 'SELECT coalesce(MAX(' + Campo +
      '),0)MAIOR FROM ' + Tabela;
    qryNumerador.Open;
  end;
  if filtra = 'S' then
  begin
    qryNumerador.Close;
    qryNumerador.SQL.Text := 'SELECT coalesce(MAX(' + Campo + '),0)MAIOR FROM '
      + Tabela + ' WHERE ' + where + '=' + valor;
    qryNumerador.Open;
  end;
  Result := qryNumerador.Fields[0].Value + 1;
end;

procedure TDados.Padrao;
begin
  try
    qryConfigura.Close;
    qryConfigura.Open;
    if
      (qryConfiguraservidor.AsString = '') or
      (qryConfigurabanco.AsString = '') or
      (qryConfigurausuario.AsString = '') or
      (qryConfigurasenha.AsString = '')
    then
      begin
        if not (qryConfigura.State in [dsEdit, dsInsert]) then
          qryConfigura.Edit;
        qryConfiguraservidor.AsString :=  '';
        qryConfigurabanco.AsString    :=  '';
        qryConfigurausuario.AsString  :=  '';
        qryConfigurasenha.AsString    :=  '';
        qryConfigura.Post;
      end;
  except
  end;
end;

procedure TDados.qryCidadeAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.qryConfigAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.qryConfiguraAfterPost(DataSet: TDataSet);
begin
 conexao.CommitRetaining;
end;

procedure TDados.qryItemAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.qryItemBeforeInsert(DataSet: TDataSet);
begin
  if qryOrcamento.State in dsEditModes then
    qryOrcamento.Post;
end;

procedure TDados.qryItemCalcFields(DataSet: TDataSet);
begin
  qryItemvirtual_preco.Value := 'Preço: ' + FormatFloat(',0.00',
    qryItempreco.AsFloat);
  qryItemvirtual_qtd.Value := '  Qtd: ' + FormatFloat(',0.00',
    qryItemqtd.AsFloat);
  qryItemvirtual_total.Value := 'Total: ' + FormatFloat(',0.00',
    qryItemtotal.AsFloat);
end;

procedure TDados.qryOrcamentoAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.qryOrcamentoBeforeDelete(DataSet: TDataSet);
begin
  qryItem.First;
  while not qryItem.IsEmpty do
    qryItem.delete;
end;

procedure TDados.qryOrcamentoBeforePost(DataSet: TDataSet);
begin
  Dados.qryOrcamentototal.Value := Dados.qryOrcamentosubtotal.Value -
    Dados.qryOrcamentodesconto.Value;
end;

procedure TDados.qryOrcamentoCalcFields(DataSet: TDataSet);
begin
  qryOrcamentovirtual_numero.Value := 'Pedido nº ' +
    qryOrcamentocodigo.AsString;
  qryOrcamentovirtual_data.Value := 'DATA: ' + qryOrcamentodata.AsString;
  qryOrcamentovirtual_total.Value := 'TOTAL: ' + FormatFloat(',0.00',
    qryOrcamentototal.Value);
end;

procedure TDados.qryPessoaAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.qryProdutoAfterPost(DataSet: TDataSet);
begin
  conexao.CommitRetaining;
end;

procedure TDados.DataModuleCreate(Sender: TObject);
begin
  with conexao do
  begin
{$IFDEF IOS}
    Params.Values['DriverID'] := 'SQLite';
    try
      Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath,
        'Dados.db');
      Connected := true;
    except
      on e: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados ' +
          e.Message);
    end;
{$ENDIF}
{$IFDEF ANDROID}
    Params.Values['DriverID'] := 'SQLite';
    try
      Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath,
        'Dados.db');
      Connected := true;
      Padrao;
    except
      on e: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados ' +
          e.Message);
    end;
{$ENDIF}
{$IFDEF MSWINDOWS}
    Params.Values['DriverID'] := 'SQLite';
    try
      Params.Values['Database'] := 'C:\fontes gestor\GVenda\Final\Exec\Dados.db';
      Connected := true;
    except
      on e: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados ' +
          e.Message);
    end;
{$ENDIF}
  end;
end;

end.
