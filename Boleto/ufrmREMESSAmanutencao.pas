unit ufrmREMESSAmanutencao;

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
  JvExStdCtrls, JvGroupBox, ACBrBoleto, ACBrBoletoConversao, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfrmREMESSAmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_CBR_REMESSA: TLargeintField;
    qryDefaultDATA: TSQLTimeStampField;
    qryDefaultIDBANCO: TSmallintField;
    qryDefaultAGENCIA: TStringField;
    qryDefaultAGENCIA_DIGITO: TStringField;
    qryDefaultCONTA: TStringField;
    qryDefaultCONTA_DIGITO: TStringField;
    qryDefaultCODIGO_CEDENTE: TStringField;
    qryDefaultCONVENIO: TStringField;
    qryDefaultMODALIDADE: TStringField;
    qryDefaultLOCAL_DE_PAGAMENTO: TStringField;
    qryDefaultMENSAGEM: TStringField;
    qryDefaultINSTRUCAO1: TStringField;
    qryDefaultINSTRUCAO2: TStringField;
    qryDefaultPERCENTUAL_JUROS: TFMTBCDField;
    qryDefaultPERCENTUAL_MULTA: TFMTBCDField;
    qryDefaultCARTEIRA: TStringField;
    qryDefaultDATA_GERACAO: TSQLTimeStampField;
    qryDefaultLOCAL_ARQUIVO: TStringField;
    qryDefaultDATA_PROC_BANCO: TSQLTimeStampField;
    qryCBR_REMESSA_TITULOS: TFDQuery;
    dtsqryCBR_TITULOS_SEL: TDataSource;
    insCBR_REMESSA_TITULOS: TFDQuery;
    qryDefaultID_CBR_REMESSA_UUID: TStringField;
    qryDefaultARQUIVO: TMemoField;
    qryCBR_REMESSA_TITULOSID_CBR_REMESSA_UUID: TStringField;
    qryCBR_REMESSA_TITULOSID_EMPRESA: TIntegerField;
    qryCBR_REMESSA_TITULOSID_CBR_REMESSA: TLargeintField;
    qryCBR_REMESSA_TITULOSID_CBR_TITULOS: TLargeintField;
    qryCBR_REMESSA_TITULOSDT_EMISSAO: TSQLTimeStampField;
    qryCBR_REMESSA_TITULOSDT_VENCIMENTO: TSQLTimeStampField;
    qryCBR_REMESSA_TITULOSVALOR: TFMTBCDField;
    qryCBR_REMESSA_TITULOSCLI_RAZAOSOCIAL: TStringField;
    qryCBR_REMESSA_TITULOSCLI_CNPJCPF: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDERECO: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDNUMERO: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDBAIRRO: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDCIDADE: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDUF: TStringField;
    qryCBR_REMESSA_TITULOSCLI_ENDCEP: TStringField;
    qryCBR_REMESSA_TITULOSDT_PAGAMENTO: TDateField;
    qryCBR_REMESSA_TITULOSCANCELAMENTO_LOJA: TStringField;
    qryCBR_REMESSA_TITULOSPAGAMENTO_LOJA: TStringField;
    qryDefaultCANCELADA: TStringField;
    btnGerarRemessa: TSpeedButton;
    btnMarcarRemessaProc: TSpeedButton;
    btnVisualizar: TSpeedButton;
    qryCBR_REMESSA_TITULOSNBOLETO: TIntegerField;
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
    procedure btnDeletarClick(Sender: TObject);
    procedure qryCBR_REMESSA_TITULOSBeforeOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMarcarRemessaProcClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnGerarRemessaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SetDisplayFields(ADataSet: TDataSet);
    procedure GerarRemessa;
    procedure Botoes;
  public

  end;

var
  frmREMESSAmanutencao: TfrmREMESSAmanutencao;

implementation

uses
  udtmCBR, ufuncoes, System.DateUtils,
  Vcl.FileCtrl, ufrmREMESSAcadastro, Vcl.Forms, ACBrUtil, ufrmREMESSArelatorio,
  Udados;

{$R *.dfm}

procedure TfrmREMESSAmanutencao.Botoes;
begin
  btnNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  btnAlterar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
  btnDeletar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
  btnGerarRemessa.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
  btnMarcarRemessaProc.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
end;

