unit ufrmRETORNOmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.DBCtrls, JvDBControls, JvLabel, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvExControls, JvSpeedButton,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvHint, JvExExtCtrls, JvImage,
  JvExStdCtrls, JvGroupBox, ACBrBoleto, Vcl.FileCtrl, ACBrEAD, JvComCtrls,
  JvRadioButton, Vcl.Tabs, Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfrmRETORNOmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_CBR_RETORNO: TLargeintField;
    qryDefaultDTHORA_PROCESSAMENTO: TSQLTimeStampField;
    qryDefaultARQUIVO: TMemoField;
    qryDefaultARQUIVO_NOME: TStringField;
    qryDefaultARQUIVO_DATA: TSQLTimeStampField;
    qryDefaultARQUIVO_LOCAL: TStringField;
    insCBR_RETORNO: TFDQuery;
    flbListaArquivos: TFileListBox;
    qryDefaultARQUIVO_MD5: TStringField;
    locCTR_RETORNO_LOCATE: TFDQuery;
    locCTR_RETORNO_LOCATEID_EMPRESA: TIntegerField;
    locCTR_RETORNO_LOCATEID_CBR_RETORNO: TLargeintField;
    locCTR_RETORNO_LOCATEDTHORA_PROCESSAMENTO: TSQLTimeStampField;
    locCTR_RETORNO_LOCATEARQUIVO: TMemoField;
    locCTR_RETORNO_LOCATEARQUIVO_NOME: TStringField;
    locCTR_RETORNO_LOCATEARQUIVO_DATA: TSQLTimeStampField;
    locCTR_RETORNO_LOCATEARQUIVO_LOCAL: TStringField;
    locCTR_RETORNO_LOCATEARQUIVO_MD5: TStringField;
    qryDefaultDTHORA_ARQUIVAMENTO: TSQLTimeStampField;
    qryDefaultSITUACAO: TSmallintField;
    qryDefaultSITUACAO_DESCRICAO: TStringField;
    qryDefaultARQUIVO_NUMERO: TIntegerField;
    qryDefaultDTHORA_CADASTRO: TSQLTimeStampField;
    insCBR_RETORNO_TITULOS: TFDQuery;
    qryDefaultARQUIVO_QUANT_TITULOS: TIntegerField;
    qryTMP: TFDQuery;
    updLIQUIDA_TITULO: TFDQuery;
    qryDefaultTITULOS: TFDQuery;
    pagDefault: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    dtsqryDefaultTITULOS: TDataSource;
    qryDefaultTITULOSARQUIVO_LOCAL: TStringField;
    qryDefaultTITULOSARQUIVO_NOME: TStringField;
    qryDefaultTITULOSID_EMPRESA: TIntegerField;
    qryDefaultTITULOSID_CBR_RETORNO: TLargeintField;
    qryDefaultTITULOSID_CBR_RETORNO_TITULOS: TLargeintField;
    qryDefaultTITULOSTITULO: TLargeintField;
    qryDefaultTITULOSTITULO_LOCALIZADO: TStringField;
    qryDefaultTITULOSTITULO_JALIQUIDADO: TStringField;
    qryDefaultTITULOSTITULO_SEMREGISTRO: TStringField;
    qryDefaultTITULOSTITULO_LIQUIDADO_LIMITEP: TStringField;
    qryDefaultTITULOSTITULO_RECUSADO: TStringField;
    qryDefaultTITULOSSEU_NUMERO: TStringField;
    qryDefaultTITULOSNOSSO_NUMERO: TStringField;
    qryDefaultTITULOSVALOR_DOCUMENTO: TFMTBCDField;
    qryDefaultTITULOSVALOR_PAGO: TFMTBCDField;
    qryDefaultTITULOSVALOR_RECEBIDO: TFMTBCDField;
    qryDefaultTITULOSVALOR_JUROS: TFMTBCDField;
    qryDefaultTITULOSVALOR_DESCONTO: TFMTBCDField;
    qryDefaultTITULOSVALOR_DESPESA: TFMTBCDField;
    qryDefaultTITULOSDATA_OCORRENCIA: TDateField;
    qryDefaultTITULOSID_BANCO: TStringField;
    qryDefaultTITULOSID_AGENCIA: TStringField;
    qryDefaultTITULOSORIGEM: TStringField;
    qryDefaultTITULOSFORMA_PAGAMENTO: TStringField;
    qryDefaultTITULOSTIPO_OCORRENCIA: TIntegerField;
    qryDefaultTITULOSTIPO_OCORRENCIA_DESC: TStringField;
    qryDefaultTITULOSMOT_REJ_COMANDO: TStringField;
    qryDefaultTITULOSMOT_REJ_COMANDO_DESC: TStringField;
    qryDefaultTITULOSHISTORICO: TStringField;
    qryDefaultTITULOSFKCLIENTE: TIntegerField;
    qryDefaultTITULOSRAZAO: TStringField;
    TabSet1: TTabSet;
    ACBrEAD1: TACBrEAD;
    qryRecebimento: TFDQuery;
    qryRecebimentoCODIGO: TIntegerField;
    qryRecebimentoFKCLIENTE: TIntegerField;
    qryRecebimentoFKRECEBER: TIntegerField;
    qryRecebimentoDATA: TDateField;
    qryRecebimentoFKPLANO: TIntegerField;
    qryRecebimentoFKUSUARIO: TIntegerField;
    qryRecebimentoFKKEMPRESA: TIntegerField;
    qryRecebimentoFKCONTA: TIntegerField;
    qryRecebimentoFK_FORMA_PGTO: TIntegerField;
    qryRecebimentoNUMERO_CHEQUE: TIntegerField;
    qryRecebimentoTSALDO: TFloatField;
    qryRecebimentoVALOR_PARCELA: TFMTBCDField;
    qryRecebimentoPERC_JUROS: TFMTBCDField;
    qryRecebimentoJUROS: TFMTBCDField;
    qryRecebimentoPERC_DESCONTO: TFMTBCDField;
    qryRecebimentoDESCONTO: TFMTBCDField;
    qryRecebimentoVALOR_RECEBIDO: TFMTBCDField;
    qryRecebimentoID_SUBCAIXA: TIntegerField;
    qryRecebimentoSALDO_C_JUROS: TExtendedField;
    qryDefaultTITULOSCODIGO: TIntegerField;
    btnVisualizar: TSpeedButton;
    updLIQUIDA_TITULOCODIGO: TIntegerField;
    updLIQUIDA_TITULODATA: TDateField;
    updLIQUIDA_TITULOFKCLIENTE: TIntegerField;
    updLIQUIDA_TITULODOC: TStringField;
    updLIQUIDA_TITULOVALOR: TCurrencyField;
    updLIQUIDA_TITULODTVENCIMENTO: TDateField;
    updLIQUIDA_TITULOHISTORICO: TStringField;
    updLIQUIDA_TITULODATA_RECEBIMENTO: TDateField;
    updLIQUIDA_TITULODESCONTO: TCurrencyField;
    updLIQUIDA_TITULOJUROS: TFMTBCDField;
    updLIQUIDA_TITULOVRECEBIDO: TCurrencyField;
    updLIQUIDA_TITULOVL_RESTANTE: TFMTBCDField;
    updLIQUIDA_TITULOSITUACAO: TStringField;
    updLIQUIDA_TITULOFKEMPRESA: TIntegerField;
    updLIQUIDA_TITULOFK_VENDA: TIntegerField;
    updLIQUIDA_TITULOFKCONTA: TIntegerField;
    updLIQUIDA_TITULOTIPO: TStringField;
    updLIQUIDA_TITULONBOLETO: TIntegerField;
    updLIQUIDA_TITULOID_VENDEDOR: TIntegerField;
    updLIQUIDA_TITULOFK_OS: TIntegerField;
    updLIQUIDA_TITULOFLAG: TStringField;
    updLIQUIDA_TITULOBLOQUEADO: TStringField;
    updLIQUIDA_TITULOFK_USUARIO: TIntegerField;
    updLIQUIDA_TITULOCARTAO: TStringField;
    updLIQUIDA_TITULOFPG_VENDA: TIntegerField;
    updLIQUIDA_TITULOPAGAMENTO_LOJA: TStringField;
    updLIQUIDA_TITULOCANCELAMENTO_LOJA: TStringField;
    updLIQUIDA_TITULOALTERACAO_LOJA: TStringField;
    updLIQUIDA_TITULOCANCELAMENTO_DATA: TSQLTimeStampField;
    updLIQUIDA_TITULOREMESSA: TStringField;
    updLIQUIDA_TITULOREMESSA_REENVIAR: TStringField;
    updLIQUIDA_TITULOREMESSA_DATA: TDateField;
    updLIQUIDA_TITULOREMESSA_ARQUIVO: TStringField;
    updLIQUIDA_TITULOREGISTRO_ID_CBR_RETORNO: TLargeintField;
    updLIQUIDA_TITULOREGISTRO_STATUS: TStringField;
    updLIQUIDA_TITULOREGISTRO_DATA: TSQLTimeStampField;
    updLIQUIDA_TITULOREGISTRO_ARQUIVO: TStringField;
    updLIQUIDA_TITULORETORNO_ID_CBR_RETORNO: TIntegerField;
    updLIQUIDA_TITULOREGISTRO_HISTORICO: TStringField;
    updLIQUIDA_TITULOREGISTRO_SEM_REGISTRO: TStringField;
    updLIQUIDA_TITULOREGISTRO_LIMITE_PRAZO: TStringField;
    updLIQUIDA_TITULORETORNO_HISTORICO: TStringField;
    updLIQUIDA_TITULOOBS: TStringField;
    updLIQUIDA_TITULOID_CBR_REMESSA_UUID: TStringField;
    updLIQUIDA_TITULORETORNO_SEM_REGISTRO: TStringField;
    updLIQUIDA_TITULORETORNO_LIMITE_PRAZO: TStringField;
    updLIQUIDA_TITULOFK_NFE: TIntegerField;
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure TabSet1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnVisualizarClick(Sender: TObject);
  private
    procedure SetDisplayFields(ADataSet: TDataSet);
    procedure ProcurarArquivos;
    procedure AtualizaTitulo(ALimitePrazo: Boolean = False;
      ARegistro: Boolean = False; ASemRegisro: Boolean = False;
      ARecusado: Boolean = False);
    procedure GerarCaixa(idCR: Integer; Valor: Extended);
    procedure BaixaCR(idCR: Integer; Valor: Extended);
    function GeraRecebimento(idCR, Empresa, Conta: Integer;
      Valor: Extended): Integer;
    procedure Botoes;

  protected
    procedure AlinharControles; override;
    procedure AbrirConsulta; override;
  public
    procedure PosOnShow; override;
  end;

