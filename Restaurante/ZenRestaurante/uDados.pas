unit uDados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXCommon, inifiles,
  IPPeerClient, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, System.IoUtils,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Data.DBXDataSnap,
  Datasnap.DSConnect, FireDAC.Phys.SQLiteWrapper.Stat;

type

  TVenda = Record
    FCODIGO: integer;
    FDATA_EMISSAO: TDate;
    FDATA_SAIDA: TDate;
    FID_CLIENTE: integer;
    FFK_USUARIO: integer;
    FFK_CAIXA: integer;
    FFK_VENDEDOR: integer;
    FCPF_NOTA: string;
    FSUBTOTAL: Currency;
    FTIPO_DESCONTO: string;
    FDESCONTO: Currency;
    FTROCO: Currency;
    FDINHEIRO: Currency;
    FTOTAL: Currency;
    FSITUACAO: string;
    FFKEMPRESA: integer;
    FPERCENTUAL: Currency;
    FTIPO: string;
    FNECF: integer;
    FFKORCAMENTO: integer;
    FLOTE: integer;
    FGERA_FINANCEIRO: String;
    FPERCENTUAL_ACRESCIMO: Currency;
    FACRESCIMO: Currency;
    FFK_TABELA: integer;
    FPEDIDO: string;
    FOS: string;
    FFK_OS: integer;
    FTOTAL_TROCA: Currency;
    FFORMA_PAGAMENTO: String;
    FFK_ENTREGADOR: integer;
    FFLAG_NFCE: string;
    FFK_MESA: integer;
    FNOME: string;
    FTELA: string;
  public
    function Insere(FMesa: integer): integer;
    procedure Apaga;
    procedure Visualiza;
    procedure AtualizaVendaMesa(aMesa, aVenda: integer);
    procedure Abre(aCodigo: integer);

  End;

  TITEM = Record
    FCODIGO: integer;
    FFKVENDA: integer;
    FID_PRODUTO: integer;
    FITEM: integer;
    FCOD_BARRA: STRING;
    FDESCRICAO: STRING;
    FQTD: Currency;
    FE_MEDIO: Currency;
    FPRECO: Currency;
    FVALOR_ITEM: Currency;
    FVDESCONTO: Currency;
    FTOTAL: Currency;
    FSITUACAO: STRING;
    FUNIDADE: STRING;
    FACRESCIMO: Currency;
    FFK_MESA: integer;
    FOBSERVACAO: STRING;
    procedure Abre(aVenda: integer);
    procedure Insere;
    procedure Edita;
    Procedure Apaga;
  End;

  TDados = class(TDataModule)
    SQLCon: TSQLConnection;
    dspCon1: TDSProviderConnection;
    cdsMesas: TClientDataSet;
    cdsUsuarios: TClientDataSet;
    cdsVendas: TClientDataSet;
    cdsDetalhes: TClientDataSet;
    cdsMesasCODIGO: TIntegerField;
    cdsMesasSITUACAO: TStringField;
    cdsMesasTOTAL: TSingleField;
    cdsMesasFK_EMPRESA: TIntegerField;
    cdsMesasFK_VENDA: TIntegerField;
    cdsUsuariosCODIGO: TSmallintField;
    cdsUsuariosLOGIN: TStringField;
    cdsVendasCODIGO: TIntegerField;
    cdsVendasDATA_EMISSAO: TDateField;
    cdsVendasDATA_SAIDA: TDateField;
    cdsVendasID_CLIENTE: TIntegerField;
    cdsVendasFK_USUARIO: TIntegerField;
    cdsVendasFK_CAIXA: TIntegerField;
    cdsVendasFK_VENDEDOR: TIntegerField;
    cdsVendasCPF_NOTA: TStringField;
    cdsVendasSUBTOTAL: TFMTBCDField;
    cdsVendasTIPO_DESCONTO: TStringField;
    cdsVendasDESCONTO: TFMTBCDField;
    cdsVendasTROCO: TFMTBCDField;
    cdsVendasDINHEIRO: TFMTBCDField;
    cdsVendasTOTAL: TFMTBCDField;
    cdsVendasOBSERVACOES: TMemoField;
    cdsVendasSITUACAO: TStringField;
    cdsVendasFKEMPRESA: TIntegerField;
    cdsVendasPERCENTUAL: TFMTBCDField;
    cdsVendasTIPO: TStringField;
    cdsVendasNECF: TIntegerField;
    cdsVendasFKORCAMENTO: TIntegerField;
    cdsVendasLOTE: TIntegerField;
    cdsVendasGERA_FINANCEIRO: TStringField;
    cdsVendasPERCENTUAL_ACRESCIMO: TFMTBCDField;
    cdsVendasACRESCIMO: TFMTBCDField;
    cdsVendasFK_TABELA: TIntegerField;
    cdsVendasPEDIDO: TStringField;
    cdsVendasOS: TStringField;
    cdsVendasFK_OS: TIntegerField;
    cdsVendasTOTAL_TROCA: TFMTBCDField;
    cdsVendasFORMA_PAGAMENTO: TStringField;
    cdsVendasFK_ENTREGADOR: TIntegerField;
    cdsVendasFLAG_NFCE: TStringField;
    cdsVendasFK_MESA: TIntegerField;
    cdsVendasNOME: TStringField;
    cdsVendasTELA: TStringField;
    cdsDetalhesCODIGO: TIntegerField;
    cdsDetalhesFKVENDA: TIntegerField;
    cdsDetalhesID_PRODUTO: TIntegerField;
    cdsDetalhesITEM: TSmallintField;
    cdsDetalhesCOD_BARRA: TStringField;
    cdsDetalhesQTD: TFMTBCDField;
    cdsDetalhesE_MEDIO: TFMTBCDField;
    cdsDetalhesPRECO: TFMTBCDField;
    cdsDetalhesVALOR_ITEM: TFMTBCDField;
    cdsDetalhesVDESCONTO: TFMTBCDField;
    cdsDetalhesTOTAL: TFMTBCDField;
    cdsDetalhesSITUACAO: TStringField;
    cdsDetalhesUNIDADE: TStringField;
    cdsDetalhesQTD_DEVOLVIDA: TFMTBCDField;
    cdsDetalhesACRESCIMO: TFMTBCDField;
    cdsDetalhesOS: TStringField;
    cdsDetalhesFK_GRADE: TIntegerField;
    cdsDetalhesID_PRODUTO_SIMILAR: TIntegerField;
    cdsDetalhesID_SERIAL: TIntegerField;
    cdsDetalhesFK_MESA: TIntegerField;
    cdsDetalhesQTD_RESTANTE: TFMTBCDField;
    cdsDetalhesOBSERVACAO: TStringField;
    conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDQLite: TFDPhysSQLiteDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryConfigura: TFDQuery;
    qryConfiguracodigo: TFDAutoIncField;
    qryConfiguraip: TStringField;
    qryConfigurausuario: TStringField;
    qryConfigurasenha: TStringField;
    qryConfigurausabluetooth: TStringField;
    qryImpressora: TFDQuery;
    qryImpressoraid: TFDAutoIncField;
    qryImpressoradescricao: TStringField;
    qryImpressoratipo: TStringField;
    qryImpressoraativo: TStringField;
    qryImpressoravias: TStringField;
    cdsMesasVIRTUAL_MESA: TStringField;
    cdsMesasVIRTUAL_SITUACAO: TStringField;
    cdsMaiorVenda: TClientDataSet;
    cdsMaiorItem: TClientDataSet;
    cdsProdutos: TClientDataSet;
    cdsProdutosCODIGO: TIntegerField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosPR_VENDA: TFMTBCDField;
    cdsProdutosQTD_ATUAL: TFMTBCDField;
    cdsProdutosUNIDADE: TStringField;
    cdsProdutosCOMPLEMENTO: TStringField;
    cdsDetalhesVIRTUAL_DESCRICAO: TStringField;
    cdsDetalhesDESCRICAO: TStringField;
    cdsMaiorDetalhe: TClientDataSet;
    cdsMaiorItemCODIGO: TSmallintField;
    cdsMaiorVendaCODIGO: TIntegerField;
    cdsMaiorDetalheCODIGO: TIntegerField;
    cdsDetalhesTTOTAL: TAggregateField;
    cdsOrigem: TClientDataSet;
    cdsDestino: TClientDataSet;
    cdsOrigemDESCRICAO: TStringField;
    cdsDestinoDESCRICAO: TStringField;
    cdsExecute: TClientDataSet;
    cdsDestinoCODIGO: TIntegerField;
    cdsOrigemCODIGO: TIntegerField;
    cdsOrigemFK_VENDA: TIntegerField;
    cdsDestinoFK_VENDA: TIntegerField;
    cdsUsuariosSENHA_APP: TStringField;
    cdsUsuariosFK_VENDEDOR: TIntegerField;
    cdsItensO: TClientDataSet;
    cdsItensD: TClientDataSet;
    cdsItensOCODIGO: TIntegerField;
    cdsItensOFKVENDA: TIntegerField;
    cdsItensOID_PRODUTO: TIntegerField;
    cdsItensOITEM: TSmallintField;
    cdsItensOCOD_BARRA: TStringField;
    cdsItensOQTD: TFMTBCDField;
    cdsItensOE_MEDIO: TFMTBCDField;
    cdsItensOPRECO: TFMTBCDField;
    cdsItensOVALOR_ITEM: TFMTBCDField;
    cdsItensOVDESCONTO: TFMTBCDField;
    cdsItensOTOTAL: TFMTBCDField;
    cdsItensOSITUACAO: TStringField;
    cdsItensOUNIDADE: TStringField;
    cdsItensOQTD_DEVOLVIDA: TFMTBCDField;
    cdsItensOACRESCIMO: TFMTBCDField;
    cdsItensOOS: TStringField;
    cdsItensOFK_GRADE: TIntegerField;
    cdsItensOID_PRODUTO_SIMILAR: TIntegerField;
    cdsItensOID_SERIAL: TIntegerField;
    cdsItensOFK_MESA: TIntegerField;
    cdsItensOQTD_RESTANTE: TFMTBCDField;
    cdsItensOOBSERVACAO: TStringField;
    cdsItensOCOMPOSICAO: TStringField;
    cdsItensOMOV_ES: TStringField;
    cdsItensOOPERACAO: TStringField;
    cdsItensOSABORES: TStringField;
    cdsItensDITEM: TSmallintField;
    cdsTaxa: TClientDataSet;
    cdsTaxaTIPO: TIntegerField;
    cdsTaxaID: TIntegerField;
    cdsTaxaDESCRICAO: TStringField;
    cdsTaxaTAXA: TFMTBCDField;

    procedure DataModuleCreate(Sender: TObject);
    procedure cdsMesasCalcFields(DataSet: TDataSet);
    procedure cdsDetalhesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idUsuario: integer;
    idVendedor: integer;

    sTela: string;
    eCod: integer;
    FVenda: TVenda;
    FITEM: TITEM;
    procedure AtualizaMesa(FMesa: integer);
    function Crypt(Action, Src: String): String;
  end;

