object frmTela: TfrmTela
  Left = 0
  Top = 0
  Align = alRight
  BorderStyle = bsDialog
  ClientHeight = 488
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 312
    Height = 488
    Align = alClient
    DataSource = dsTebela
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CAMPO'
        ReadOnly = True
        Title.Caption = 'Campo'
        Width = 241
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = 'Visivel'
        Visible = True
      end>
  end
  object qryTabela: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from configura_tela'
      'where'
      '    tabela =:TABELA AND'
      '    FK_USUARIO=:FK_USUARIO'
      'ORDER BY 1'
      '')
    Left = 152
    Top = 248
    ParamData = <
      item
        Name = 'TABELA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'FK_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryTabelaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabelaTABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      Size = 50
    end
    object qryTabelaCAMPO: TIntegerField
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
    end
    object qryTabelaFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryTabelaTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
    end
    object qryTabelaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object dsTebela: TDataSource
    DataSet = qryTabela
    Left = 80
    Top = 248
  end
end
