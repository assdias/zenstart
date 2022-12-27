object Dados: TDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 437
  Width = 574
  object conexao: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = Transacao
    UpdateTransaction = Transacao
    Left = 56
    Top = 98
  end
  object Transacao: TFDTransaction
    Connection = conexao
    Left = 120
    Top = 96
  end
  object FDQLite: TFDPhysSQLiteDriverLink
    Left = 184
    Top = 96
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 255
    Top = 96
  end
  object qryPessoa: TFDQuery
    AfterPost = qryPessoaAfterPost
    AfterDelete = qryPessoaAfterPost
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from Pessoa'
      'where'
      'razao like :razao or'
      'CNPJ like :cnpj'
      'order by razao'
      '')
    Left = 48
    Top = 152
    ParamData = <
      item
        Name = 'RAZAO'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    object qryPessoaempresa: TSmallintField
      FieldName = 'empresa'
      Origin = 'empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoacodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      Required = True
    end
    object qryPessoatipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 10
    end
    object qryPessoacnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Required = True
    end
    object qryPessoaie: TStringField
      FieldName = 'ie'
      Origin = 'ie'
      Required = True
    end
    object qryPessoafantasia: TStringField
      FieldName = 'fantasia'
      Origin = 'fantasia'
      Required = True
      Size = 50
    end
    object qryPessoarazao: TStringField
      FieldName = 'razao'
      Origin = 'razao'
      Required = True
      Size = 50
    end
    object qryPessoaendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 50
    end
    object qryPessoanumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 10
    end
    object qryPessoacomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object qryPessoacodmun: TIntegerField
      FieldName = 'codmun'
      Origin = 'codmun'
      Required = True
    end
    object qryPessoamunicipio: TStringField
      FieldName = 'municipio'
      Origin = 'municipio'
      Required = True
      Size = 35
    end
    object qryPessoabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 35
    end
    object qryPessoauf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object qryPessoacep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Size = 8
    end
    object qryPessoafone1: TStringField
      FieldName = 'fone1'
      Origin = 'fone1'
      Size = 14
    end
    object qryPessoafone2: TStringField
      FieldName = 'fone2'
      Origin = 'fone2'
      Size = 14
    end
    object qryPessoacelular1: TStringField
      FieldName = 'celular1'
      Origin = 'celular1'
      Size = 14
    end
    object qryPessoacelular2: TStringField
      FieldName = 'celular2'
      Origin = 'celular2'
      Size = 14
    end
    object qryPessoaemail1: TStringField
      FieldName = 'email1'
      Origin = 'email1'
      Size = 60
    end
    object qryPessoaemail2: TStringField
      FieldName = 'email2'
      Origin = 'email2'
      Size = 60
    end
    object qryPessoasexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 10
    end
    object qryPessoadt_nasc: TDateField
      FieldName = 'dt_nasc'
      Origin = 'dt_nasc'
    end
    object qryPessoaecivil: TStringField
      FieldName = 'ecivil'
      Origin = 'ecivil'
      Size = 10
    end
    object qryPessoalimite: TBCDField
      FieldName = 'limite'
      Origin = 'limite'
      Precision = 15
      Size = 2
    end
    object qryPessoadia_pgto: TSmallintField
      FieldName = 'dia_pgto'
      Origin = 'dia_pgto'
    end
    object qryPessoanum_usu: TSmallintField
      FieldName = 'num_usu'
      Origin = 'num_usu'
    end
    object qryPessoafatura: TStringField
      FieldName = 'fatura'
      Origin = 'fatura'
      Size = 1
    end
    object qryPessoacheque: TStringField
      FieldName = 'cheque'
      Origin = 'cheque'
      Size = 1
    end
    object qryPessoaccf: TStringField
      FieldName = 'ccf'
      Origin = 'ccf'
      Size = 1
    end
    object qryPessoaspc: TStringField
      FieldName = 'spc'
      Origin = 'spc'
      Size = 1
    end
    object qryPessoaisento: TStringField
      FieldName = 'isento'
      Origin = 'isento'
      Size = 1
    end
    object qryPessoaforn: TStringField
      FieldName = 'forn'
      Origin = 'forn'
      Required = True
      Size = 1
    end
    object qryPessoafun: TStringField
      FieldName = 'fun'
      Origin = 'fun'
      Required = True
      Size = 1
    end
    object qryPessoacli: TStringField
      FieldName = 'cli'
      Origin = 'cli'
      Required = True
      Size = 1
    end
    object qryPessoafab: TStringField
      FieldName = 'fab'
      Origin = 'fab'
      Required = True
      Size = 1
    end
    object qryPessoatran: TStringField
      FieldName = 'tran'
      Origin = 'tran'
      Required = True
      Size = 1
    end
    object qryPessoaadm: TStringField
      FieldName = 'adm'
      Origin = 'adm'
      Required = True
      Size = 1
    end
    object qryPessoaativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
      Size = 1
    end
    object qryPessoadt_admissao: TDateField
      FieldName = 'dt_admissao'
      Origin = 'dt_admissao'
    end
    object qryPessoadt_demissao: TDateField
      FieldName = 'dt_demissao'
      Origin = 'dt_demissao'
    end
    object qryPessoasalario: TBCDField
      FieldName = 'salario'
      Origin = 'salario'
      Precision = 15
      Size = 2
    end
    object qryPessoapai: TStringField
      FieldName = 'pai'
      Origin = 'pai'
      Size = 50
    end
    object qryPessoamae: TStringField
      FieldName = 'mae'
      Origin = 'mae'
      Size = 50
    end
    object qryPessoanovo: TStringField
      FieldName = 'novo'
      Origin = 'novo'
      Size = 1
    end
  end
  object qryProduto: TFDQuery
    AfterPost = qryProdutoAfterPost
    AfterDelete = qryProdutoAfterPost
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from produto'
      'where'
      'descricao like :descri'
      'order by descricao'
      '')
    Left = 120
    Top = 152
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    object qryProdutocodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutotipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 30
    end
    object qryProdutocodbarra: TStringField
      FieldName = 'codbarra'
      Origin = 'codbarra'
    end
    object qryProdutoreferencia: TStringField
      FieldName = 'referencia'
      Origin = 'referencia'
    end
    object qryProdutounidade: TStringField
      FieldName = 'unidade'
      Origin = 'unidade'
      Required = True
      Size = 3
    end
    object qryProdutopr_custo: TBCDField
      FieldName = 'pr_custo'
      Origin = 'pr_custo'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object qryProdutopr_venda: TBCDField
      FieldName = 'pr_venda'
      Origin = 'pr_venda'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object qryProdutoqtd_atual: TFMTBCDField
      FieldName = 'qtd_atual'
      Origin = 'qtd_atual'
      Required = True
      Precision = 15
      Size = 6
    end
    object qryProdutodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
  object qryOrcamento: TFDQuery
    BeforePost = qryOrcamentoBeforePost
    AfterPost = qryOrcamentoAfterPost
    BeforeDelete = qryOrcamentoBeforeDelete
    AfterDelete = qryOrcamentoAfterPost
    OnCalcFields = qryOrcamentoCalcFields
    AggregatesActive = True
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from orcamento'
      'where'
      'cliente like :descri and'
      'data between :data1 and :data2'
      'order by fk_cliente, data,codigo'
      '')
    Left = 192
    Top = 152
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryOrcamentocodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentodata: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object qryOrcamentofkvendedor: TIntegerField
      FieldName = 'fkvendedor'
      Origin = 'fkvendedor'
    end
    object qryOrcamentofk_cliente: TIntegerField
      FieldName = 'fk_cliente'
      Origin = 'fk_cliente'
    end
    object qryOrcamentocliente: TStringField
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 50
    end
    object qryOrcamentotelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 13
    end
    object qryOrcamentocelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Size = 13
    end
    object qryOrcamentoendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object qryOrcamentonumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object qryOrcamentobairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 35
    end
    object qryOrcamentocidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 35
    end
    object qryOrcamentouf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object qryOrcamentocnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object qryOrcamentoforma_pagamento: TStringField
      FieldName = 'forma_pagamento'
      Origin = 'forma_pagamento'
      Size = 60
    end
    object qryOrcamentovalidade: TSmallintField
      FieldName = 'validade'
      Origin = 'validade'
    end
    object qryOrcamentosituacao: TStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 1
    end
    object qryOrcamentototal: TBCDField
      FieldName = 'total'
      Origin = 'total'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryOrcamentocep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qryOrcamentofkempresa: TIntegerField
      FieldName = 'fkempresa'
      Origin = 'fkempresa'
    end
    object qryOrcamentosubtotal: TBCDField
      FieldName = 'subtotal'
      Origin = 'subtotal'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryOrcamentopercentual: TBCDField
      FieldName = 'percentual'
      Origin = 'percentual'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryOrcamentodesconto: TBCDField
      FieldName = 'desconto'
      Origin = 'desconto'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryOrcamentovirtual_numero: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_numero'
      Calculated = True
    end
    object qryOrcamentovirtual_data: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_data'
      Calculated = True
    end
    object qryOrcamentovirtual_total: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_total'
      Calculated = True
    end
    object qryOrcamentovirtual_vendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'virtual_vendedor'
      LookupDataSet = qryVendedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'fkvendedor'
      Size = 30
      Lookup = True
    end
    object qryOrcamentoTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(TOTAL)'
    end
  end
  object qryItem: TFDQuery
    BeforeInsert = qryItemBeforeInsert
    BeforeEdit = qryItemBeforeInsert
    AfterPost = qryItemAfterPost
    AfterDelete = qryItemAfterPost
    OnCalcFields = qryItemCalcFields
    AggregatesActive = True
    MasterSource = dsOrcamento
    MasterFields = 'codigo'
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select item.*, pro.descricao from orcamento_item item'
      'left join produto pro on pro.codigo=item.fk_produto'
      'where'
      'item.fk_orcamento=:codigo'
      'order by item.item'
      '')
    Left = 256
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemcodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemfk_orcamento: TIntegerField
      FieldName = 'fk_orcamento'
      Origin = 'fk_orcamento'
      Required = True
    end
    object qryItemfk_produto: TIntegerField
      FieldName = 'fk_produto'
      Origin = 'fk_produto'
    end
    object qryItemdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryItemqtd: TBCDField
      FieldName = 'qtd'
      Origin = 'qtd'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object qryItempreco: TBCDField
      FieldName = 'preco'
      Origin = 'preco'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryItemtotal: TBCDField
      FieldName = 'total'
      Origin = 'total'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object qryItemitem: TSmallintField
      FieldName = 'item'
      Origin = 'item'
    end
    object qryItemvirtual_qtd: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_qtd'
      Calculated = True
    end
    object qryItemvirtual_total: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_total'
      Calculated = True
    end
    object qryItemvirtual_preco: TStringField
      FieldKind = fkCalculated
      FieldName = 'virtual_preco'
      Calculated = True
    end
    object qryItemttotal: TAggregateField
      FieldName = 'ttotal'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(total)'
    end
  end
  object qryCidade: TFDQuery
    AfterPost = qryCidadeAfterPost
    AfterDelete = qryCidadeAfterPost
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from cidade'
      'where'
      'descricao like :descri'
      'order by uf,descricao')
    Left = 312
    Top = 96
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    object qryCidadecodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      Required = True
    end
    object qryCidadedescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 35
    end
    object qryCidadecoduf: TIntegerField
      FieldName = 'coduf'
      Origin = 'coduf'
    end
    object qryCidadeuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
  end
  object qryExecute: TFDQuery
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    Left = 48
    Top = 208
  end
  object dsOrcamento: TDataSource
    DataSet = qryOrcamento
    Left = 120
    Top = 208
  end
  object cdsProdutos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produto'
      
        '  (codigo, descricao, tipo, codbarra, referencia, unidade, pr_cu' +
        'sto, pr_venda, qtd_atual)'
      'VALUES'
      
        '  (:codigo, :descricao, :tipo, :codbarra, :referencia, :unidade,' +
        ' :pr_custo, :pr_venda, :qtd_atual)')
    SQLDelete.Strings = (
      'DELETE FROM produto'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produto'
      'SET'
      
        '  codigo = :codigo, descricao = :descricao, tipo = :tipo, codbar' +
        'ra = :codbarra, referencia = :referencia, unidade = :unidade, pr' +
        '_custo = :pr_custo, pr_venda = :pr_venda, qtd_atual = :qtd_atual'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produto'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT codigo, descricao, tipo, codbarra, referencia, unidade, p' +
        'r_custo, pr_venda, qtd_atual FROM produto'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM produto')
    Connection = UniConexao
    SQL.Strings = (
      
        'select codigo, descricao, tipo, codbarra,referencia, unidade, pr' +
        '_custo, pr_venda, qtd_atual  from produto'
      'order by descricao')
    Left = 96
    Top = 32
    object cdsProdutoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object cdsProdutostipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 30
    end
    object cdsProdutoscodbarra: TStringField
      FieldName = 'codbarra'
    end
    object cdsProdutosreferencia: TStringField
      FieldName = 'referencia'
    end
    object cdsProdutosunidade: TStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsProdutospr_custo: TFloatField
      FieldName = 'pr_custo'
      Required = True
    end
    object cdsProdutospr_venda: TFloatField
      FieldName = 'pr_venda'
      Required = True
    end
    object cdsProdutosqtd_atual: TFloatField
      FieldName = 'qtd_atual'
      Required = True
    end
  end
  object cdsPessoas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO pessoa'
      
        '  (codigo, tipo, cnpj, ie, fantasia, razao, endereco, numero, co' +
        'mplemento, codmun, municipio, bairro, uf, cep, celular1, celular' +
        '2, isento)'
      'VALUES'
      
        '  (:codigo, :tipo, :cnpj, :ie, :fantasia, :razao, :endereco, :nu' +
        'mero, :complemento, :codmun, :municipio, :bairro, :uf, :cep, :ce' +
        'lular1, :celular2, :isento)')
    SQLDelete.Strings = (
      'DELETE FROM pessoa'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE pessoa'
      'SET'
      
        '  codigo = :codigo, tipo = :tipo, cnpj = :cnpj, ie = :ie, fantas' +
        'ia = :fantasia, razao = :razao, endereco = :endereco, numero = :' +
        'numero, complemento = :complemento, codmun = :codmun, municipio ' +
        '= :municipio, bairro = :bairro, uf = :uf, cep = :cep, celular1 =' +
        ' :celular1, celular2 = :celular2, isento = :isento'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM pessoa'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT codigo, tipo, cnpj, ie, fantasia, razao, endereco, numero' +
        ', complemento, codmun, municipio, bairro, uf, cep, celular1, cel' +
        'ular2, isento FROM pessoa'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM pessoa')
    Connection = UniConexao
    SQL.Strings = (
      'select * from pessoa'
      'order by razao')
    Left = 152
    Top = 32
    object cdsPessoascodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsPessoastipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 10
    end
    object cdsPessoascnpj: TStringField
      FieldName = 'cnpj'
      Required = True
    end
    object cdsPessoasie: TStringField
      FieldName = 'ie'
      Required = True
    end
    object cdsPessoasrazao: TStringField
      FieldName = 'razao'
      Required = True
      Size = 50
    end
    object cdsPessoasendereco: TStringField
      FieldName = 'endereco'
      Required = True
      Size = 50
    end
    object cdsPessoasfantasia: TStringField
      FieldName = 'fantasia'
      Required = True
      Size = 50
    end
    object cdsPessoasnumero: TStringField
      FieldName = 'numero'
      Required = True
      Size = 10
    end
    object cdsPessoascomplemento: TStringField
      FieldName = 'complemento'
      Required = True
      Size = 50
    end
    object cdsPessoascodmun: TIntegerField
      FieldName = 'codmun'
      Required = True
    end
    object cdsPessoasmunicipio: TStringField
      FieldName = 'municipio'
      Required = True
      Size = 35
    end
    object cdsPessoasbairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 35
    end
    object cdsPessoasuf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 2
    end
    object cdsPessoascep: TStringField
      FieldName = 'cep'
      Required = True
      Size = 8
    end
    object cdsPessoascelular1: TStringField
      FieldName = 'celular1'
      Required = True
      Size = 14
    end
    object cdsPessoascelular2: TStringField
      FieldName = 'celular2'
      Size = 14
    end
    object cdsPessoasisento: TStringField
      FieldName = 'isento'
      Size = 1
    end
  end
  object cdsOrcamento: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO orcamento'
      
        '  (codigo, data, fk_cliente, forma_pagamento, validade, situacao' +
        ', total, subtotal, percentual, desconto, fk_vendedor)'
      'VALUES'
      
        '  (:codigo, :data, :fk_cliente, :forma_pagamento, :validade, :si' +
        'tuacao, :total, :subtotal, :percentual, :desconto,  :fk_vendedor' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM orcamento'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE orcamento'
      'SET'
      
        '  codigo = :codigo, data = :data, fk_cliente = :fk_cliente, form' +
        'a_pagamento = :forma_pagamento, validade = :validade, situacao =' +
        ' :situacao, total = :total, subtotal = :subtotal, percentual = :' +
        'percentual, desconto = :desconto, fk_vendedor = :fk_vendedor'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM orcamento'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT codigo, data, fk_cliente, forma_pagamento, validade, situ' +
        'acao, total, subtotal, percentual, desconto, fk_vendedor FROM or' +
        'camento'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM orcamento')
    Connection = UniConexao
    SQL.Strings = (
      'select orc.* from orcamento orc'
      'where '
      'orc.codigo=:cod'
      'order by codigo')
    Left = 208
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        Value = nil
      end>
    object cdsOrcamentocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsOrcamentodata: TDateField
      FieldName = 'data'
    end
    object cdsOrcamentofk_cliente: TIntegerField
      FieldName = 'fk_cliente'
    end
    object cdsOrcamentoforma_pagamento: TStringField
      FieldName = 'forma_pagamento'
      Size = 60
    end
    object cdsOrcamentovalidade: TSmallintField
      FieldName = 'validade'
    end
    object cdsOrcamentosituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
    object cdsOrcamentototal: TFloatField
      FieldName = 'total'
    end
    object cdsOrcamentosubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object cdsOrcamentopercentual: TFloatField
      FieldName = 'percentual'
    end
    object cdsOrcamentodesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsOrcamentofk_vendedor: TIntegerField
      FieldName = 'fk_vendedor'
      Required = True
    end
  end
  object cdsItens: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO orcamento_item'
      '  (codigo, fk_orcamento, fk_produto, qtd, preco, total)'
      'VALUES'
      '  (:codigo, :fk_orcamento, :fk_produto, :qtd, :preco, :total)')
    SQLDelete.Strings = (
      'DELETE FROM orcamento_item'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE orcamento_item'
      'SET'
      
        '  codigo = :codigo, fk_orcamento = :fk_orcamento, fk_produto = :' +
        'fk_produto, qtd = :qtd, preco = :preco, total = :total'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM orcamento_item'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT codigo, fk_orcamento, fk_produto, qtd, preco, total FROM ' +
        'orcamento_item'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM orcamento_item')
    Connection = UniConexao
    SQL.Strings = (
      'select orc.*, pro.descricao from orcamento_item orc'
      'left join produto pro on pro.codigo=orc.fk_produto'
      'where '
      'orc.fk_orcamento=:CODIGO')
    Left = 264
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
    object cdsItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsItensfk_orcamento: TIntegerField
      FieldName = 'fk_orcamento'
      Required = True
    end
    object cdsItensfk_produto: TIntegerField
      FieldName = 'fk_produto'
    end
    object cdsItensqtd: TFloatField
      FieldName = 'qtd'
    end
    object cdsItenspreco: TFloatField
      FieldName = 'preco'
    end
    object cdsItenstotal: TFloatField
      FieldName = 'total'
    end
    object cdsItensdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsCidade: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cidade'
      '  (codigo, descricao, coduf, uf)'
      'VALUES'
      '  (:codigo, :descricao, :coduf, :uf)')
    SQLDelete.Strings = (
      'DELETE FROM cidade'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE cidade'
      'SET'
      
        '  codigo = :codigo, descricao = :descricao, coduf = :coduf, uf =' +
        ' :uf'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM cidade'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT codigo, descricao, coduf, uf FROM cidade'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM cidade')
    Connection = UniConexao
    SQL.Strings = (
      'select  * from cidade'
      'order by descricao')
    Left = 312
    Top = 32
    object cdsCidadecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object cdsCidadedescricao: TStringField
      FieldName = 'descricao'
      Size = 35
    end
    object cdsCidadecoduf: TIntegerField
      FieldName = 'coduf'
    end
    object cdsCidadeuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 376
    Top = 32
  end
  object UniConexao: TUniConnection
    AutoCommit = False
    ProviderName = 'MySQL'
    Port = 3306
    SpecificOptions.Strings = (
      'MySQL.ConnectionTimeout=10000')
    LoginPrompt = False
    Left = 56
    Top = 32
    EncryptedPassword = '8CFF90FF93FF8AFFABFFB7FFBAFFCCFFCDFFCEFF'
  end
  object qryNumerador: TFDQuery
    Connection = conexao
    Left = 192
    Top = 208
  end
  object cdsNumerador: TUniQuery
    Connection = UniConexao
    SQL.Strings = (
      'select max(codigo) codigo from pessoa')
    Left = 432
    Top = 32
    object cdsNumeradorcodigo: TIntegerField
      FieldName = 'codigo'
      ReadOnly = True
    end
  end
  object cdsVendedor: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendedor'
      '  (codigo, nome)'
      'VALUES'
      '  (:codigo, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM vendedor'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE vendedor'
      'SET'
      '  codigo = :codigo, nome = :nome'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM vendedor'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT codigo, nome FROM vendedor'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM vendedor')
    Connection = UniConexao
    SQL.Strings = (
      'select  * from vendedor'
      'order by nome')
    Left = 488
    Top = 32
    object cdsVendedorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object cdsVendedornome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 30
    end
  end
  object qryVendedor: TFDQuery
    AfterPost = qryConfigAfterPost
    AfterDelete = qryConfigAfterPost
    Connection = conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from vendedores')
    Left = 376
    Top = 96
    object qryVendedorcodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryVendedornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
  end
  object qryConfigura: TFDQuery
    AfterPost = qryConfiguraAfterPost
    Connection = conexao
    SQL.Strings = (
      'select * from configura')
    Left = 264
    Top = 208
    object qryConfiguracodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfiguraimpressora: TStringField
      FieldName = 'impressora'
      Origin = 'impressora'
      Size = 50
    end
    object qryConfiguraservidor: TStringField
      FieldName = 'servidor'
      Origin = 'servidor'
      Size = 100
    end
    object qryConfigurabanco: TStringField
      FieldName = 'banco'
      Origin = 'banco'
      Size = 100
    end
    object qryConfigurausuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 100
    end
    object qryConfigurasenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 100
    end
    object qryConfiguraempresa: TStringField
      FieldName = 'empresa'
      Origin = 'empresa'
      Size = 35
    end
    object qryConfiguraendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object qryConfiguracidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object qryConfigurabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object qryConfiguracep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qryConfiguratelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 14
    end
    object qryConfiguratipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object qryConfigurauf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
  end
  object qryUsuarios: TFDQuery
    AfterPost = qryConfiguraAfterPost
    Connection = conexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 312
    Top = 152
    object qryUsuarioscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryUsuariosusuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object qryUsuariossenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object qryUsuariosfk_vendedor: TIntegerField
      FieldName = 'fk_vendedor'
      Origin = 'fk_vendedor'
    end
    object qryUsuariosvendedor: TStringField
      FieldName = 'vendedor'
      Origin = 'vendedor'
      Size = 30
    end
  end
end