var
  Dados: TDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TDados.cdsDetalhesCalcFields(DataSet: TDataSet);
begin
  cdsDetalhesVIRTUAL_DESCRICAO.AsString := 'Preço:' +
    FormatFloat('0.00', Dados.cdsDetalhesPRECO.AsFloat) + ' Qtd:' +
    Dados.cdsDetalhesQTD.AsString + ' Total:' + FormatFloat('0.00',
    Dados.cdsDetalhesVALOR_ITEM.AsFloat);
end;

procedure TDados.cdsMesasCalcFields(DataSet: TDataSet);
begin
  cdsMesasVIRTUAL_MESA.AsString := 'MESA ' + cdsMesasCODIGO.AsString;
  if cdsMesasSITUACAO.Value = 'L' then
    cdsMesasVIRTUAL_SITUACAO.AsString := 'LIVRE';
  if cdsMesasSITUACAO.Value = 'O' then
    cdsMesasVIRTUAL_SITUACAO.AsString := 'OCUPADA';

end;

function TDados.Crypt(Action, Src: String): String;
Label Fim;
var
  KeyLen: integer;
  KeyPos: integer;
  OffSet: integer;
  Dest, Key, KeyNew: String;
  SrcPos: integer;
  SrcAsc: integer;
  TmpSrcAsc: integer;
  Range: integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;

  Key := 'XNGREXCPAJHKQWERYTUIOP98756LKJHASFGMNBVCAXZ13450';

  KeyNew := 'PRODOXCPAJHKQWERYTUIOP98765LKJHASFGMNBVCAXZ01234';

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 128;
  if (Action = UpperCase('C')) then
  begin
    // Randomize;
    OffSet := Range;
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      // Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

