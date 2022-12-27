object DadosLaudo: TDadosLaudo
  OldCreateOrder = False
  Height = 266
  Width = 500
  object qryLaudo: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from laudo'
      'where'
      'situacao='#39'P'#39' and cnpj=:cnpj')
    Left = 208
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        Value = nil
      end>
    object qryLaudocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryLaudodata_classificacao: TDateField
      FieldName = 'data_classificacao'
    end
    object qryLaudomunicipio_classificacao: TStringField
      FieldName = 'municipio_classificacao'
      Size = 50
    end
    object qryLaudolocal_classificao: TStringField
      FieldName = 'local_classificao'
      Size = 50
    end
    object qryLaudonumero_contrato: TStringField
      FieldName = 'numero_contrato'
      Size = 50
    end
    object qryLaudolacre: TStringField
      FieldName = 'lacre'
      Size = 50
    end
    object qryLaudoorigem: TStringField
      FieldName = 'origem'
      Size = 50
    end
    object qryLaudodestino: TStringField
      FieldName = 'destino'
      Size = 50
    end
    object qryLaudoplaca: TStringField
      FieldName = 'placa'
      Size = 10
    end
    object qryLaudopeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object qryLaudopeso_tara: TFloatField
      FieldName = 'peso_tara'
    end
    object qryLaudopeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object qryLaudonota_fiscal: TIntegerField
      FieldName = 'nota_fiscal'
    end
    object qryLaudoproduto: TStringField
      FieldName = 'produto'
      Size = 50
    end
    object qryLaudoveiculo_vistoria: TStringField
      FieldName = 'veiculo_vistoria'
      Size = 5
    end
    object qryLaudomotorista: TStringField
      FieldName = 'motorista'
      Size = 50
    end
    object qryLaudocpf_motorista: TStringField
      FieldName = 'cpf_motorista'
      Size = 11
    end
    object qryLaudotipo_produto: TStringField
      FieldName = 'tipo_produto'
      Size = 10
    end
    object qryLaudoqueimados: TFloatField
      FieldName = 'queimados'
    end
    object qryLaudoardidos: TFloatField
      FieldName = 'ardidos'
    end
    object qryLaudomofados: TFloatField
      FieldName = 'mofados'
    end
    object qryLaudoavariados: TFloatField
      FieldName = 'avariados'
    end
    object qryLaudoimpurezas: TFloatField
      FieldName = 'impurezas'
    end
    object qryLaudoamassados: TFloatField
      FieldName = 'amassados'
    end
    object qryLaudoumidade: TFloatField
      FieldName = 'umidade'
    end
    object qryLaudoesverdeados: TFloatField
      FieldName = 'esverdeados'
    end
    object qryLaudopicados: TFloatField
      FieldName = 'picados'
    end
    object qryLaudofermentados: TFloatField
      FieldName = 'fermentados'
    end
    object qryLaudoinsetos: TStringField
      FieldName = 'insetos'
      Size = 5
    end
    object qryLaudosementes_toxicas: TStringField
      FieldName = 'sementes_toxicas'
      Size = 5
    end
    object qryLaudoclassificador: TStringField
      FieldName = 'classificador'
      Size = 50
    end
    object qryLaudodata_emissao: TDateField
      FieldName = 'data_emissao'
    end
    object qryLaudolaudo: TStringField
      FieldName = 'laudo'
      Size = 50
    end
    object qryLaudosituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
    object qryLaudocnpj: TStringField
      FieldName = 'cnpj'
      Required = True
    end
    object qryLaudocliente: TStringField
      FieldName = 'cliente'
      Required = True
      Size = 50
    end
  end
  object MySQL: TMySQLUniProvider
    Left = 136
    Top = 10
  end
  object Conexao: TUniConnection
    AutoCommit = False
    ProviderName = 'MySQL'
    Port = 3306
    LoginPrompt = False
    Left = 72
    Top = 10
  end
  object qryExecute: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      '')
    Left = 280
    Top = 10
  end
end