var
  frmRETORNOmanutencao: TfrmRETORNOmanutencao;

implementation

uses
  udtmCBR, ufuncoes, System.DateUtils,
  ufrmREMESSAcadastro, Vcl.Forms, ACBrUtil, uclassCBR_RETORNO, System.TypInfo,
  ufrmRETORNOrelatorio, Udados;

{$R *.dfm}

procedure TfrmRETORNOmanutencao.AbrirConsulta;
begin
  ParamSelecao.Clear;
  if TabSet1.TabIndex = 1 then
    ParamSelecao.Add(' (NOT DTHORA_PROCESSAMENTO IS NULL)')
  else if TabSet1.TabIndex = 2 then
    ParamSelecao.Add(' (DTHORA_PROCESSAMENTO IS NULL)')
  else if TabSet1.TabIndex = 3 then
    ParamSelecao.Add(' (NOT DTHORA_ARQUIVAMENTO IS NULL)');
  FSQLOrdem := ' ORDER BY ID_CBR_RETORNO DESC';
  inherited;
end;

procedure TfrmRETORNOmanutencao.AlinharControles;
begin
  // inherited;

  // Alinha
  pnlComandos.Align := alBottom;
  boxPesquisa.Align := alBottom;
  pagDefault.Align := alClient;

  dbGrid.Visible := False;

  // SQL Default
  FSQLPadrao := TFDQuery(dtsDefault.DataSet).SQL.Text;
  Application.ProcessMessages;