procedure TDados.DataModuleCreate(Sender: TObject);
begin
  with conexao do
  begin
{$IFDEF IOS}
    Params.Values['DriverID'] := 'SQLite';
    try
      Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath,
        'dados.db');
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
        'dados.db');
      Connected := true;
    except
      on e: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados ' +
          e.Message);
    end;
{$ENDIF}
{$IFDEF MSWINDOWS}
    Params.Values['DriverID'] := 'SQLite';
    try
      Params.Values['Database'] :=
        'C:\Dev\Projetos\Prodo\Restaurante\GRestaurante\Dados\Dados.db';
      Connected := true;
    except
      on e: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados ' +
          e.Message);
    end;
{$ENDIF}
  end;
end;

{ TVenda }

procedure TVenda.Abre(aCodigo: integer);
begin
  Dados.cdsVendas.Close;
  Dados.cdsVendas.Params[0].Value := aCodigo;
  Dados.cdsVendas.Open;
end;

procedure TVenda.Apaga;
begin

end;

function TVenda.Insere(FMesa: integer): integer;
var
  aCodigo: integer;
begin

  Dados.cdsMaiorVenda.Close;
  Dados.cdsMaiorVenda.Open;

  with Dados.cdsVendas do
  begin
    Insert;
    FieldByName('DATA_EMISSAO').AsDateTime := DATE;
    FieldByName('DATA_SAIDA').AsDateTime := DATE;
    FieldByName('ID_CLIENTE').AsInteger := 1;
    FieldByName('FK_USUARIO').AsInteger := Dados.idUsuario;
    FieldByName('FK_CAIXA').AsInteger := 0;
    FieldByName('FK_VENDEDOR').AsInteger := Dados.idVendedor;
    FieldByName('CPF_NOTA').AsString := '';
    FieldByName('SUBTOTAL').AsFloat := 0;
    FieldByName('TIPO_DESCONTO').AsString := 'D';
    FieldByName('DESCONTO').AsFloat := 0;
    FieldByName('TROCO').AsFloat := 0;
    FieldByName('DINHEIRO').AsFloat := 0;
    FieldByName('TOTAL').AsFloat := 0;
    FieldByName('SITUACAO').AsString := 'X';
    FieldByName('FKEMPRESA').AsInteger := 1;
    FieldByName('PERCENTUAL').AsFloat := 0;
    FieldByName('TIPO').AsString := 'P';
    FieldByName('LOTE').AsInteger := 0;
    FieldByName('PERCENTUAL_ACRESCIMO').AsFloat := 0;
    FieldByName('ACRESCIMO').AsFloat := 0;
    FieldByName('TOTAL_TROCA').AsFloat := 0;
    FieldByName('FORMA_PAGAMENTO').AsString := '';
    FieldByName('FK_MESA').AsInteger := FMesa;
    FieldByName('NOME').AsString := '';
    FieldByName('TELA').AsString := 'RESTAURANTE';
    aCodigo := Dados.cdsMaiorVendaCODIGO.AsInteger + 1;
    FieldByName('CODIGO').AsInteger := aCodigo;
    Post;
    Dados.cdsVendas.ApplyUpdates(0);

    Result := aCodigo;

    AtualizaVendaMesa(FMesa, aCodigo)
  end;

