object frmPOS: TfrmPOS
  Left = 0
  Top = 0
  ActiveControl = cbBandeira
  BorderStyle = bsDialog
  Caption = 'Digita'#231#227'o de dados POS'
  ClientHeight = 513
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 735
    Height = 204
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 76
    object Label6: TLabel
      Left = 96
      Top = 21
      Width = 58
      Height = 17
      Alignment = taRightJustify
      Caption = 'Bandeira :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 61
      Top = 58
      Width = 93
      Height = 17
      Alignment = taRightJustify
      Caption = 'Credenciadora :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 117
      Top = 90
      Width = 37
      Height = 17
      Alignment = taRightJustify
      Caption = 'Valor :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 121
      Top = 131
      Width = 33
      Height = 17
      Alignment = taRightJustify
      Caption = 'NSU :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 12
      Top = 166
      Width = 142
      Height = 17
      Alignment = taRightJustify
      Caption = 'C'#243'digo de Autoriza'#231#227'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtValor: TJvCalcEdit
      Left = 160
      Top = 87
      Width = 201
      Height = 29
      DecimalPlaceRound = True
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object edtNSU: TEdit
      Left = 160
      Top = 122
      Width = 201
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 20
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
    end
    object edtCodigoAutorizacao: TEdit
      Left = 160
      Top = 157
      Width = 201
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 20
      NumbersOnly = True
      ParentFont = False
      TabOrder = 4
    end
    object btnInserir: TButton
      Left = 376
      Top = 89
      Width = 137
      Height = 31
      Caption = 'F9 Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnInserirClick
    end
    object tnConcluir: TButton
      Left = 376
      Top = 122
      Width = 137
      Height = 32
      Caption = 'F10 Concluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = tnConcluirClick
    end
    object cbCredenciadora: TDBLookupComboboxEh
      Left = 160
      Top = 53
      Width = 353
      Height = 29
      DynProps = <>
      DataField = ''
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsCredenciadora
      ParentFont = False
      TabOrder = 1
      Visible = True
    end
    object cbBandeira: TDBLookupComboboxEh
      Left = 160
      Top = 18
      Width = 353
      Height = 29
      DynProps = <>
      DataField = ''
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsBandeira
      ParentFont = False
      TabOrder = 0
      Visible = True
    end
    object btnCancelar: TButton
      Left = 376
      Top = 157
      Width = 137
      Height = 32
      Caption = 'ESC Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnCancelarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 15
      Top = 15
      Width = 705
      Height = 55
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Align = alClient
      AutoSize = False
      Caption = 
        'Ser'#225' necess'#225'rio informar os dados do pagamento no POS manualment' +
        'e pois n'#227'o foi poss'#237'vel obt'#234'-los atrav'#233's do Integrador.'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 12
      ExplicitTop = 12
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 277
    Width = 735
    Height = 170
    ActivePage = TabSheet1
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    ExplicitWidth = 694
    object TabSheet1: TTabSheet
      Caption = 'Lan'#231'amentos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 686
      ExplicitHeight = 190
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 727
        Height = 135
        Align = alClient
        DataSource = dsPOS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        AlternateRowColor = 14145495
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 21
        TitleRowHeight = 21
        Columns = <
          item
            Expanded = False
            FieldName = 'VIRTUAL_BANDEIRA'
            Title.Caption = 'Bandeira'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIRTUAL_CREDENCIADORA'
            Title.Caption = 'Credenciadora'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSU'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_AUTORIZACAO'
            Title.Caption = 'Autoriza'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 447
    Width = 735
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = 14581528
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 3
    ExplicitWidth = 580
    object Label14: TLabel
      Left = 417
      Top = 0
      Width = 145
      Height = 50
      Margins.Left = 5
      Align = alRight
      Caption = 'TOTAL PAGO MAQUININHA R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblGeral: TLabel
      Left = 585
      Top = 0
      Width = 88
      Height = 65
      Align = alRight
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 0
      Top = 0
      Width = 9
      Height = 66
    end
    object Splitter2: TSplitter
      Left = 721
      Top = 0
      Width = 14
      Height = 66
      Align = alRight
      ExplicitLeft = 680
    end
    object Label2: TLabel
      Left = 9
      Top = 0
      Width = 155
      Height = 50
      Margins.Left = 5
      Align = alLeft
      Caption = 'TOTAL VENDA EM CART'#195'O R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblTVenda: TLabel
      Left = 166
      Top = 0
      Width = 88
      Height = 65
      Align = alLeft
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object qryPOS: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from venda_mfe_pos'
      'where'
      'fk_venda=:codigo'
      'order by 1')
    Left = 360
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPOSFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryPOSFKCREDENCIADORA: TIntegerField
      FieldName = 'FKCREDENCIADORA'
      Origin = 'FKCREDENCIADORA'
    end
    object qryPOSFKBANDEIRA: TIntegerField
      FieldName = 'FKBANDEIRA'
      Origin = 'FKBANDEIRA'
    end
    object qryPOSNSU: TStringField
      FieldName = 'NSU'
      Origin = 'NSU'
    end
    object qryPOSCOD_AUTORIZACAO: TIntegerField
      FieldName = 'COD_AUTORIZACAO'
      Origin = 'COD_AUTORIZACAO'
    end
    object qryPOSVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qryPOSVIRTUAL_BANDEIRA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_BANDEIRA'
      LookupDataSet = qryBandeira
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FKBANDEIRA'
      Size = 50
      Lookup = True
    end
    object qryPOSVIRTUAL_CREDENCIADORA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CREDENCIADORA'
      LookupDataSet = qryCredenciadora
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FKCREDENCIADORA'
      Size = 50
      Lookup = True
    end
    object qryPOSTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '0.00'
      Expression = 'SUM(VALOR)'
    end
  end
  object qryBandeira: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from bandeira'
      'order by 2')
    Left = 424
    Top = 256
    object qryBandeiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBandeiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryBandeiraATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryCredenciadora: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from credenciadora'
      'order by 2')
    Left = 504
    Top = 256
    object qryCredenciadoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCredenciadoraNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryCredenciadoraATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object dsPOS: TDataSource
    DataSet = qryPOS
    OnDataChange = dsPOSDataChange
    Left = 352
    Top = 312
  end
  object dsBandeira: TDataSource
    DataSet = qryBandeira
    Left = 424
    Top = 320
  end
  object dsCredenciadora: TDataSource
    DataSet = qryCredenciadora
    Left = 504
    Top = 320
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 608
    Top = 216
  end
end
