unit uDMSat;

interface

uses
  System.SysUtils, System.Classes, ACBrSATExtratoReportClass,
  ACBrSATMFe_integrador, pcnLeitor, vcl.Dialogs, vcl.Forms,
  ACBrSATExtratoFortesFr, ACBrDFeReport, ACBrSATExtratoClass, pcnVFPe,
  ACBrSATExtratoESCPOS, ACBrSAT, ACBrBase, ACBrPosPrinter, ACBrSATClass,
  ACBrIntegrador, pcnConversao, pcnConversaoNFe, acbrutil, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMSat = class(TDataModule)
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrIntegrador1: TACBrIntegrador;
    FDQuery1: TFDQuery;
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
  private
    procedure DiretoriosDeArquivos;
    function PathLog: String;
    function PathApp: String;
    function GetGUID: String;

    { Private declarations }
  public
    { Public declarations }
    procedure ConfiguraSAT;
    procedure ConfiguraImpressoraSAT;

    procedure EnviarPagamentoPOS(aChaveAcessoValidador: String;
      aEstabelecimento: String; aSerialPOS: String; aCNPJ: String;
      aTotalIcms: Extended; aTotalVenda: Extended; aOrigem: string);

    procedure EnviarPagamentoTEF(aVenda: Integer);

    procedure EnviaPagamentoTeste(aEmitente: String; aICMSBase: Extended;
      aTotalVenda: Extended);

    function GetErroMFe(const AXML: String): String;

  end;

var
  DMSat: TDMSat;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Udados, uDmNFe;
{$R *.dfm}

function TDMSat.PathApp: String;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) + 'CFe');

  if not DirectoryExists(Result) then
    ForceDirectories(Result);
end;

function TDMSat.PathLog: String;
begin

  Result := IncludeTrailingPathDelimiter(PathApp + 'Log');

  if not DirectoryExists(Result) then
    ForceDirectories(Result);
end;

function TDMSat.GetErroMFe(const AXML: String): String;
var
  LeitorXML: TLeitor;
begin
  if (pos('Erro', AXML) > 0) and (pos('Valor', AXML) > 0) then
  begin
    LeitorXML := TLeitor.Create;
    try
      LeitorXML.Arquivo := AXML;
      if LeitorXML.rExtrai(1, 'Valor') <> '' then
        Result := LeitorXML.rCampo(tcStr, 'Valor');
    finally
      LeitorXML.Free;
    end;
  end
  else
    Result := AXML;
end;

procedure TDMSat.EnviaPagamentoTeste(aEmitente: String; aICMSBase: Extended;
  aTotalVenda: Extended);
var
  PagamentoMFe: TEnviarPagamento;
  RespostaPagamentoMFe: TRespostaPagamento;