end;

procedure TVenda.Visualiza;
begin
  //
end;

{ TITEM }

procedure TITEM.Abre(aVenda: integer);
begin
  Dados.cdsDetalhes.Close;
  Dados.cdsDetalhes.Params[0].Value := aVenda;
  Dados.cdsDetalhes.Open;
end;

procedure TITEM.Apaga;
begin
  if not Dados.cdsDetalhes.IsEmpty then
  begin
    Dados.cdsDetalhes.Delete;
    Dados.cdsDetalhes.ApplyUpdates(0);
  end;
end;

procedure TITEM.Edita;
begin
  Dados.cdsDetalhes.Edit;
  Dados.cdsDetalhesQTD.AsFloat := FQTD;
  Dados.cdsDetalhesPRECO.AsFloat := FPRECO;
  Dados.cdsDetalhesVALOR_ITEM.AsFloat := FVALOR_ITEM;
  Dados.cdsDetalhes.Post;
  Dados.cdsDetalhes.ApplyUpdates(0);
end;

procedure TITEM.Insere;
begin
  Dados.cdsDetalhes.Insert;
  Dados.cdsDetalhesCODIGO.AsInteger := Dados.cdsMaiorDetalheCODIGO.Value + 1;
  Dados.cdsDetalhesITEM.AsInteger := Dados.cdsMaiorItemCODIGO.Value + 1;
  Dados.cdsDetalhesFKVENDA.AsInteger := FFKVENDA;
  Dados.cdsDetalhesID_PRODUTO.AsInteger := FID_PRODUTO;
  Dados.cdsDetalhesFK_MESA.AsInteger := FFK_MESA;
  Dados.cdsDetalhesQTD.AsFloat := FQTD;
  Dados.cdsDetalhesPRECO.AsFloat := FPRECO;
  Dados.cdsDetalhesVALOR_ITEM.AsFloat := FVALOR_ITEM;
  Dados.cdsDetalhesSITUACAO.AsString := 'X';
  Dados.cdsDetalhesOBSERVACAO.AsString := FOBSERVACAO;
  Dados.cdsDetalhesTOTAL.AsFloat := FVALOR_ITEM;
  Dados.cdsDetalhesOS.AsString := 'N';
  Dados.cdsDetalhesVDESCONTO.AsFloat := 0;
  Dados.cdsDetalhesQTD_DEVOLVIDA.AsFloat := 0;
  Dados.cdsDetalhesUNIDADE.AsString := 'UN';
  Dados.cdsDetalhesE_MEDIO.AsFloat := 0;
  Dados.cdsDetalhesACRESCIMO.AsFloat := 0;
  Dados.cdsDetalhes.Post;
  Dados.cdsDetalhes.ApplyUpdates(0);