procedure TfrmREMESSAmanutencao.GerarRemessa;
var
  Titulo: TACBrTitulo;
  AMSg, AArquivo: String;
  ADataGeracao: TDateTime;

  AID_CBR_REMESSA: Integer;
begin
  dtmCBR.ConfigurarBoleta;

  if dtsDefault.DataSet.FieldByName('IDBANCO').AsInteger <>
    dtmCBR.ACBrBoleto1.Banco.Numero then
    raise Exception.Create
      ('Banco gerado nesta remessa difere da configura��o selecionada!');

  AID_CBR_REMESSA := dtsDefault.DataSet.FieldByName('ID_CBR_REMESSA').AsInteger;

  dtmCBR.ACBrBoleto1.ListadeBoletos.Clear;
  qryCBR_REMESSA_TITULOS.First;

  while Not qryCBR_REMESSA_TITULOS.Eof do
  begin
    Titulo := dtmCBR.ACBrBoleto1.CriarTituloNaLista;
    with Titulo do
    begin
      OcorrenciaOriginal.Tipo := toRemessaRegistrar;

      // LIQUIDADO NA LOJA
      if qryCBR_REMESSA_TITULOS.FieldByName('PAGAMENTO_LOJA').AsString = 'S'
      then
        OcorrenciaOriginal.Tipo := toRemessaBaixaporPagtoDiretoCedente;

      // CANCELAMENTO NA LOJA
      if qryCBR_REMESSA_TITULOS.FieldByName('CANCELAMENTO_LOJA').AsString = 'S'
      then
        OcorrenciaOriginal.Tipo := toRemessaBaixaporPagtoDiretoCedente;

      Vencimento := qryCBR_REMESSA_TITULOS.FieldByName('DT_VENCIMENTO')
        .AsDateTime;
      DataDocumento := qryCBR_REMESSA_TITULOS.FieldByName('DT_EMISSAO')
        .AsDateTime;

      if qryCBR_REMESSA_TITULOS.FieldByName('DT_VENCIMENTO').AsDateTime > 0 then
        DataBaixa := qryCBR_REMESSA_TITULOS.FieldByName('DT_VENCIMENTO')
          .AsDateTime;

      NumeroDocumento := qryCBR_REMESSA_TITULOS.FieldByName('NBOLETO').AsString;

      EspecieDoc := dtmCBR.qryCBR_CONFIGESPECIEDOC.Value;
      Aceite := atNao;
      DataProcessamento := qryDefault.FieldByName('DATA').AsDateTime;
      Carteira := qryDefault.FieldByName('CARTEIRA').AsString;

      // bb exige que carteira seja enviada antes do nosso numero
      if dtmCBR.ACBrBoleto1.Banco.Numero = 1 then
        NossoNumero := Carteira + qryCBR_REMESSA_TITULOS.FieldByName
          ('NBOLETO').AsString
      else
        NossoNumero := qryCBR_REMESSA_TITULOS.FieldByName('NBOLETO').AsString;

      ValorDocumento := qryCBR_REMESSA_TITULOS.FieldByName('VALOR').AsCurrency;
      Sacado.NomeSacado := qryCBR_REMESSA_TITULOS.FieldByName
        ('CLI_RAZAOSOCIAL').AsString;

      case TiraPontos(qryCBR_REMESSA_TITULOS.FieldByName('CLI_CNPJCPF')
        .AsString).Trim.Length of
        11:
          Sacado.Pessoa := pFisica;
        14:
          Sacado.Pessoa := pJuridica;
      else
        raise Exception.Create('Erro com CPF/CNPJ Cliente: ' + sLineBreak +
          qryCBR_REMESSA_TITULOS.FieldByName('CLI_CNPJCPF').AsString + ' | ' +
          qryCBR_REMESSA_TITULOS.FieldByName('CLI_RAZAOSOCIAL').AsString);
      end;

      Sacado.CNPJCPF :=
        TiraPontos(qryCBR_REMESSA_TITULOS.FieldByName('CLI_CNPJCPF').AsString);

      Sacado.Logradouro := qryCBR_REMESSA_TITULOS.FieldByName
        ('CLI_ENDERECO').AsString;
      Sacado.Numero := qryCBR_REMESSA_TITULOS.FieldByName
        ('CLI_ENDNUMERO').AsString;
      Sacado.Bairro := qryCBR_REMESSA_TITULOS.FieldByName
        ('CLI_ENDBAIRRO').AsString;
      Sacado.Cidade := qryCBR_REMESSA_TITULOS.FieldByName
        ('CLI_ENDCIDADE').AsString;
      Sacado.UF := qryCBR_REMESSA_TITULOS.FieldByName('CLI_ENDUF').AsString;
      Sacado.CEP := qryCBR_REMESSA_TITULOS.FieldByName('CLI_ENDCEP').AsString;
      ValorAbatimento := 0.00;
      LocalPagamento := qryDefault.FieldByName('LOCAL_DE_PAGAMENTO').AsString;
      ValorMoraJuros := 0.00;
      ValorDesconto := 0.00;
      ValorAbatimento := 0.00;
      DataMoraJuros := 0.00;
      DataDesconto := 0.00;
      DataAbatimento := 0.00;
      DataProtesto := 0.00;
      DataBaixa := 0;
      PercentualMulta := 0.00;
      Mensagem.Text := qryDefault.FieldByName('MENSAGEM').AsString;
      OcorrenciaOriginal.Tipo := toRemessaRegistrar;
      Instrucao1 := PadRight(Trim(qryDefault.FieldByName('INSTRUCAO1')
        .AsString), 2, '0');
      try
        if qryDefault.FieldByName('IDBANCO').AsInteger = 33 then
          Instrucao2 := '2'
        else
          Instrucao2 :=
            PadRight(Trim(qryDefault.FieldByName('INSTRUCAO2')
            .AsString), 2, '0');
      except
        raise Exception.Create('Informe o c�digo do banco!');
      end;

    end;

    qryCBR_REMESSA_TITULOS.Next;
  end;

  try
    ADataGeracao := Now;

    AArquivo := dtmCBR.ACBrBoleto1.GerarRemessa(AID_CBR_REMESSA);

    // grava dados da remessa
    qryDefault.Connection.ExecSQL
      (Format('UPDATE CBR_REMESSA SET DATA_GERACAO = %s, LOCAL_ARQUIVO=%s WHERE ID_CBR_REMESSA=%d',
      [DataHoraToSQL(ADataGeracao), AArquivo.Trim.QuotedString,
      AID_CBR_REMESSA]));

    // grava dados da �ltima remessa nos t�tulos
    qryDefault.Connection.ExecSQL
      (Format('UPDATE CRECEBER SET REMESSA = ''S'', REMESSA_REENVIAR = ''N'', REMESSA_DATA = %s, REMESSA_ARQUIVO = %s WHERE ID_CBR_REMESSA_UUID = %s',
      [DataToSQL(ADataGeracao), AArquivo.Trim.QuotedString,
      qryCBR_REMESSA_TITULOS.FieldByName('ID_CBR_REMESSA_UUID')
      .AsString.QuotedString]));

    qryDefault.Edit;
    qryDefaultARQUIVO.LoadFromFile(AArquivo.Trim);
    qryDefault.Post;

    // qryDefault.Connection.CommitRetaining;
  except
    on e: Exception do
    begin

      // qryDefault.Connection.RollbackRetaining;
      raise Exception.Create('Ocorreu erro ao gerar a Remessa!' + sLineBreak +
        e.Message);
    end;
  end;

  AMSg := 'Arquivo de Remessa Gerado com Sucesso!' + sLineBreak + AArquivo +
    sLineBreak + 'Envie o Arquivo acima para o Banco!';

  qryDefault.Close;
  qryDefault.Open;
  qryDefault.Locate('ID_CBR_REMESSA', AID_CBR_REMESSA, []);

  Application.MessageBox(PChar(AMSg), 'Remessa', MB_ICONEXCLAMATION)