begin
  RespostaPagamentoMFe := Nil;
  PagamentoMFe := TEnviarPagamento.Create;
  try
    with PagamentoMFe do
    begin
      Clear;
      ChaveAcessoValidador := '25CFE38D-3B92-46C0-91CA-CFF751A82D3D';
      // Esta chave é Fixa, (Esta chave está definida no Manual Integrador Fiscal)
      ChaveRequisicao := '26359854-5698-1365-9856-965478231456';
      // Esta chave deve ser unica por requisição, deve-se gerar um GUID com a combinação: (Cód. Filial / Adquirinte ex:(Cielo) / ID ) - (Esta chave está definida no Manual Integrador Fiscal, para testes)
      Estabelecimento := '1';
      // Codigo do estabelecimento fornecido pela Adquirinte contratada, enquanto não estiver funcionando a integração deve informar valor fixo
      SerialPOS := InputBox('SerialPOS', 'Informe o Serial do POS',
        'ACBr-' + RandomName(8));
      // Como não existe este equipamento POS Integrado conforme previsão inicial da SEFAZ CE, está sendo informado o Numero serial do Equipamento POS, independente do Modelo utilizado. (Está gerando random para diversificar o código neste Demo )
      // Como não existe este equipamento POS Integrado conforme previsão inicial da SEFAZ CE, está sendo informado o Numero serial do Equipamento POS, independente do Modelo utilizado. (Está gerando random para diversificar o código neste Demo )
      CNPJ := aEmitente; // CNPJ do Contribuinte
      IcmsBase := aICMSBase; // Valor sujeito a legislação do ICMS
      ValorTotalVenda := aTotalVenda; // Valor total a ser cobrado
      HabilitarMultiplosPagamentos := True;
      // Opção para mais de uma forma de pagamento ou mais de um cartão
      HabilitarControleAntiFraude := False;
      // Será usado para validação de possíveis fraudes no pagamento
      CodigoMoeda := 'BRL'; // Formato da moeda
      EmitirCupomNFCE := False;
      // Usado Apenas para emissão de NFCe direto pelo equipamento POS
      OrigemPagamento := 'Mesa 1234'; // Descrição da origem do pagamento
    end;

    if ACBrSAT1.SAT is TACBrSATMFe_integrador_XML then
      RespostaPagamentoMFe := TACBrSATMFe_integrador_XML(ACBrSAT1.SAT)
        .EnviarPagamento(PagamentoMFe)
    else
      RespostaPagamentoMFe := ACBrIntegrador1.EnviarPagamento(PagamentoMFe);

    if Assigned(RespostaPagamentoMFe) then
    begin
      ShowMessage(RespostaPagamentoMFe.XML);
    end;

  finally
    PagamentoMFe.Free;
    if Assigned(RespostaPagamentoMFe) then
      RespostaPagamentoMFe.Free;
  end;
end;

procedure TDMSat.EnviarPagamentoTEF(aVenda: Integer);
var
  qryVendaTEF: TFDQuery;
  StatusPagamentoMFe: TStatusPagamento;
  RespostaStatusPagamento: TRespostaStatusPagamento;
begin

  try
    qryVendaTEF := TFDQuery.Create(self);
    qryVendaTEF.Connection := dados.Conexao;

    qryVendaTEF.Close;
    qryVendaTEF.SQL.Clear;
    qryVendaTEF.SQL.Text :=
      'SELECT * FROM VENDAS_FPG WHERE FEZ_TEF=''S'' AND VENDAS_MASTER=:VD';
    qryVendaTEF.Params[0].Value := aVenda;
    qryVendaTEF.Open;

    while not qryVendaTEF.Eof do
    begin

      try
        StatusPagamentoMFe := TStatusPagamento.Create;
        try
          with StatusPagamentoMFe do
          begin
            Clear;
            ChaveAcessoValidador := dados.qryConfigCODIGO_VINCULACAO.AsString;
            CodigoAutorizacao := qryVendaTEF.FieldByName
              ('CODIGOAUTORIZACAO').AsString;
            bin := qryVendaTEF.FieldByName('BIN').AsString;
            Donocartao := qryVendaTEF.FieldByName('DONOCARTAO').AsString;
            DataExpiracao := qryVendaTEF.FieldByName('DATAEXPIRACAO').AsString;
            InstituicaoFinanceira := qryVendaTEF.FieldByName('REDE').AsString;
            Parcelas := qryVendaTEF.FieldByName('PARCELAS').AsInteger;
            CodigoPagamento :=qryVendaTEF.FieldByName('CODIGOPAGAMENTO').AsString;
            ValorPagamento := qryVendaTEF.FieldByName('VALORPAGAMENTO').AsFloat;
            IDFILA := qryVendaTEF.FieldByName('ID_FILA').AsInteger;
            Tipo := qryVendaTEF.FieldByName('TIPO_TEF').AsString;
            UltimosQuatroDigitos := qryVendaTEF.FieldByName('ULTIMOSQUATRODIGITOS').AsInteger;
          end;

          if ACBrSAT1.SAT is TACBrSATMFe_integrador_XML then
            RespostaStatusPagamento := TACBrSATMFe_integrador_XML(ACBrSAT1.SAT)
              .EnviarStatusPagamento(StatusPagamentoMFe)
          else
            RespostaStatusPagamento := ACBrIntegrador1.EnviarStatusPagamento
              (StatusPagamentoMFe);

        finally
          StatusPagamentoMFe.Free;
        end;
      except
        raise Exception.Create(self.GetErroMFe(ACBrIntegrador1.ErroResposta));
      end;
      qryVendaTEF.Next;
    end;
  finally
    qryVendaTEF.Free;
  end;