end;

procedure TVenda.AtualizaVendaMesa(aMesa: integer; aVenda: integer);
begin
  if Dados.cdsMesas.Locate('CODIGO', aMesa, []) then
  begin
    Dados.cdsMesas.Edit;
    Dados.cdsMesasFK_VENDA.Value := aVenda;
    Dados.cdsMesas.Post;
    Dados.cdsMesas.ApplyUpdates(0);
  end;
end;

procedure TDados.AtualizaMesa(FMesa: integer);
var
  aCodigo: integer;
begin
  if Dados.cdsMesasSITUACAO.Value = 'L' then
  begin
    with Dados do
    begin
      cdsMesas.Edit;
      cdsMesasSITUACAO.Value := 'O';
      cdsMesas.Post;
      cdsMesas.ApplyUpdates(0);
    end;
    FVenda.Abre(-1);
    aCodigo := FVenda.Insere(FMesa);
    FVenda.Abre(aCodigo);
    FITEM.Abre(aCodigo);
  end
  else
  begin
    if Dados.cdsMesasFK_VENDA.AsInteger > 0 then
    begin
      FVenda.Abre(Dados.cdsMesasFK_VENDA.AsInteger);
      FITEM.Abre(Dados.cdsMesasFK_VENDA.AsInteger);
    end
    else
    begin
      FVenda.Abre(0);
      aCodigo := FVenda.Insere(FMesa);
      FITEM.Abre(aCodigo);

    end;
  end;
end;

end.