end;

procedure TfrmREMESSAmanutencao.btnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox
    ('Deseja realmente efetuar a exclus�o da remessa selecionada?',
    'Confirma��o', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
  begin
    try
      qryDefault.Connection.ExecSQL
        (Format('UPDATE CRECEBER SET ID_CBR_REMESSA_UUID = Null WHERE ID_CBR_REMESSA_UUID = %s;',
        [qryDefault.FieldByName('ID_CBR_REMESSA_UUID').AsString.QuotedString]));

      qryDefault.Connection.ExecSQL
        (Format('UPDATE CBR_REMESSA SET CANCELADA = ''S'' WHERE ID_EMPRESA = %d AND ID_CBR_REMESSA = %d;',
        [dados.qryempresaCodigo.Value, qryDefault.FieldByName('ID_CBR_REMESSA')
        .AsInteger]));

      qryDefault.Connection.CommitRetaining;

      qryDefault.Close;
      qryDefault.Open;
    except
      on e: Exception do
      begin
        qryDefault.Connection.RollbackRetaining;

        raise Exception.Create('Ocorreu erro ao tentar cancelar a Remessa.' +
          sLineBreak + sLineBreak + e.Message);
      end;
    end;
  end;
end;

procedure TfrmREMESSAmanutencao.btnGerarRemessaClick(Sender: TObject);
var
  codigo: string;
begin

  if qryDefaultLOCAL_ARQUIVO.AsString.Trim.Length > 0 then
  begin
    raise Exception.Create('Arquivo de Remessa j� foi gerado!' +
      qryDefaultLOCAL_ARQUIVO.AsString);
  end;

  codigo := qryDefault.FieldByName('ID_CBR_REMESSA').AsString.Trim;

  if codigo = '' then
    exit;

  try
    try
      qryDefault.Connection.ExecSQL
        ('DELETE FROM CBR_REMESSA_TITULOS WHERE ID_CBR_REMESSA = ' +
        qryDefault.FieldByName('ID_CBR_REMESSA').AsString.Trim);

      with TFDQuery(dtsqryCBR_TITULOS_SEL.DataSet) do
      begin
        Close;
        Params[0].AsString := dtsDefault.DataSet.FieldByName
          ('ID_CBR_REMESSA_UUID').AsString.Trim;
        Open;
        FetchAll;

        while not Eof do
        begin

          with insCBR_REMESSA_TITULOS do
          begin
            ParamByName('ID_EMPRESA').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('FKEMPRESA').Value;
            ParamByName('ID_CBR_REMESSA').Value :=
              dtsDefault.DataSet.FieldByName('ID_CBR_REMESSA').AsString.Trim;
            ParamByName('ID_CBR_TITULOS').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('CODIGO').Value;
            ParamByName('NBOLETO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('NBOLETO').Value;
            ParamByName('DT_EMISSAO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('DATA').Value;
            ParamByName('DT_VENCIMENTO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('DTVENCIMENTO').Value;
            ParamByName('VALOR').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('VALOR').Value;
            ParamByName('CLI_RAZAOSOCIAL').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('RAZAO').Value;
            ParamByName('CLI_CNPJCPF').Value :=
              ACBrUtil.OnlyNumber
              (TiraPontos(dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('CNPJ')
              .AsString));
            ParamByName('CLI_ENDERECO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('ENDERECO').Value;
            ParamByName('CLI_ENDNUMERO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('NUMERO').Value;
            ParamByName('CLI_ENDBAIRRO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('BAIRRO').Value;
            ParamByName('CLI_ENDCIDADE').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('MUNICIPIO').Value;
            ParamByName('CLI_ENDUF').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('UF').Value;
            ParamByName('CLI_ENDCEP').Value :=
              ACBrUtil.OnlyNumber(dtsqryCBR_TITULOS_SEL.DataSet.FieldByName
              ('CEP').AsString);
            ParamByName('CANCELAMENTO_LOJA').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName
              ('CANCELAMENTO_LOJA').Value;
            ParamByName('PAGAMENTO_LOJA').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('PAGAMENTO_LOJA').Value;
            ParamByName('ALTERACAO_LOJA').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName('ALTERACAO_LOJA').Value;
            ParamByName('DT_PAGAMENTO').Value :=
              dtsqryCBR_TITULOS_SEL.DataSet.FieldByName
              ('DATA_RECEBIMENTO').Value;
            Prepare;
            ExecSQL;
          end;

          Next;
        end;

        Close;
      end;

      qryCBR_REMESSA_TITULOS.Close;
      qryCBR_REMESSA_TITULOS.Params[0].Value := dados.qryempresaCodigo.Value;
      qryCBR_REMESSA_TITULOS.Params[1].AsString :=
        qryDefault.FieldByName('ID_CBR_REMESSA_UUID').AsString.Trim;
      qryCBR_REMESSA_TITULOS.Open;
      qryCBR_REMESSA_TITULOS.FetchAll;

      if qryCBR_REMESSA_TITULOS.IsEmpty then
        raise Exception.Create
          ('N�o foram encontrados T�tulos para Gera��o da Remessa, favor verificar!');

      GerarRemessa;

      qryDefault.Connection.CommitRetaining;
      qryDefault.Close;
      qryDefault.Open;
    finally
      qryCBR_REMESSA_TITULOS.Close;
    end;
  except
    on e: Exception do
    begin
      qryDefault.Connection.RollbackRetaining;

      raise Exception.Create('Ocorreu erro na gera�ao do arquivo da remessa:' +
        sLineBreak + sLineBreak + e.Message);
    end;
  end;

end;

procedure TfrmREMESSAmanutencao.btnMarcarRemessaProcClick(Sender: TObject);
var
  AID_CBR_REMESSA: Integer;
begin
  if Application.MessageBox
    ('Deseja realmente marcar esta Remessa como Processada pelo Banco ?',
    'Confirma��o', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
  begin
    AID_CBR_REMESSA := dtsDefault.DataSet.FieldByName('ID_CBR_REMESSA')
      .AsInteger;

    try
      qryDefault.Connection.ExecSQL
        (Format('UPDATE CBR_REMESSA SET DATA_PROC_BANCO = %s WHERE ID_CBR_REMESSA = %d',
        [DataHoraToSQL(Now), qryDefault.FieldByName('ID_CBR_REMESSA')
        .AsInteger]));
    finally
      qryDefault.Close;
      qryDefault.Open;
      qryDefault.Locate('ID_CBR_REMESSA', AID_CBR_REMESSA, []);
    end;
  end;

end;

procedure TfrmREMESSAmanutencao.btnNovoClick(Sender: TObject);
begin
  inherited;
  if qryDefaultLOCAL_ARQUIVO.IsNull then
    btnGerarRemessaClick(Self);

end;

procedure TfrmREMESSAmanutencao.dtsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(qryDefault) then
  begin
    btnAlterar.enabled := (qryDefault.FieldByName('DATA_PROC_BANCO').IsNull) and
      (not qryDefault.IsEmpty);
    btnDeletar.enabled := (qryDefault.FieldByName('DATA_PROC_BANCO').IsNull) and
      (not qryDefault.IsEmpty);;
    btnGerarRemessa.enabled := (qryDefault.FieldByName('DATA_PROC_BANCO')
      .IsNull) and (not qryDefault.IsEmpty);
    btnMarcarRemessaProc.enabled :=
      (qryDefault.FieldByName('DATA_PROC_BANCO').IsNull) and
      (not qryDefault.IsEmpty);
    btnVisualizar.enabled := not qryDefault.IsEmpty;

  end;
end;

procedure TfrmREMESSAmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  FormCadastro := TfrmREMESSAcadastro;

  TabelaNome := 'CBR_REMESSA';
  TabelaCpChave := 'ID_CBR_REMESSA';

end;

procedure TfrmREMESSAmanutencao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if Key = vk_f2 then
    btnNovoClick(Self);

  if Key = vk_f3 then
    btnAlterarClick(Self);

  if Key = vk_f4 then
    btnDeletarClick(Self);

  if Key = vk_f5 then
    btnAtualizarClick(Self);

  if Key = vk_f6 then
    btnGerarRemessaClick(Self);

  if Key = vk_f7 then
    btnMarcarRemessaProcClick(Self);

  if Key = VK_f8 then
    btnVisualizarClick(Self);

end;

procedure TfrmREMESSAmanutencao.FormShow(Sender: TObject);
begin
  inherited;
  Dados.Habilitacoes(Dados.aMenu, self.Name);
  Botoes;
end;

procedure TfrmREMESSAmanutencao.qryCBR_REMESSA_TITULOSBeforeOpen
  (DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger :=
    dados.qryempresaCodigo.Value;
end;

procedure TfrmREMESSAmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  SetDisplayFields(dtstabDefault.DataSet);
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger :=
    dados.qryempresaCodigo.Value;
end;

procedure TfrmREMESSAmanutencao.SetDisplayFields(ADataSet: TDataSet);
begin
  // ADataSet.FieldByName('').DisplayLabel := '';
end;

procedure TfrmREMESSAmanutencao.btnVisualizarClick(Sender: TObject);
begin
  TfrmREMESSArelatorio.ShowRelatorio(qryDefault.FieldByName('ID_CBR_REMESSA')
    .AsInteger);
end;

end.
