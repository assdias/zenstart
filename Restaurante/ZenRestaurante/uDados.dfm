object Dados: TDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 437
  Width = 657
  object SQLCon: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'HostName=127.0.0.1'
      'DriverUnit=Data.DBXDataSnap'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 32
    Top = 32
  end
  object dspCon1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLCon
    Left = 32
    Top = 88
  end
  object cdsMesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMesas'
    RemoteServer = dspCon1
    OnCalcFields = cdsMesasCalcFields
    Left = 120
    Top = 32
    object cdsMesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMesasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object cdsMesasTOTAL: TSingleField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object cdsMesasFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object cdsMesasFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object cdsMesasVIRTUAL_MESA: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_MESA'
      Size = 10
      Calculated = True
    end
    object cdsMesasVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 10
      Calculated = True
    end
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
        Size = 30
      end>
    ProviderName = 'dspUsuarios'
    RemoteServer = dspCon1
    Left = 120
    Top = 88
    object cdsUsuariosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 50
    end
    object cdsUsuariosSENHA_APP: TStringField
      FieldName = 'SENHA_APP'
      Size = 30
    end
    object cdsUsuariosFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
    end
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas_Master'
    RemoteServer = dspCon1
    Left = 208
    Top = 32
    object cdsVendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVendasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object cdsVendasDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object cdsVendasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object cdsVendasFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object cdsVendasFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object cdsVendasFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object cdsVendasCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object cdsVendasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsVendasTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object cdsVendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsVendasTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object cdsVendasDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object cdsVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsVendasOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object cdsVendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object cdsVendasFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object cdsVendasPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object cdsVendasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object cdsVendasNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object cdsVendasFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object cdsVendasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object cdsVendasGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object cdsVendasPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsVendasACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsVendasFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object cdsVendasPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object cdsVendasOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object cdsVendasFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object cdsVendasTOTAL_TROCA: TFMTBCDField
      FieldName = 'TOTAL_TROCA'
      Origin = 'TOTAL_TROCA'
      Precision = 18
      Size = 2
    end
    object cdsVendasFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object cdsVendasFK_ENTREGADOR: TIntegerField
      FieldName = 'FK_ENTREGADOR'
      Origin = 'FK_ENTREGADOR'
    end
    object cdsVendasFLAG_NFCE: TStringField
      FieldName = 'FLAG_NFCE'
      Origin = 'FLAG_NFCE'
      Size = 1
    end
    object cdsVendasFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object cdsVendasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object cdsVendasTELA: TStringField
      FieldName = 'TELA'
      Origin = 'TELA'
    end
  end
  object cdsDetalhes: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dsVendas_Detalhe'
    RemoteServer = dspCon1
    OnCalcFields = cdsDetalhesCalcFields
    Left = 208
    Top = 88
    object cdsDetalhesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDetalhesFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object cdsDetalhesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object cdsDetalhesITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object cdsDetalhesCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object cdsDetalhesQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object cdsDetalhesE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object cdsDetalhesPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = '##,###,##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsDetalhesVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsDetalhesVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsDetalhesTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsDetalhesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object cdsDetalhesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object cdsDetalhesQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object cdsDetalhesACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsDetalhesOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object cdsDetalhesFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object cdsDetalhesID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object cdsDetalhesID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
      Origin = 'ID_SERIAL'
    end
    object cdsDetalhesFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object cdsDetalhesQTD_RESTANTE: TFMTBCDField
      FieldName = 'QTD_RESTANTE'
      Origin = 'QTD_RESTANTE'
      Precision = 18
      Size = 3
    end
    object cdsDetalhesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 150
    end
    object cdsDetalhesVIRTUAL_DESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_DESCRICAO'
      Size = 50
      Calculated = True
    end
    object cdsDetalhesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsDetalhesTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '##,###,##0.00'
      Expression = 'SUM(VALOR_ITEM)'
    end
  end
  object conexao: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = Transacao
    UpdateTransaction = Transacao
    Left = 40
    Top = 170
  end
  object Transacao: TFDTransaction
    Connection = conexao
    Left = 104
    Top = 168
  end
  object FDQLite: TFDPhysSQLiteDriverLink
    Left = 168
    Top = 168
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 239
    Top = 168
  end
  object qryConfigura: TFDQuery
    Connection = conexao
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'select * from configura')
    Left = 316
    Top = 168
    object qryConfiguracodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfiguraip: TStringField
      FieldName = 'ip'
      Origin = 'ip'
      Size = 30
    end
    object qryConfigurausuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object qryConfigurasenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object qryConfigurausabluetooth: TStringField
      FieldName = 'usabluetooth'
      Origin = 'usabluetooth'
      Size = 1
    end
  end
  object qryImpressora: TFDQuery
    Connection = conexao
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'select * from impressoras')
    Left = 396
    Top = 168
    object qryImpressoraid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryImpressoradescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object qryImpressoratipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object qryImpressoraativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
    object qryImpressoravias: TStringField
      FieldName = 'vias'
      Origin = 'vias'
      Size = 30
    end
  end
  object cdsMaiorVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 100
      end>
    ProviderName = 'dspMaiorVenda'
    RemoteServer = dspCon1
    Left = 296
    Top = 88
    object cdsMaiorVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object cdsMaiorItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspMaiorItem'
    RemoteServer = dspCon1
    Left = 384
    Top = 32
    object cdsMaiorItemCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 100
      end>
    ProviderName = 'dspProduto'
    RemoteServer = dspCon1
    Left = 296
    Top = 32
    object cdsProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = '##,###,##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsProdutosQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object cdsProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object cdsProdutosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
  end
  object cdsMaiorDetalhe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 100
      end>
    ProviderName = 'dspMaiorDetalhe'
    RemoteServer = dspCon1
    Left = 376
    Top = 88
    object cdsMaiorDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object cdsOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigem'
    RemoteServer = dspCon1
    Left = 456
    Top = 32
    object cdsOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsOrigemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object cdsOrigemFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
    end
  end
  object cdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDestino'
    RemoteServer = dspCon1
    Left = 464
    Top = 88
    object cdsDestinoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDestinoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object cdsDestinoFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
    end
  end
  object cdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExecute'
    RemoteServer = dspCon1
    Left = 40
    Top = 224
  end
  object cdsItensO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensO'
    RemoteServer = dspCon1
    Left = 536
    Top = 40
    object cdsItensOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsItensOFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Required = True
    end
    object cdsItensOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsItensOITEM: TSmallintField
      FieldName = 'ITEM'
    end
    object cdsItensOCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsItensOQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object cdsItensOE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object cdsItensOPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object cdsItensOVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Precision = 18
      Size = 2
    end
    object cdsItensOVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsItensOTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItensOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object cdsItensOUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsItensOQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object cdsItensOACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsItensOOS: TStringField
      FieldName = 'OS'
      Size = 1
    end
    object cdsItensOFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
    end
    object cdsItensOID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
    end
    object cdsItensOID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
    end
    object cdsItensOFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
    end
    object cdsItensOQTD_RESTANTE: TFMTBCDField
      FieldName = 'QTD_RESTANTE'
      Precision = 18
      Size = 3
    end
    object cdsItensOOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 150
    end
    object cdsItensOCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Size = 1
    end
    object cdsItensOMOV_ES: TStringField
      FieldName = 'MOV_ES'
      Size = 1
    end
    object cdsItensOOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object cdsItensOSABORES: TStringField
      FieldName = 'SABORES'
      Size = 200
    end
  end
  object cdsItensD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensD'
    RemoteServer = dspCon1
    Left = 528
    Top = 88
    object cdsItensDITEM: TSmallintField
      FieldName = 'ITEM'
    end
  end
  object cdsTaxa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTaxaServico'
    RemoteServer = dspCon1
    Left = 536
    Top = 168
    object cdsTaxaTIPO: TIntegerField
      FieldName = 'TIPO'
      ReadOnly = True
    end
    object cdsTaxaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTaxaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 100
    end
    object cdsTaxaTAXA: TFMTBCDField
      FieldName = 'TAXA'
      Precision = 18
      Size = 2
    end
  end
end