end;

procedure TfrmRETORNOmanutencao.AtualizaTitulo(ALimitePrazo: Boolean = False;
  ARegistro: Boolean = False; ASemRegisro: Boolean = False;
  ARecusado: Boolean = False);
begin
  try
    if qryDefaultTITULOS.FieldByName('TITULO_LOCALIZADO').AsString = 'N' then
      Exit;

    if not(qryDefaultTITULOS.FieldByName('VALOR_RECEBIDO').AsCurrency > 0) then
      Exit;

    with updLIQUIDA_TITULO do
    begin
      Close;
      ParamByName('CODIGO').Value := qryDefaultTITULOS.FieldByName
        ('CODIGO').Value;

      ParamByName('FKEMPRESA').Value := dados.qryempresaCodigo.Value;
      Open;

      if not updLIQUIDA_TITULO.IsEmpty then
      begin

        Edit;

        if ALimitePrazo then
        begin
          FieldByName('RETORNO_ID_CBR_RETORNO').Value :=
            qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
          FieldByName('RETORNO_LIMITE_PRAZO').Value := 'S';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName
            ('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName
            ('ARQUIVO_NOME').Value;
          FieldByName('REGISTRO_HISTORICO').Value := 'LIMITE';
        end
        else if ARegistro then
        begin
          FieldByName('REGISTRO_ID_CBR_RETORNO').Value :=
            qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').Value;
          FieldByName('REGISTRO_STATUS').Value := 'R';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName
            ('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName
            ('ARQUIVO_NOME').Value;
        end
        else if ASemRegisro then
        begin
          FieldByName('RETORNO_SEM_REGISTRO').Value := 'S';
          FieldByName('RETORNO_ID_CBR_RETORNO').Value :=
            qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
        end
        else if ARecusado then
        begin
          FieldByName('REGISTRO_ID_CBR_RETORNO').Value :=
            qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').Value;
          FieldByName('REGISTRO_STATUS').Value := 'E';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName
            ('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName
            ('ARQUIVO_NOME').Value;
        end
        else
        begin
          FieldByName('RETORNO_ID_CBR_RETORNO').Value :=
            qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
        end;
        Post;
      end;
    end;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TfrmRETORNOmanutencao.BaixaCR(idCR: Integer; Valor: Extended);
begin
  if Valor > 0 then
  begin
    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      'update creceber set VRECEBIDO=:VCEREBIDO, FK_USUARIO=:USUARIO,  DATA_RECEBIMENTO=:DATA, SITUACAO=:SITUACAO, FLAG=''S'', VL_RESTANTE = 0 WHERE NBOLETO=:CODIGO ';
    dados.qryExecute.Params[0].Value := Valor;
    dados.qryExecute.Params[1].Value := dados.idUsuario;
    dados.qryExecute.Params[2].AsDate := NOW;
    dados.qryExecute.Params[3].Value := 'T';
    dados.qryExecute.Params[4].Value := idCR;
    dados.qryExecute.ExecSQL;
  end;

  dados.Conexao.CommitRetaining;

end;

procedure TfrmRETORNOmanutencao.btnAlterarClick(Sender: TObject);
var
  vTipo: TACBrTipoOcorrencia;

  vID_CBR_RETORNO: Integer;
  vDIR_RETORNO, vNOM_ARQUIVO: String;
begin
  if Application.MessageBox('Confirma processamento do Arquivo selecionado ?',
    'Confirma��o!', MB_YESNO) = mrNo then
    Exit;

  vNOM_ARQUIVO := qryDefault.FieldByName('ARQUIVO_NOME').AsString;
  vDIR_RETORNO := qryDefault.FieldByName('ARQUIVO_LOCAL').AsString + '\';
  vID_CBR_RETORNO := qryDefault.FieldByName('ID_CBR_RETORNO').AsInteger;
  try
    qryDefaultTITULOS.First;
    while not qryDefaultTITULOS.Eof do
    begin
      vTipo := TACBrTipoOcorrencia
        (qryDefaultTITULOS.FieldByName('TIPO_OCORRENCIA').AsInteger);

      case vTipo of
        toRetornoDebitoTarifas:
          AtualizaTitulo;
        toRetornoBaixadoViaArquivo:
          AtualizaTitulo;
        toRetornoLiquidado:
          AtualizaTitulo;
        toRetornoBaixaSimples:
          AtualizaTitulo;
        toRetornoBaixadoInstAgencia:
          AtualizaTitulo(True);
        toRetornoRegistroConfirmado:
          AtualizaTitulo(False, True);
        toRetornoLiquidadoAposBaixaOuNaoRegistro:
          AtualizaTitulo(False, False, True);
        toRetornoRegistroRecusado:
          AtualizaTitulo(False, False, False, True);
      else
        raise Exception.Create
          ('Tipo de ocorr�ncia do t�tulo de retorno n�o esperada, favor chamar suporte!');
      end;

      qryDefaultTITULOS.Next;
    end;

    qryDefault.Connection.ExecSQL
      (Format('UPDATE CBR_RETORNO SET SITUACAO = 1, DTHORA_PROCESSAMENTO = CURRENT_TIMESTAMP WHERE ID_EMPRESA = %d AND ID_CBR_RETORNO = %d',
      [dados.qryempresaCodigo.Value, vID_CBR_RETORNO]));

    qryDefault.Connection.CommitRetaining;

    qryDefault.Close;
    qryDefault.Open;
    qryDefault.Locate('ID_CBR_RETORNO', vID_CBR_RETORNO, []);

  except
    on e: Exception do
    begin
      qryDefault.Connection.RollbackRetaining;
      raise Exception.Create('Erro no processamento do arquivo: ' + sLineBreak +
        sLineBreak + e.Message);
    end;
  end;
end;

procedure TfrmRETORNOmanutencao.btnDeletarClick(Sender: TObject);
var
  vID_CBR_RETORNO: Integer;
  vDIR_RETORNO, vNOM_ARQUIVO: String;
begin
  // inherited;

  if Application.MessageBox
    ('Aten��o, esta op��o n�o processa o Arquivo, apenas marca como Arquivado. Confirma mesmo assim ?',
    'Confirma��o!', MB_YESNO) = mrNo then
    Exit;

  vNOM_ARQUIVO := qryDefault.FieldByName('ARQUIVO_NOME').AsString;
  vDIR_RETORNO := qryDefault.FieldByName('ARQUIVO_LOCAL').AsString + '\';
  vID_CBR_RETORNO := qryDefault.FieldByName('ID_CBR_RETORNO').AsInteger;

  try
    qryDefault.Connection.ExecSQL
      (Format('UPDATE CBR_RETORNO SET SITUACAO = 2, DTHORA_ARQUIVAMENTO = CURRENT_TIMESTAMP  WHERE ID_EMPRESA = %d AND ID_CBR_RETORNO = %d',
      [dados.qryempresaCodigo.Value, vID_CBR_RETORNO]));

    qryDefault.Connection.CommitRetaining;

    qryDefault.Close;
    qryDefault.Open;
    qryDefault.Locate('ID_CBR_RETORNO', vID_CBR_RETORNO, []);

    if not DirectoryExists(vDIR_RETORNO + 'BKP') then
      MkDir(vDIR_RETORNO + 'BKP');

    if FileExists(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO) then
      RenameFile(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO,
        PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO +
        FormatDateTime('.zzz', NOW)));

    if FilesExists(vDIR_RETORNO + vNOM_ARQUIVO) then
      MoveFile(PWideChar(vDIR_RETORNO + vNOM_ARQUIVO),
        PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO));
  except
    on e: Exception do
    begin
      qryDefault.Connection.RollbackRetaining;

      raise Exception.Create('Erro no arquivamento do arquivo: ' + sLineBreak +
        sLineBreak + qryDefault.FieldByName('').AsString + e.Message);
    end;
  end;
end;

procedure TfrmRETORNOmanutencao.btnVisualizarClick(Sender: TObject);
begin
  TfrmRETORNOrelatorio.ShowRelatorio(qryDefault.FieldByName('ID_CBR_RETORNO')
    .AsInteger);
end;

procedure TfrmRETORNOmanutencao.GerarCaixa(idCR: Integer; Valor: Extended);
begin

  if dados.qryEmpresaID_PLANO_BOLETO.IsNull then
    raise Exception.Create('Informe o plano de contas da emiss�o de boletos!');

  dados.InsereCaixa(dados.qryempresaCodigo.Value, idCR,
    dados.qryEmpresaID_PLANO_BOLETO.Value, 1, dados.idUsuario, 'RE', '1',
    'REC.' + qryTMP.FieldByName('CODIGO').AsString, qryTMP.FieldByName('RAZAO')
    .AsString, '0', 'C', Valor);

end;

procedure TfrmRETORNOmanutencao.btnNovoClick(Sender: TObject);
var
  vINSERIR, vTITULO_JALIQUIDADO, vTITULO_LOCALIZADO: Boolean;

  vDT_PAGAMENTO: TDate;
  vHISTORICO, vMD5_ARQUIVO, vDIR_RETORNO, vNOM_ARQUIVO: String;
  idRecebimento, i, X: Integer;
  SqlTemp: String;
  vID_CBR_RETORNO: Integer;

begin

  if not dados.BuscaPlanoConta(dados.qryEmpresaID_PLANO_BOLETO.Value) then
    raise Exception.Create
      ('Plano de Contas de Recebimento de Boletos n�o configurado!');

  with dtmCBR.qryCBR_CONFIG do
  begin
    try
      Close;
      Open;
      vDIR_RETORNO := FieldByName('DIRRECEBE').AsString.Trim + '\';
    finally
      Close;
    end;
  end;

  if not DirectoryExists(vDIR_RETORNO) then
    raise Exception.CreateFMT
      ('Aviso!!! Diret�rio "%s" configurado para retorno n�o existe, processo interronpido.',
      [vDIR_RETORNO]);

  flbListaArquivos.Directory := ExtractFilePath(Application.ExeName);
  flbListaArquivos.Refresh;

  flbListaArquivos.Directory := vDIR_RETORNO;
  flbListaArquivos.Mask := '*.RET;';
  flbListaArquivos.Refresh;
  flbListaArquivos.ItemIndex := flbListaArquivos.Count - 1;

  if flbListaArquivos.Count = 0 then
    raise Exception.Create
      ('N�o foi encontrado nenhum arquivo para processamento!');

  for i := 0 to flbListaArquivos.Items.Count - 1 do
  begin
    vNOM_ARQUIVO := flbListaArquivos.Items[i];
    vMD5_ARQUIVO := ACBrEAD1.MD5FromFile(vDIR_RETORNO + '\' + vNOM_ARQUIVO);

    try
      locCTR_RETORNO_LOCATE.Close;
      locCTR_RETORNO_LOCATE.Params[0].AsString := vMD5_ARQUIVO;
      locCTR_RETORNO_LOCATE.Open;
      locCTR_RETORNO_LOCATE.FetchAll;

      if not locCTR_RETORNO_LOCATE.IsEmpty then
        vINSERIR := Application.MessageBox
          ('Aten��o!!! Este arquivo j� foi processado! Continua mesmo assim ?',
          'Confirma��o!', MB_YESNO) = mrYes
      else
        vINSERIR := True;
    finally
      locCTR_RETORNO_LOCATE.Close;
    end;

    if not vINSERIR then
      Exit;

    dtmCBR.ConfigurarBoleta;
    dtmCBR.ACBrBoleto1.DirArqRetorno := vDIR_RETORNO;
    dtmCBR.ACBrBoleto1.NomeArqRetorno := vNOM_ARQUIVO;
    dtmCBR.ACBrBoleto1.LerRetorno;

    if dtmCBR.ACBrBoleto1.ListadeBoletos.Count > 0 then
    begin
      vID_CBR_RETORNO := oCbrRETORNO.GetNewIDCBR_RETORNO;

      try
        insCBR_RETORNO.ParamByName('ID_EMPRESA').Value :=
          dados.qryempresaCodigo.Value;
        insCBR_RETORNO.ParamByName('ID_CBR_RETORNO').Value := vID_CBR_RETORNO;
        insCBR_RETORNO.ParamByName('DTHORA_CADASTRO').Value := NOW;
        insCBR_RETORNO.ParamByName('ARQUIVO')
          .LoadFromFile(vDIR_RETORNO + vNOM_ARQUIVO, ftString);
        insCBR_RETORNO.ParamByName('ARQUIVO_NOME').Value := vNOM_ARQUIVO;
        insCBR_RETORNO.ParamByName('ARQUIVO_DATA').Value :=
          dtmCBR.ACBrBoleto1.DataArquivo;
        insCBR_RETORNO.ParamByName('ARQUIVO_NUMERO').Value :=
          dtmCBR.ACBrBoleto1.NumeroArquivo;
        insCBR_RETORNO.ParamByName('ARQUIVO_LOCAL').AsString := vDIR_RETORNO;
        insCBR_RETORNO.ParamByName('ARQUIVO_MD5').Value := vMD5_ARQUIVO;
        insCBR_RETORNO.ParamByName('ARQUIVO_QUANT_TITULOS').Value :=
          dtmCBR.ACBrBoleto1.ListadeBoletos.Count;
        insCBR_RETORNO.ParamByName('SITUACAO').Value := 0;
        insCBR_RETORNO.Prepare;
        insCBR_RETORNO.ExecSQL;

        for X := 0 to dtmCBR.ACBrBoleto1.ListadeBoletos.Count - 1 do
        begin
          with dtmCBR.ACBrBoleto1 do
          begin
            // pesquisa t�tulo
            try
              SqlTemp :=
                ' select crt.id_cbr_titulos as codigo, crt.cli_razaosocial as razao,  crt.valor, cr.situacao from cbr_remessa_titulos crt '
                + ' left join creceber cr on cr.codigo=crt.id_cbr_titulos ' +
                ' where ' +
                ' (crt.nboleto is null) and (crt.id_cbr_titulos=:id) ' +
                ' union all ' +
                ' select crt.nboleto as codigo, crt.cli_razaosocial as razao, crt.valor, cr.situacao from cbr_remessa_titulos crt '
                + ' left join creceber cr on cr.codigo=crt.id_cbr_titulos ' +
                ' where ' + ' (not crt.nboleto is null) and(crt.nboleto=:id) ';

              if dtmCBR.qryCBR_CONFIGCNAB.Value = 'CNAB 240' then
              begin
                qryTMP.Close;
                qryTMP.SQL.Text := SqlTemp;
                qryTMP.Params[0].Value :=
                  StrToIntDef(Trim(ListadeBoletos[X].NossoNumero), -1);
                qryTMP.Open
              end;

              if dtmCBR.qryCBR_CONFIGCNAB.Value = 'CNAB 400' then
              begin
                qryTMP.Close;
                qryTMP.SQL.Text := SqlTemp;
                qryTMP.Params[0].Value :=
                  StrToIntDef(Trim(ListadeBoletos[X].NumeroDocumento), -1);
                qryTMP.Open
              end;

              vTITULO_LOCALIZADO := not qryTMP.IsEmpty;
              vTITULO_JALIQUIDADO := qryTMP.FieldByName('SITUACAO')
                .AsString = 'B';

              if vTITULO_LOCALIZADO then
              begin

                idRecebimento := GeraRecebimento(qryTMP.FieldByName('CODIGO')
                  .AsInteger, dados.qryempresa.FieldByName('CODIGO').Value,
                  dados.qryempresa.FieldByName('ID_CAIXA_GERAL').AsInteger,
                  qryTMP.FieldByName('VALOR').AsFloat);

                if idRecebimento > 0 then
                begin
                  GerarCaixa(idRecebimento, qryTMP.FieldByName('VALOR')
                    .AsFloat);

                  BaixaCR(qryTMP.FieldByName('CODIGO').AsInteger,
                    qryTMP.FieldByName('VALOR').AsFloat);
                end;
              end;

            finally
              qryTMP.Close;
            end;

            if vTITULO_LOCALIZADO then
            begin
              if vTITULO_JALIQUIDADO then
                vHISTORICO := 'T�tulo j� se encontrada Liquidado.'
              else
              begin
                vHISTORICO := 'T�tulo Liquidado.';
              end;
            end
            else
              vHISTORICO := 'T�tulo n�o Localizado.';

            insCBR_RETORNO_TITULOS.ParamByName('ID_EMPRESA').Value :=
              dados.qryempresaCodigo.Value;
            insCBR_RETORNO_TITULOS.ParamByName('ID_CBR_RETORNO').Value :=
              vID_CBR_RETORNO;
            insCBR_RETORNO_TITULOS.ParamByName('ID_CBR_RETORNO_TITULOS').Value
              := oCbrRETORNO.GetNewIDCBR_RETORNO_TITULOS(vID_CBR_RETORNO);
            insCBR_RETORNO_TITULOS.ParamByName('TITULO').Value :=
              ListadeBoletos[X].NossoNumero;
            case vTITULO_LOCALIZADO.ToInteger of
              0:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LOCALIZADO')
                  .Value := 'N';
              1:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LOCALIZADO')
                  .Value := 'S';
            end;

            case vTITULO_JALIQUIDADO.ToInteger of
              0:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_JALIQUIDADO')
                  .Value := 'N';
              1:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_JALIQUIDADO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_SEMREGISTRO')
              .Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoLiquidadoAposBaixaOuNaoRegistro:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_SEMREGISTRO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_LIQUIDADO_LIMITEP')
              .Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoLiquidadoAposBaixaOuNaoRegistro:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LIQUIDADO_LIMITEP')
                  .Value := 'S'
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_RECUSADO').Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoRegistroRecusado:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_RECUSADO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('SEU_NUMERO').Value :=
              ListadeBoletos[X].SeuNumero;
            insCBR_RETORNO_TITULOS.ParamByName('NOSSO_NUMERO').Value :=
              ListadeBoletos[X].NossoNumero;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DOCUMENTO').Value :=
              ListadeBoletos[X].ValorDocumento;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_PAGO').Value :=
              ListadeBoletos[X].ValorPago;;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_RECEBIDO').Value :=
              ListadeBoletos[X].ValorRecebido;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DESCONTO').Value :=
              ListadeBoletos[X].ValorDesconto;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_JUROS').Value :=
              ListadeBoletos[X].ValorMoraJuros;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DESPESA').Value :=
              ListadeBoletos[X].ValorDespesaCobranca;
            insCBR_RETORNO_TITULOS.ParamByName('DATA_OCORRENCIA').Value :=
              ListadeBoletos[X].DataOcorrencia;
            insCBR_RETORNO_TITULOS.ParamByName('ID_BANCO').Value :=
              ListadeBoletos[X].Liquidacao.Banco;
            insCBR_RETORNO_TITULOS.ParamByName('ID_AGENCIA').Value :=
              ListadeBoletos[X].Liquidacao.Agencia;
            insCBR_RETORNO_TITULOS.ParamByName('ORIGEM').Value :=
              ListadeBoletos[X].Liquidacao.Origem;
            insCBR_RETORNO_TITULOS.ParamByName('FORMA_PAGAMENTO').Value :=
              ListadeBoletos[X].Liquidacao.FormaPagto;
            insCBR_RETORNO_TITULOS.ParamByName('TIPO_OCORRENCIA').Value :=
              Integer(ListadeBoletos[X].OcorrenciaOriginal.Tipo);
            insCBR_RETORNO_TITULOS.ParamByName('TIPO_OCORRENCIA_DESC').Value :=
              ListadeBoletos[X].OcorrenciaOriginal.Descricao;
            insCBR_RETORNO_TITULOS.ParamByName('MOT_REJ_COMANDO').Value :=
              ListadeBoletos[X].MotivoRejeicaoComando.Text;
            insCBR_RETORNO_TITULOS.ParamByName('MOT_REJ_COMANDO_DESC').Value :=
              ListadeBoletos[X].DescricaoMotivoRejeicaoComando.Text;
            insCBR_RETORNO_TITULOS.ParamByName('HISTORICO').Value := vHISTORICO;
          end;
          insCBR_RETORNO_TITULOS.Prepare;
          insCBR_RETORNO_TITULOS.ExecSQL;
        end;

        qryDefault.Connection.CommitRetaining;

        qryDefault.Close;
        qryDefault.Open;

        if not DirectoryExists(vDIR_RETORNO + 'BKP') then
          MkDir(vDIR_RETORNO + 'BKP');

        if FileExists(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO) then
          RenameFile(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO,
            PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO +
            FormatDateTime('.zzz', NOW)));

        if FilesExists(vDIR_RETORNO + vNOM_ARQUIVO) then
          MoveFile(PWideChar(vDIR_RETORNO + vNOM_ARQUIVO),
            PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO));
      except
        on e: Exception do
        begin
          qryDefault.Connection.RollbackRetaining;
          raise Exception.Create('Erro ao processar os arquivos de retorno:' +
            sLineBreak + e.Message);
        end;
      end;
    end;
  end;
  btnAtualizarClick(self);
