object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 439
  Width = 767
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\Gestor\Dados\DADOS.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 64
    Top = 8
  end
  object FDWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 56
  end
  object FDFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Gestor\fbclient.dll'
    Left = 63
    Top = 120
  end
  object dspUsuarios: TDataSetProvider
    DataSet = qryUsuarios
    Left = 168
    Top = 8
  end
  object qryUsuarios: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, login, senha_app, fk_vendedor from usuarios'
      'where'
      'login=:login and SENHA_APP=:senha and ativo='#39'S'#39)
    Left = 168
    Top = 56
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object qryMesas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from mesas'
      '')
    Left = 256
    Top = 56
  end
  object dspMesas: TDataSetProvider
    DataSet = qryMesas
    Left = 256
    Top = 8
  end
  object dspVendas_Master: TDataSetProvider
    DataSet = qryVendas_Master
    Left = 344
    Top = 8
  end
  object qryVendas_Master: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from vendas_master'
      'where'
      'codigo=:codigo'
      'ORDER BY CODIGO')
    Left = 344
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsVendas_Detalhe: TDataSetProvider
    DataSet = qryVendas_Detalhe
    Left = 168
    Top = 112
  end
  object qryVendas_Detalhe: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select vd.*, pro.descricao from vendas_detalhe vd'
      'left join produto pro on pro.codigo=vd.id_produto'
      'where'
      'vd.fkvenda=:codigo'
      'order by vd.item')
    Left = 168
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 464
    Top = 8
  end
  object qryProduto: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select codigo, descricao, pr_venda, qtd_atual, unidade, compleme' +
        'nto from produto'
      'where '
      'restautante='#39'S'#39' and'
      'descricao like :descricao'
      'order by descricao')
    Left = 464
    Top = 64
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
  end
  object dsVendas_Master: TDataSource
    DataSet = qryVendas_Master
    Left = 344
    Top = 112
  end
  object dspMaiorVenda: TDataSetProvider
    DataSet = qryMaiorVenda
    Left = 256
    Top = 112
  end
  object qryMaiorVenda: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select max(codigo) as codigo from vendas_master'
      '')
    Left = 256
    Top = 160
  end
  object qryMaiorItem: TFDQuery
    MasterFields = 'CODIGO'
    Connection = Conexao
    SQL.Strings = (
      'select max(item) as codigo from vendas_detalhe'
      'where'
      'fkvenda=:codigo'
      '')
    Left = 344
    Top = 208
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspMaiorItem: TDataSetProvider
    DataSet = qryMaiorItem
    Left = 344
    Top = 160
  end
  object dspMaiorDetalhe: TDataSetProvider
    DataSet = cdsMaiorDetalhe
    Left = 256
    Top = 208
  end
  object cdsMaiorDetalhe: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select max(codigo) as codigo from vendas_detalhe'
      '')
    Left = 256
    Top = 256
  end
  object qryOrigem: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, descricao, fk_venda from mesas'
      'where'
      'situacao='#39'O'#39
      'order by codigo')
    Left = 464
    Top = 128
  end
  object qryDestino: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, descricao, fk_venda from mesas'
      'order by codigo')
    Left = 464
    Top = 184
  end
  object dspOrigem: TDataSetProvider
    DataSet = qryOrigem
    Left = 560
    Top = 128
  end
  object dspDestino: TDataSetProvider
    DataSet = qryDestino
    Left = 560
    Top = 184
  end
  object qryExecute: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      '')
    Left = 552
    Top = 32
  end
  object dspExecute: TDataSetProvider
    DataSet = qryExecute
    Left = 624
    Top = 32
  end
  object qryItensO: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from vendas_detalhe'
      'where'
      'fkvenda=:venda'
      'order by codigo')
    Left = 464
    Top = 248
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qyritensD: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select ITEM from vendas_detalhe'
      'where'
      'fkvenda=:venda'
      'order by codigo')
    Left = 464
    Top = 336
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspItensO: TDataSetProvider
    DataSet = qryItensO
    Left = 552
    Top = 280
  end
  object dspItensD: TDataSetProvider
    DataSet = qyritensD
    Left = 552
    Top = 336
  end
end