end;

procedure TDMSat.EnviarPagamentoPOS(aChaveAcessoValidador: String;
  aEstabelecimento: String; aSerialPOS: String; aCNPJ: String;
  aTotalIcms: Extended; aTotalVenda: Extended; aOrigem: string);
var
  PagamentoMFe: TEnviarPagamento;
  RespostaPagamentoMFe: TRespostaPagamento;
begin
  RespostaPagamentoMFe := Nil;
  PagamentoMFe := TEnviarPagamento.Create;
  try
    with PagamentoMFe do
    begin
      Clear;
      ChaveAcessoValidador := aChaveAcessoValidador;
      ChaveRequisicao := GetGUID;
      Estabelecimento := aEstabelecimento;
      SerialPOS := aSerialPOS;
      CNPJ := aCNPJ;
      IcmsBase := aTotalIcms;
      ValorTotalVenda := aTotalVenda;
      HabilitarMultiplosPagamentos := True;
      HabilitarControleAntiFraude := False;
      CodigoMoeda := 'BRL';
      // Formato da moeda
      EmitirCupomNFCE := False;
      OrigemPagamento := 'Caixa ' + aOrigem;
      // Descrição da origem do pagamento
    end;

    if ACBrSAT1.SAT is TACBrSATMFe_integrador_XML then
      RespostaPagamentoMFe := TACBrSATMFe_integrador_XML(ACBrSAT1.SAT)
        .EnviarPagamento(PagamentoMFe)
    else
      RespostaPagamentoMFe := ACBrIntegrador1.EnviarPagamento(PagamentoMFe);

    if ACBrIntegrador1.ErroResposta <> '' then
      raise Exception.Create(self.GetErroMFe(ACBrIntegrador1.ErroResposta));

  finally
    PagamentoMFe.Free;
    if Assigned(RespostaPagamentoMFe) then
      RespostaPagamentoMFe.Free;
  end;
end;

function TDMSat.GetGUID: String;
var
  G: TGUID;
begin
  if CreateGuid(G) = S_OK then
    Result := GUIDToString(G)
  else
    Result := EmptyStr;
end;

procedure TDMSat.DiretoriosDeArquivos;
begin

  if not DirectoryExists(PathLog) then
    ForceDirectories(PathLog);

  ACBrSAT1.ArqLOG := PathLog + FormatDateTime('"SAT_"yyyymmdd".TXT"', DATE);
  ACBrPosPrinter1.ArqLOG := PathLog + FormatDateTime
    ('"POSPRINTER_"yyyymmdd".TXT"', DATE);
end;

procedure TDMSat.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := AnsiString(dados.qryConfigCODIGO_ATIVACAO.Value);
end;

procedure TDMSat.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := AnsiString(dados.qryConfigCODIGO_VINCULACAO.AsString);
end;

procedure TDMSat.ConfiguraSAT;