end;

procedure TfrmRETORNOmanutencao.dtsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(qryDefault) then
  begin
    btnAlterar.Enabled := (dtsDefault.DataSet.FieldByName('SITUACAO')
      .AsInteger = 0) and (not dtsDefault.DataSet.IsEmpty);
    btnDeletar.Enabled := (dtsDefault.DataSet.FieldByName('SITUACAO')
      .AsInteger = 0) and (not dtsDefault.DataSet.IsEmpty);
    btnVisualizar.Enabled := not dtsDefault.DataSet.IsEmpty;
  end;
end;


procedure TfrmRETORNOmanutencao.Botoes;
begin
  btnNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  btnAlterar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
  btnDeletar.Visible := dados.qryPermissoesBotaoEXCLUIR.Value = 'S';
end;


procedure TfrmRETORNOmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  FormCadastro := TfrmREMESSAcadastro;

  TabelaNome := 'CBR_RETORNO';
  TabelaCpChave := 'ID_CBR_RETORNO';
end;

procedure TfrmRETORNOmanutencao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f7 then
    btnVisualizarClick(self);
end;

procedure TfrmRETORNOmanutencao.FormShow(Sender: TObject);
begin
  // inherited;

  AlinharControles;
  AjustarControles;
  if Assigned(dtsDefault.DataSet) then
    TFDQuery(dtsDefault.DataSet).Close
  else
    raise Exception.Create('DataSet n�o foi assinalado, favor conferir!');

  if FAbrirQuery then
    AbrirConsulta;

  Dados.Habilitacoes(Dados.aMenu, self.Name);
  Botoes;