begin
  dados.qryconsulta.Close;
  dados.qryconsulta.SQL.Text :=
    'select CONTINGENCIA,PORTA,MODELO,NVIAS,IMPRIME,USAGAVETA,VELOCIDADE from VENDAS_TERMINAIS where NOME='
    + QuotedStr(dados.Getcomputer);
  dados.qryconsulta.Open;

  DiretoriosDeArquivos;

  dados.qryConfig.Close;
  dados.qryConfig.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  dados.qryConfig.Open;

  if dados.qryConfig.IsEmpty then
    raise Exception.Create
      ('Módulo DF-e ainda não foi configurado, impossível continuar!');

  if not dados.qryConfig.IsEmpty then
  begin

    if dados.qryTerminalTIPO_SAT_DLL.Value = 'satNenhum' then
      ACBrSAT1.Modelo := TACBrSATModelo(satNenhum);

    if dados.qryTerminalTIPO_SAT_DLL.Value = 'satDinamico_cdecl' then
      ACBrSAT1.Modelo := TACBrSATModelo(satDinamico_cdecl);

    if dados.qryTerminalTIPO_SAT_DLL.Value = 'satDinamico_stdcall' then
      ACBrSAT1.Modelo := TACBrSATModelo(satDinamico_stdcall);

    if dados.qryTerminalTIPO_SAT_DLL.Value = 'mfe_Integrador_XML' then
      ACBrSAT1.Modelo := TACBrSATModelo(mfe_Integrador_XML);

    ACBrSAT1.NomeDLL := dados.qryTerminalCAMINHO_SAT_DLL.Value;
    ACBrSAT1.ArqLOG := 'ACBRLOG.TXT';

    ACBrSAT1.Config.ide_numeroCaixa := dados.idCaixa;
    ACBrSAT1.Config.ide_CNPJ := TiraPontos(dados.qryParametroCNPJ.AsString);
    ACBrSAT1.Config.emit_CNPJ := TiraPontos(dados.qryEmpresaCNPJ.AsString);
    ACBrSAT1.Config.emit_IE := TiraPontos(dados.qryEmpresaIE.AsString);
    ACBrSAT1.Config.emit_IM := TiraPontos(dados.qryEmpresaIM.AsString);
    ACBrSAT1.Config.emit_cRegTribISSQN := RTISSMicroempresaMunicipal;
    ACBrSAT1.Config.emit_indRatISSQN := irSim;
    ACBrSAT1.Config.PaginaDeCodigo := 0;
    ACBrSAT1.Config.EhUTF8 := False;
    ACBrSAT1.Config.infCFe_versaoDadosEnt :=
      StrToFloatDef(dados.qryConfigCFE_VERSAO.AsString, 0.07);

    if dados.qryConfigAMBIENTE.Value = 0 then
      ACBrSAT1.Config.ide_tpAmb := taProducao
    else
      ACBrSAT1.Config.ide_tpAmb := taHomologacao;

    if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
    begin

      case pos('S', (dados.qryTerminalMODELO_SAT_DLL.Value)) of
        1:
          begin
            ACBrSAT1.Config.ide_CNPJ := '11111111111111';
            ACBrSAT1.Config.emit_IE := '111111111111';
            ACBrSAT1.Config.emit_CNPJ := '11111111111111';
          end;
      end;
    end;

    case dados.qryEmpresaCRT.AsInteger of
      1:
        ACBrSAT1.Config.emit_cRegTrib := RTSimplesNacional;
      2:
        ACBrSAT1.Config.emit_cRegTrib := RTSimplesNacional;
      3:
        ACBrSAT1.Config.emit_cRegTrib := RTRegimeNormal;
    end;

    ACBrSAT1.Config.ArqSchema := dados.qryConfigPASTA_CFE_SCHEMA.AsString;
    ACBrSAT1.ConfigArquivos.PastaCFeVenda :=
      dados.qryConfigPASTA_CFE_VENDA.AsString;
    ACBrSAT1.ConfigArquivos.PastaCFeCancelamento :=
      dados.qryConfigPASTA_CFE_CANCELAMENTO.AsString;
    ACBrSAT1.ConfigArquivos.PastaEnvio :=
      dados.qryConfigPASTA_CFE_ENVIO.AsString;

    if dados.qryTerminalTIPO_SAT_DLL.Value = 'mfe_Integrador_XML' then
    begin
      ACBrIntegrador1.PastaInput := dados.qryConfigMFE_INPUT.AsString;
      ACBrIntegrador1.PastaOutput := dados.qryConfigMFE_OUTPUT.AsString;
      ACBrIntegrador1.Timeout := 10;
      ACBrSAT1.Integrador := ACBrIntegrador1;

    end
    else
      ACBrSAT1.Integrador := nil;

    // ACBrSAT1.CFe.IdentarXML := False;
    // ACBrSAT1.CFe.TamanhoIdentacao := 1;

  end;
  ConfiguraImpressoraSAT;

end;

procedure TDMSat.ConfiguraImpressoraSAT;
begin
  // configurações impressão escpos
  if dados.qryTerminalTIPOIMPRESSORA.AsString = '1' then
  begin
    ACBrSAT1.Extrato := ACBrSATExtratoFortes1;
    ACBrSATExtratoFortes1.Impressora := dados.qryTerminalPORTA.Value;
  end
  else
  begin
    ACBrSAT1.Extrato := ACBrSATExtratoESCPOS1;
    ACBrPosPrinter1.EspacoEntreLinhas :=
      dados.qryTerminalESPACO_ENTRE_LINHAS.AsInteger;
    ACBrPosPrinter1.LinhasEntreCupons :=
      dados.qryTerminalLINHAS_ENTRE_CUPOM.AsInteger;
    ACBrPosPrinter1.ColunasFonteNormal :=
      StrToIntDef(dados.qryTerminalCOLUNAS.AsString, 42);
    ACBrSATExtratoESCPOS1.MargemDireita :=
      dados.qryTerminalMARGEM_DIREITA.AsFloat;
    ACBrSATExtratoESCPOS1.MargemEsquerda :=
      dados.qryTerminalMARGEM_ESQUERDA.AsFloat;
    ACBrSATExtratoESCPOS1.MargemInferior :=
      dados.qryTerminalMARGEM_INFERIOR.AsFloat;
    ACBrSATExtratoESCPOS1.MargemSuperior :=
      dados.qryTerminalMARGEM_SUPERIOR.AsFloat;
    ACBrPosPrinter1.Porta := LowerCase(dados.qryTerminal.FieldByName('PORTA')
      .AsString);
    ACBrPosPrinter1.Device.Baud := dados.qryTerminalVELOCIDADE.Value;
    if dados.qryTerminal.FieldByName('MODELO').Value = 'DARUMA' then
      ACBrPosPrinter1.Modelo := ppEscDaruma
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'BEMATECH' then
      ACBrPosPrinter1.Modelo := ppEscBematech
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'ELGIN' then
      ACBrPosPrinter1.Modelo := ppEscPosEpson
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'DIEBOLD' then
      ACBrPosPrinter1.Modelo := ppEscDiebold
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'EPSON' then
      ACBrPosPrinter1.Modelo := ppEscPosEpson
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'VOX' then
      ACBrPosPrinter1.Modelo := ppEscVox
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'POSSTAR' then
      ACBrPosPrinter1.Modelo := ppEscPosStar
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'JIANG' then
      ACBrPosPrinter1.Modelo := ppEscZJiang
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'GPRINTER' then
      ACBrPosPrinter1.Modelo := ppEscGPrinter
    else if dados.qryTerminal.FieldByName('MODELO').Value = 'EPSONP2' then
      ACBrPosPrinter1.Modelo := ppEscEpsonP2
    else
      ACBrPosPrinter1.Modelo := ppTexto;
    ACBrPosPrinter1.Ativar;
  end;
  ACBrSAT1.Extrato.Sistema := dados.qryParametroEMPRESA.Value;
  ACBrSAT1.Extrato.ImprimeDescAcrescItem := False;
  ACBrSAT1.Extrato.ImprimeCodigoEan := True;
  if FilesExists(dados.qryConfigLOGOMARCA.AsString) then
    ACBrSAT1.Extrato.Logo := dados.qryConfigLOGOMARCA.AsString;
  ACBrSAT1.Extrato.Site := dados.qryEmpresaSITE.AsString;
  ACBrSAT1.Extrato.Email := dados.qryEmpresaEMAIL.AsString;
end;

end.