end;

procedure TfrmRETORNOmanutencao.PosOnShow;
begin
  inherited;

  pagDefault.TabIndex := 0;
end;

procedure TfrmRETORNOmanutencao.ProcurarArquivos;
begin

end;

procedure TfrmRETORNOmanutencao.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  qryDefaultTITULOS.Active := DataSet.Active;
end;

procedure TfrmRETORNOmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  SetDisplayFields(dtstabDefault.DataSet);
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger :=
    dados.qryempresaCodigo.Value;
end;

function TfrmRETORNOmanutencao.GeraRecebimento(idCR, Empresa, Conta: Integer;
  Valor: Extended): Integer;
var
  aCodigo: Integer;
begin
  Result := -1;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'SELECT CODIGO FROM CRECEBER WHERE NBOLETO=:NBOLETO';
  dados.qryConsulta.Params[0].Value := idCR;
  dados.qryConsulta.Open;

  aCodigo := dados.qryConsulta.FieldByName('CODIGO').AsInteger;
  if aCodigo > 0 then
  begin

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      'delete from crrecebimento where fkreceber=:id';
    dados.qryExecute.Params[0].Value := aCodigo;
    dados.qryExecute.ExecSQL;
    dados.Conexao.CommitRetaining;

    qryRecebimento.Close;
    qryRecebimento.Params[0].Value := aCodigo;
    qryRecebimento.Open;

    if not qryRecebimento.IsEmpty then
      qryRecebimento.Edit
    else
    begin
      qryRecebimento.Insert;
      qryRecebimentoCODIGO.Value := dados.Numerador('CRRECEBIMENTO', 'CODIGO',
        'N', '', '');
    end;

    qryRecebimentoFKCONTA.Value := Conta;
    qryRecebimentoFK_FORMA_PGTO.Value := 1;
    // dinheiro
    qryRecebimentoFKRECEBER.Value := aCodigo;
    qryRecebimentoDATA.Value := date;
    qryRecebimentoVALOR_PARCELA.AsFloat := Valor;
    qryRecebimentoPERC_JUROS.Value := 0;
    qryRecebimentoJUROS.Value := 0;
    qryRecebimentoPERC_DESCONTO.Value := 0;
    qryRecebimentoDESCONTO.Value := 0;
    qryRecebimentoVALOR_RECEBIDO.Value := Valor;
    qryRecebimentoFKKEMPRESA.Value := Empresa;
    qryRecebimento.Post;

    Result := qryRecebimentoCODIGO.Value;

    dados.Conexao.CommitRetaining;
  end;

end;

procedure TfrmRETORNOmanutencao.SetDisplayFields(ADataSet: TDataSet);
begin
  // ADataSet.FieldByName('').DisplayLabel := '';
end;

procedure TfrmRETORNOmanutencao.TabSet1Click(Sender: TObject);
begin
  if FAbrirQuery then
    AbrirConsulta;
end;

end.
