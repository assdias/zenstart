object FrmPDV: TFrmPDV
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PDV'
  ClientHeight = 803
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PainelMain: TPanel
    Left = 0
    Top = 0
    Width = 1294
    Height = 784
    Align = alClient
    Caption = 'PainelMain'
    ShowCaption = False
    TabOrder = 0
    object PanelContainer: TPanel
      Left = 1
      Top = 1
      Width = 1292
      Height = 782
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object fpnlComandos: TFlowPanel
        Left = 0
        Top = 685
        Width = 1292
        Height = 97
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'fpnlComandos'
        Color = 427252
        FlowStyle = fsTopBottomLeftRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Padding.Left = 10
        Padding.Top = 5
        Padding.Right = 10
        Padding.Bottom = 5
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          1292
          97)
        object btnCaixa: TLabel
          AlignWithMargins = True
          Left = 13
          Top = 8
          Width = 148
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F2 ] Abrir Caixa'
          StyleElements = []
          OnClick = btnCaixaClick
        end
        object BtnSuprimento: TLabel
          AlignWithMargins = True
          Left = 13
          Top = 29
          Width = 148
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F10 ] Suprimento'
          StyleElements = []
          OnClick = BtnSuprimentoClick
        end
        object btnSangria: TLabel
          AlignWithMargins = True
          Left = 13
          Top = 50
          Width = 148
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F9 ] Sangria (Retirada)'
          StyleElements = []
          OnClick = btnSangriaClick
        end
        object btnGaveta: TLabel
          AlignWithMargins = True
          Left = 13
          Top = 71
          Width = 148
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + A ] Abrir Gaveta'
          StyleElements = []
          OnClick = actAbrirExecute
        end
        object btnImportar: TLabel
          AlignWithMargins = True
          Left = 174
          Top = 8
          Width = 118
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F5 ] Importar'
          StyleElements = []
          OnClick = btnImportarClick
        end
        object btnVendedor: TLabel
          AlignWithMargins = True
          Left = 174
          Top = 29
          Width = 118
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F3 ] Vendedor'
          StyleElements = []
          OnClick = btnVendedorClick
        end
        object btnClientes: TLabel
          AlignWithMargins = True
          Left = 174
          Top = 50
          Width = 118
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + C ] Clientes'
          StyleElements = []
          OnClick = actClienteExecute
        end
        object btnReceber: TLabel
          AlignWithMargins = True
          Left = 174
          Top = 71
          Width = 118
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + R ] Receber'
          StyleElements = []
          OnClick = actReceberExecute
        end
        object btnFinaliza: TLabel
          AlignWithMargins = True
          Left = 305
          Top = 8
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F7 ] Concluir venda'
          StyleElements = []
          OnClick = btnFinalizaClick
        end
        object btnCancVenda: TLabel
          AlignWithMargins = True
          Left = 305
          Top = 29
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F6 ] Cancelar Venda'
          StyleElements = []
          OnClick = btnCancVendaClick
        end
        object btnAvancada: TLabel
          AlignWithMargins = True
          Left = 305
          Top = 50
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F4 ] Busca Avan'#231'ada'
          StyleElements = []
          OnClick = btnAvancadaClick
        end
        object btnBuscaPreco: TLabel
          AlignWithMargins = True
          Left = 305
          Top = 71
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + L ] Busca Pre'#231'o'
          StyleElements = []
          OnClick = actBuscaExecute
        end
        object btnDesconto: TLabel
          AlignWithMargins = True
          Left = 463
          Top = 8
          Width = 190
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + D ]  Desconto no Item'
          StyleElements = []
          OnClick = btnDescontoClick
        end
        object btnRemoveProduto: TLabel
          AlignWithMargins = True
          Left = 463
          Top = 29
          Width = 190
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F11 ] Remover Item'
          StyleElements = []
          OnClick = btnRemoveProdutoClick
        end
        object btnDelItem: TLabel
          AlignWithMargins = True
          Left = 463
          Top = 50
          Width = 190
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Del ] Deleta Item'
          StyleElements = []
          OnClick = btnDelItemClick
        end
        object btnTef: TLabel
          AlignWithMargins = True
          Left = 463
          Top = 71
          Width = 190
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + T ] Administrativo TEF'
          StyleElements = []
          OnClick = btnTefClick
        end
        object btnReimprimir: TLabel
          AlignWithMargins = True
          Left = 666
          Top = 8
          Width = 180
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + I ]  Reimprimir NFCe'
          StyleElements = []
          OnClick = btnReimprimirClick
        end
        object btnImprimirPedidos: TLabel
          AlignWithMargins = True
          Left = 666
          Top = 29
          Width = 180
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + S ] Imprimir Pedido'
          StyleElements = []
          OnClick = btnImprimirPedidosClick
        end
        object btnImprimeItem: TLabel
          AlignWithMargins = True
          Left = 666
          Top = 50
          Width = 180
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + E ] Imprimir Item'
          StyleElements = []
          OnClick = btnImprimeItemClick
        end
        object btnResumo: TLabel
          AlignWithMargins = True
          Left = 666
          Top = 71
          Width = 180
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ F8 ] Resumo Caixa'
          StyleElements = []
          OnClick = btnResumoClick
        end
        object btnAbrirMesa: TLabel
          AlignWithMargins = True
          Left = 859
          Top = 8
          Width = 175
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + N ] Abrir Mesa'
          StyleElements = []
          OnClick = btnAbrirMesaClick
        end
        object btnAtualizaMesa: TLabel
          AlignWithMargins = True
          Left = 859
          Top = 29
          Width = 175
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + M ] Atualizar Mesas'
          StyleElements = []
          OnClick = btnAtualizaMesaClick
        end
        object btnTransferirMesa: TLabel
          AlignWithMargins = True
          Left = 859
          Top = 50
          Width = 175
          Height = 17
          Cursor = crHandPoint
          Margins.Right = 10
          Margins.Bottom = 0
          Anchors = []
          AutoSize = False
          Caption = '[ Ctrl + B ] Transferir Mesa'
          StyleElements = []
          OnClick = btnTransferirMesaClick
        end
      end
      object nbPage: TNotebook
        Left = 0
        Top = 100
        Width = 1292
        Height = 585
        Align = alClient
        TabOrder = 1
        OnPageChanged = nbPagePageChanged
        object TPage
          Left = 0
          Top = 0
          Caption = 'PDV'
          object PanelPDV: TPanel
            Left = 0
            Top = 0
            Width = 1292
            Height = 585
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 5
            Color = 15066597
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object pnlPDVLateral: TPanel
              Left = 992
              Top = 5
              Width = 295
              Height = 575
              Align = alRight
              BevelOuter = bvNone
              Caption = 'pnlPDVLateral'
              ShowCaption = False
              TabOrder = 0
              object dbimgProduto: TDBImage
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 289
                Height = 351
                Margins.Top = 0
                Align = alClient
                BorderStyle = bsNone
                DataField = 'FOTO'
                DataSource = dsProdutoFoto
                Proportional = True
                ReadOnly = True
                TabOrder = 0
              end
              object pnlPDVItem: TPanel
                Left = 0
                Top = 354
                Width = 295
                Height = 221
                Align = alBottom
                AutoSize = True
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -20
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object pnlPDVItemTotal: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 149
                  Width = 265
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemTotal'
                  ShowCaption = False
                  TabOrder = 0
                  object lblTotalP: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 257
                    Height = 36
                    Margins.Right = 5
                    Align = alClient
                    Alignment = taRightJustify
                    Caption = '0,00'
                    Color = clSilver
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitLeft = 211
                    ExplicitWidth = 49
                    ExplicitHeight = 32
                  end
                  object lblPDVItemTotal: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 259
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Total do Item'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 117
                  end
                  object shpDivPDVTotal: TShape
                    Left = 0
                    Top = 28
                    Width = 265
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                  end
                end
                object pnlPDVItemQuantidade: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 5
                  Width = 265
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 5
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemQuantidade'
                  ShowCaption = False
                  TabOrder = 1
                  object lblPDVItemQuantidade: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 259
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Quantidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 104
                  end
                  object shpDivPDVQuantidade: TShape
                    Left = 0
                    Top = 28
                    Width = 265
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                  end
                  object edtQtdP: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 259
                    Height = 36
                    TabStop = False
                    Align = alClient
                    Alignment = taRightJustify
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    MaxLength = 999999
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '1'
                    StyleElements = [seClient, seBorder]
                    OnEnter = edtQtdPEnter
                    OnExit = edtQtdPExit
                    OnKeyPress = edtQtdPKeyPress
                  end
                end
                object pnlPDVItemValorUnitario: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 77
                  Width = 265
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemValorUnitario'
                  ShowCaption = False
                  TabOrder = 2
                  object lblPreco: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 259
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Pre'#231'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 51
                  end
                  object shpDivPDVPreco: TShape
                    Left = 0
                    Top = 28
                    Width = 265
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                  end
                  object edtPrecoP: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 259
                    Height = 36
                    TabStop = False
                    Align = alClient
                    Alignment = taRightJustify
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    MaxLength = 999999
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '0,00'
                    StyleElements = [seClient, seBorder]
                    OnExit = edtPrecoPExit
                    OnKeyPress = edtPrecoPKeyPress
                  end
                end
              end
            end
            object pnlPDVContainer: TPanel
              AlignWithMargins = True
              Left = 15
              Top = 5
              Width = 977
              Height = 575
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlPDVContainer'
              ShowCaption = False
              TabOrder = 1
              object grpSelecaoP: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 977
                Height = 81
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 5
                Align = alTop
                BevelOuter = bvNone
                Caption = 'F12  C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentCtl3D = False
                ParentFont = False
                ShowCaption = False
                TabOrder = 0
                object lblPDVItemProduto: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 971
                  Height = 25
                  Align = alTop
                  Caption = 'F12  C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitWidth = 486
                end
                object shpPDVItemProduto: TShape
                  Left = 0
                  Top = 31
                  Width = 977
                  Height = 2
                  Align = alTop
                  Pen.Color = 427252
                  ExplicitTop = 36
                  ExplicitWidth = 987
                end
                object EdtProdutoP: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 36
                  Width = 971
                  Height = 40
                  Margins.Bottom = 5
                  Align = alClient
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  MaxLength = 40
                  ParentFont = False
                  TabOrder = 0
                  TextHint = 'Digite aqui o que procura :)'
                  StyleElements = [seClient]
                  OnChange = EdtProdutoPChange
                  OnKeyDown = EdtProdutoPKeyDown
                  OnKeyPress = EdtProdutoPKeyPress
                end
              end
              object pnlGrid: TPanel
                Left = 0
                Top = 86
                Width = 977
                Height = 489
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlGrid'
                ShowCaption = False
                TabOrder = 1
                object pnlGridContainer: TPanel
                  Left = 0
                  Top = 0
                  Width = 977
                  Height = 489
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'pnlGridContainer'
                  ShowCaption = False
                  TabOrder = 0
                  object DBGridP: TDBGridEh
                    Left = 0
                    Top = 0
                    Width = 977
                    Height = 489
                    Align = alClient
                    AutoFitColWidths = True
                    BorderStyle = bsNone
                    Color = clBtnFace
                    Ctl3D = False
                    DataSource = dsItem
                    DynProps = <>
                    EvenRowColor = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -15
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    OddRowColor = clBtnFace
                    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    TitleParams.Font.Charset = ANSI_CHARSET
                    TitleParams.Font.Color = clWindowText
                    TitleParams.Font.Height = -13
                    TitleParams.Font.Name = 'Segoe UI'
                    TitleParams.Font.Style = []
                    TitleParams.ParentFont = False
                    OnDblClick = DBGridPDblClick
                    Columns = <
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'ITEM'
                        Footers = <>
                        Title.Caption = 'Item'
                        Width = 45
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'ID_PRODUTO'
                        Footers = <>
                        Title.Caption = 'C'#243'digo'
                        Width = 54
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'DESCRICAO_SL'
                        Footers = <>
                        Title.Caption = 'Descri'#231#227'o'
                        Width = 395
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'QTD'
                        Footers = <>
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Qtd'
                        Width = 75
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'UNIDADE'
                        Footers = <>
                        Title.Caption = 'Und.'
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'PRECO'
                        Footers = <>
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Pre'#231'o R$'
                        Width = 103
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'VALOR_ITEM'
                        Footers = <>
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Total R$'
                        Width = 120
                      end>
                    object RowDetailData: TRowDetailPanelControlEh
                    end
                  end
                  object DBGridBuscaP: TDBGridEh
                    Left = 0
                    Top = 0
                    Width = 977
                    Height = 489
                    Align = alClient
                    AutoFitColWidths = True
                    BorderStyle = bsNone
                    Color = clBtnFace
                    Ctl3D = False
                    DataSource = dsPesqProd
                    DynProps = <>
                    EvenRowColor = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGray
                    Font.Height = -15
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    OddRowColor = 16447733
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 1
                    TitleParams.Font.Charset = ANSI_CHARSET
                    TitleParams.Font.Color = clWindowText
                    TitleParams.Font.Height = -15
                    TitleParams.Font.Name = 'Segoe UI'
                    TitleParams.Font.Style = []
                    TitleParams.ParentFont = False
                    Visible = False
                    OnDblClick = DBGridBuscaPDblClick
                    OnKeyPress = DBGridBuscaPKeyPress
                    Columns = <
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'CODIGO'
                        Footers = <>
                        Title.Caption = 'C'#243'digo'
                        Width = 59
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'DESCRICAO'
                        Footers = <>
                        Title.Caption = 'Descri'#231#227'o'
                        Width = 493
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'VIRTUAL_PRECO'
                        Footers = <>
                        Title.Caption = 'Pre'#231'o'
                        Width = 93
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'QTD_ATUAL'
                        Footers = <>
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Estoque'
                        Width = 77
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'UNIDADE'
                        Footers = <>
                        Title.Caption = 'Und'
                        Width = 32
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'LOCALIZACAO'
                        Footers = <>
                        Title.Caption = 'Local'
                        Width = 82
                      end
                      item
                        CellButtons = <>
                        DynProps = <>
                        EditButtons = <>
                        FieldName = 'QTD_FISCAL'
                        Footers = <>
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Est.Fiscal'
                        Width = 72
                      end>
                    object RowDetailData: TRowDetailPanelControlEh
                    end
                  end
                end
              end
            end
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Restaurante'
          object PabelFoods: TPanel
            Left = 0
            Top = 0
            Width = 1292
            Height = 585
            Align = alClient
            BevelOuter = bvNone
            Caption = 'PabelFoods'
            ShowCaption = False
            TabOrder = 0
            object PanelFoods: TPanel
              AlignWithMargins = True
              Left = 343
              Top = 0
              Width = 949
              Height = 585
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnlFoodsLateral: TPanel
                Left = 639
                Top = 79
                Width = 310
                Height = 506
                Align = alRight
                BevelOuter = bvNone
                Caption = 'pnlFoodsLateral'
                ShowCaption = False
                TabOrder = 0
                object dbimgRestauranteProdutoFoto: TDBImage
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 304
                  Height = 282
                  Margins.Top = 0
                  Align = alClient
                  BorderStyle = bsNone
                  DataField = 'FOTO'
                  DataSource = dsProdutoFoto
                  Proportional = True
                  ReadOnly = True
                  TabOrder = 0
                end
                object pnlFoodsIten: TPanel
                  Left = 0
                  Top = 285
                  Width = 310
                  Height = 221
                  Align = alBottom
                  AutoSize = True
                  BevelOuter = bvNone
                  Caption = 'pnlFoodsIten'
                  ShowCaption = False
                  TabOrder = 1
                  object pnlFoodsItemQuantidade: TPanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 5
                    Width = 280
                    Height = 72
                    Margins.Left = 15
                    Margins.Top = 5
                    Margins.Right = 15
                    Margins.Bottom = 0
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'pnlPDVItemQuantidade'
                    ShowCaption = False
                    TabOrder = 0
                    object lblFoodsItemQuantidade: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 0
                      Width = 274
                      Height = 25
                      Margins.Top = 0
                      Align = alTop
                      Caption = 'Quantidade'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -19
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      StyleElements = [seClient, seBorder]
                      ExplicitWidth = 104
                    end
                    object shpFoodsItemQuantidadeDiv: TShape
                      Left = 0
                      Top = 28
                      Width = 280
                      Height = 2
                      Align = alTop
                      Pen.Color = 427252
                      ExplicitWidth = 265
                    end
                    object edtQtdR: TEdit
                      AlignWithMargins = True
                      Left = 3
                      Top = 30
                      Width = 272
                      Height = 39
                      Margins.Top = 0
                      Margins.Right = 5
                      TabStop = False
                      Align = alClient
                      Alignment = taRightJustify
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -24
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                      Text = '1'
                      OnEnter = edtQtdPEnter
                      OnExit = edtQtdPExit
                      OnKeyPress = edtQtdPKeyPress
                    end
                  end
                  object pnlFoodsTotalItem: TPanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 149
                    Width = 280
                    Height = 72
                    Margins.Left = 15
                    Margins.Top = 0
                    Margins.Right = 15
                    Margins.Bottom = 0
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'pnlPDVItemTotal'
                    ShowCaption = False
                    TabOrder = 1
                    object lblTotalR: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 30
                      Width = 272
                      Height = 39
                      Margins.Top = 0
                      Margins.Right = 5
                      Align = alClient
                      Alignment = taRightJustify
                      Caption = '0,00'
                      Color = clSilver
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -24
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                      ExplicitLeft = 226
                      ExplicitWidth = 49
                      ExplicitHeight = 32
                    end
                    object Label3: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 0
                      Width = 274
                      Height = 25
                      Margins.Top = 0
                      Align = alTop
                      Caption = 'Total do Item'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -19
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      StyleElements = [seClient, seBorder]
                      ExplicitWidth = 117
                    end
                    object Shape4: TShape
                      Left = 0
                      Top = 28
                      Width = 280
                      Height = 2
                      Align = alTop
                      Pen.Color = 427252
                      ExplicitTop = 36
                      ExplicitWidth = 265
                    end
                  end
                  object pnlFoodsItemPreco: TPanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 77
                    Width = 280
                    Height = 72
                    Margins.Left = 15
                    Margins.Top = 0
                    Margins.Right = 15
                    Margins.Bottom = 0
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'pnlPDVItemValorUnitario'
                    ShowCaption = False
                    TabOrder = 2
                    object lblFoodsItemPreco: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 0
                      Width = 274
                      Height = 25
                      Margins.Top = 0
                      Align = alTop
                      Caption = 'Pre'#231'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -19
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      StyleElements = [seClient, seBorder]
                      ExplicitWidth = 51
                    end
                    object shpFoodsItemPreco: TShape
                      Left = 0
                      Top = 28
                      Width = 280
                      Height = 2
                      Align = alTop
                      Pen.Color = 427252
                      ExplicitTop = 36
                      ExplicitWidth = 265
                    end
                    object edtPrecoR: TEdit
                      AlignWithMargins = True
                      Left = 5
                      Top = 30
                      Width = 272
                      Height = 39
                      Margins.Left = 5
                      Margins.Top = 0
                      TabStop = False
                      Align = alClient
                      Alignment = taRightJustify
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = clBtnFace
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -24
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                      Text = '0,00'
                      OnExit = edtPrecoPExit
                      OnKeyPress = edtPrecoPKeyPress
                    end
                  end
                end
              end
              object pnlFoodsGrids: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 82
                Width = 633
                Height = 500
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlFoodsGrids'
                ShowCaption = False
                TabOrder = 1
                object DBGridR: TDBGridEh
                  Left = 0
                  Top = 74
                  Width = 633
                  Height = 426
                  Align = alClient
                  AutoFitColWidths = True
                  BorderStyle = bsNone
                  Color = clBtnFace
                  DataSource = dsItem
                  DynProps = <>
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  OddRowColor = 16447733
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleParams.Font.Charset = ANSI_CHARSET
                  TitleParams.Font.Color = clWindowText
                  TitleParams.Font.Height = -15
                  TitleParams.Font.Name = 'Segoe UI'
                  TitleParams.Font.Style = []
                  TitleParams.ParentFont = False
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ID_PRODUTO'
                      Footers = <>
                      Title.Caption = 'C'#243'digo'
                      Width = 56
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'DESCRICAO_SL'
                      Footers = <>
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 297
                    end
                    item
                      Alignment = taRightJustify
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'QTD'
                      Footers = <>
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Qtd.'
                      Width = 58
                    end
                    item
                      Alignment = taRightJustify
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'PRECO'
                      Footers = <>
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Pre'#231'o'
                      Width = 73
                    end
                    item
                      Alignment = taRightJustify
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'TOTAL'
                      Footers = <>
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Total'
                      Width = 58
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
                object DBGridBuscaR: TDBGridEh
                  Left = 0
                  Top = 74
                  Width = 633
                  Height = 426
                  Align = alClient
                  AutoFitColWidths = True
                  BorderStyle = bsNone
                  Color = clBtnFace
                  DataSource = dsPesqProd
                  DynProps = <>
                  EvenRowColor = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  OddRowColor = 16447733
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                  TitleParams.Font.Charset = ANSI_CHARSET
                  TitleParams.Font.Color = clWindowText
                  TitleParams.Font.Height = -15
                  TitleParams.Font.Name = 'Segoe UI'
                  TitleParams.Font.Style = []
                  TitleParams.ParentFont = False
                  Visible = False
                  OnDblClick = DBGridBuscaPDblClick
                  OnKeyPress = DBGridBuscaPKeyPress
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'CODIGO'
                      Footers = <>
                      Title.Caption = 'C'#243'digo'
                      Width = 56
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'DESCRICAO'
                      Footers = <>
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 339
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'VIRTUAL_PRECO'
                      Footers = <>
                      Title.Caption = 'Pre'#231'o'
                      Width = 62
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'QTD_ATUAL'
                      Footers = <>
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Estoque'
                      Width = 60
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'UNIDADE'
                      Footers = <>
                      Title.Caption = 'Und'
                      Width = 35
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
                object pnlFoodsObs: TPanel
                  Left = 0
                  Top = 0
                  Width = 633
                  Height = 74
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'Observa'#231#245'es'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentBackground = False
                  ParentCtl3D = False
                  ParentFont = False
                  ShowCaption = False
                  TabOrder = 2
                  object lblFoodsItemObs: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 627
                    Height = 25
                    Align = alTop
                    Caption = 'Observa'#231#245'es'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 112
                  end
                  object Shape2: TShape
                    Left = 0
                    Top = 31
                    Width = 633
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                    ExplicitWidth = 987
                  end
                  object edtOBSR: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 36
                    Width = 627
                    Height = 28
                    Margins.Bottom = 10
                    Align = alClient
                    BevelEdges = [beBottom]
                    BevelInner = bvNone
                    BevelKind = bkFlat
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 150
                    ParentFont = False
                    TabOrder = 0
                    StyleElements = [seClient]
                    OnExit = edtOBSRExit
                    OnKeyPress = edtOBSRKeyPress
                  end
                end
              end
              object pnlFoodsProduto: TPanel
                Left = 0
                Top = 0
                Width = 949
                Height = 79
                Align = alTop
                BevelOuter = bvNone
                Caption = 'F12 C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                Color = 11299390
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ShowCaption = False
                TabOrder = 2
                object lblFoodsProduto: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 943
                  Height = 25
                  Align = alTop
                  Caption = 'F12  C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                  Color = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitWidth = 486
                end
                object shpFoodsProdutoDiv1: TShape
                  Left = 0
                  Top = 31
                  Width = 949
                  Height = 2
                  Align = alTop
                  Pen.Color = 427252
                  ExplicitTop = 36
                  ExplicitWidth = 987
                end
                object edtProdutoR: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 36
                  Width = 943
                  Height = 40
                  Align = alClient
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  TextHint = 'Digite aqui o que procura :)'
                  StyleElements = [seClient]
                  OnChange = edtProdutoRChange
                  OnEnter = edtProdutoREnter
                  OnKeyDown = EdtProdutoPKeyDown
                  OnKeyPress = EdtProdutoPKeyPress
                end
              end
            end
            object pnlFoodsMesas: TPanel
              Left = 0
              Top = 0
              Width = 333
              Height = 585
              Align = alLeft
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = 'Panel1'
              TabOrder = 1
              object DBCtrlGrid1: TDBCtrlGrid
                Left = 1
                Top = 34
                Width = 331
                Height = 550
                Align = alClient
                AllowDelete = False
                AllowInsert = False
                ColCount = 4
                Color = clBtnFace
                DataSource = dsMesas
                PanelHeight = 68
                PanelWidth = 78
                ParentColor = False
                TabOrder = 0
                RowCount = 8
                SelectedColor = clBtnHighlight
                ShowFocus = False
                OnPaintPanel = DBCtrlGrid1PaintPanel
                object ItemMesa: TPanel
                  Left = 0
                  Top = 0
                  Width = 78
                  Height = 68
                  Align = alClient
                  TabOrder = 0
                  object ImgOcupado: TImage
                    Left = 1
                    Top = 24
                    Width = 76
                    Height = 43
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                      004008030000009DB781EC0000000467414D410000B18F0BFC61050000010850
                      4C5445000000DFBF10E6BC15E6BB16DDBB11E5BB18E5BA17E5BA17E5B918E5B9
                      16E5BA17E7B918E5BA18E5BA17E6BA17E5BA17FFFF00E4B816E5BB17E4BA18E3
                      BC16E6BA16E5BB16E5BA17E4BA17E5BA17E6BB16E6BF1AE5BA17E4BC1BE6B917
                      E5BB18E5BA16E5BB17E6BA17E6BB17E5BA18FFAA00E6BB17E4BB17E6BA17E4BA
                      16E6B917E5BA17E4BA17EABF15E6BA18E5BA17E5B917FF8000E6B917E5BA17E5
                      BA17E5BB16E9BC16E4BC14E6BA18E5BA17E5BA17E6BA17E5BA17EABF15EBB114
                      E6BA17E5BA17E5B918E3B815E4B918E4B918E6BA17E5BB17E5BA17EDB612E4B9
                      18E5B71AE4BA16E3BA15E4B61BE6BB16E5BB16E4BA15E5BA17E8B917E5BA17E5
                      BA17E7B618E5BA17000000FA4EF0970000005674524E53001048470F61F1F46A
                      45FE49CECCFAF9012F4F552E46D8D643FC5314EF136E6C9F9DAA8381036599B5
                      B6DCF3981897E8620266EAFB9517268DCFEDE6BA0C0D6FBC8B24545FF0F2AE0E
                      AC2768251C52CD30C716FDD715B161996600000001624B47440088051D480000
                      00097048597300000EC400000EC401952B0E1B0000000774494D4507E30A1E0D
                      1A27BB8D2762000001F74944415478DAEDD4DF4FDA501407F0FB6DA96E8B730A
                      712F9BC40C799BBEF8832546832399866024CEF847BAC5E882511215906C893F
                      B2876D3C9831B681311A5034C6642AB05D4A4B577B5BA8F0604CCF43D37B38E7
                      D3DE4BEF056930600116D02400340AB76915FB400404C912FE98EE97FAF01001
                      3A0AE1C264BFDC8736BF385E393709C87D689F146FC2672601B90F735262DE24
                      20F7DD41A083FEBBBA5D7FB95C2DA00B5EC307C7706808385A466BBC7A1C0706
                      C0B36CB0E6E43F21A30F385FD5B17C5BBFF5819EE13A809D9FFAC08BC13A80DD
                      D4BD065C0375009F93FA80FB472F7E4D2BB5517B3FF98A974A2281ABA4EBBB3E
                      508E3E64A5AF710F48FBC8BAFD315C95440AD896CB8C76A387EEA76F7DC838E3
                      C441816332065C5FB67C19C28652A401AA112E7AD6AB830A2007F7889BBC59AE
                      05689CAC31014108686B99403E52600010583B8D0990489601F06F59A578D3D1
                      1090C7C4136D36D1BDCA006CFCB4B6F41CFED3E79AECC53273111F709A45DCB7
                      834C25F6558B132E8D7F204C80F081E8C4FFA58B3E3E543D81E7A44DA20E3550
                      0DBAE9E40FCF022CA06940304E2F3E72BD49C8886D41FA61A6F0915EDD4E922E
                      9FA137F26302299F5AA5BC0874BEE615BBF45EBA79EA553D93992F6EE43540EC
                      48BA99E55400335F8CE5C429742AB991D677AA2918E7A52934161660014D01FE
                      01E0ABD850C655267E0000002574455874646174653A63726561746500323031
                      392D31302D33305431333A32363A33392B30303A30308C4F7BC3000000257445
                      5874646174653A6D6F6469667900323031392D31302D33305431333A32363A33
                      392B30303A3030FD12C37F0000001974455874536F667477617265007777772E
                      696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                    OnClick = ImgOcupadoClick
                    ExplicitLeft = 25
                    ExplicitTop = 64
                    ExplicitHeight = 54
                  end
                  object imgLivre: TImage
                    Left = 1
                    Top = 24
                    Width = 76
                    Height = 43
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                      004008030000009DB781EC0000000467414D410000B18F0BFC61050000010850
                      4C54450000001060200B5C190B5D191155110D5C180C5C180B5C180C5B180B5C
                      160C5C180A5B180C5C180D5D180C5C180C5C180000000B5C160D5A170C5D180B
                      5E160B5B1A0C5C180C5C180B5B170C5C180C5C190D591A0C5C170D5E1B0C5D17
                      0C5C180B5B180B5D180C5C180C5B170C5D180055000D5B190C5C170D5C180D5C
                      180C5C180C5C180C5C170B60150C5B180C5C180D5B170080000D5D190C5C180C
                      5C180C5C180B59160D5E1B0D5C180C5C170C5D180C5C180C5C19155515146214
                      0B5C170C5C180D5C180E5C150C5B180B5B180C5C180C5C180C5C17125B120C5C
                      180D5C1A0C5D190E5A15095B1B0C5D190C5C180B5A1B0C5C180C5D170C5C180C
                      5D180C61180C5C180000007D9EA74D0000005674524E53001048470F61F1F46A
                      45FE49CECCFAF9012F4F552E46D8D643FC5314EF136E6C9F9DAA8381036599B5
                      B6DCF3981897E8620266EAFB9517268DCFEDE6BA0C0D6FBC8B24545FF0F2AE0E
                      AC2768251C52CD30C716FDD715B161996600000001624B47440088051D480000
                      00097048597300000EC400000EC401952B0E1B0000000774494D4507E30A1E0D
                      1420BB6A9F4F000001F74944415478DAEDD4DF4FDA501407F0FB6DA96E8B730A
                      712F9BC40C799BBEF8832546832399866024CEF847BAC5E882511215906C893F
                      B2876D3C9831B681311A5034C6642AB05D4A4B577B5BA8F0604CCF43D37B38E7
                      D3DE4BEF056930600116D02400340AB76915FB400404C912FE98EE97FAF01001
                      3A0AE1C264BFDC8736BF385E393709C87D689F146FC2672601B90F735262DE24
                      20F7DD41A083FEBBBA5D7FB95C2DA00B5EC307C7706808385A466BBC7A1C0706
                      C0B36CB0E6E43F21A30F385FD5B17C5BBFF5819EE13A809D9FFAC08BC13A80DD
                      D4BD065C0375009F93FA80FB472F7E4D2BB5517B3FF98A974A2281ABA4EBBB3E
                      508E3E64A5AF710F48FBC8BAFD315C95440AD896CB8C76A387EEA76F7DC838E3
                      C441816332065C5FB67C19C28652A401AA112E7AD6AB830A2007F7889BBC59AE
                      05689CAC31014108686B99403E52600010583B8D0990489601F06F59A578D3D1
                      1090C7C4136D36D1BDCA006CFCB4B6F41CFED3E79AECC53273111F709A45DCB7
                      834C25F6558B132E8D7F204C80F081E8C4FFA58B3E3E543D81E7A44DA20E3550
                      0DBAE9E40FCF022CA06940304E2F3E72BD49C8886D41FA61A6F0915EDD4E922E
                      9FA137F26302299F5AA5BC0874BEE615BBF45EBA79EA553D93992F6EE43540EC
                      48BA99E55400335F8CE5C429742AB991D677AA2918E7A52934161660014D01FE
                      01E0ABD850C655267E0000002574455874646174653A63726561746500323031
                      392D31302D33305431333A32303A33322B30303A303083565F7E000000257445
                      5874646174653A6D6F6469667900323031392D31302D33305431333A32303A33
                      322B30303A3030F20BE7C20000001974455874536F667477617265007777772E
                      696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                    OnClick = ImgOcupadoClick
                    OnDblClick = imgLivreDblClick
                    ExplicitLeft = 65
                    ExplicitTop = -14
                    ExplicitHeight = 54
                  end
                  object DBText2: TDBText
                    Left = 1
                    Top = 1
                    Width = 76
                    Height = 23
                    Align = alTop
                    Alignment = taCenter
                    DataField = 'CODIGO'
                    DataSource = dsMesas
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = -4
                    ExplicitTop = 81
                    ExplicitWidth = 90
                  end
                end
              end
              object pnlFoodsStatusMesa: TPanel
                Left = 1
                Top = 1
                Width = 331
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Color = 427252
                ParentBackground = False
                TabOrder = 1
                StyleElements = []
                DesignSize = (
                  331
                  33)
                object Label11: TLabel
                  Left = 655
                  Top = 22
                  Width = 187
                  Height = 17
                  Anchors = [akTop, akRight]
                  Caption = 'Relat'#243'rio de Vendas no Per'#237'odo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 10066329
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitLeft = 1251
                end
                object DBText3: TDBText
                  AlignWithMargins = True
                  Left = 15
                  Top = 0
                  Width = 90
                  Height = 33
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = True
                  DataField = 'VIRTUAL_MESA'
                  DataSource = dsMesas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -24
                  Font.Name = 'Segoe UI Semilight'
                  Font.Style = [fsBold]
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitHeight = 32
                end
                object DBText4: TDBText
                  AlignWithMargins = True
                  Left = 120
                  Top = 0
                  Width = 93
                  Height = 33
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = True
                  DataField = 'VIRTUAL_SITUACAO'
                  DataSource = dsMesas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clLime
                  Font.Height = -24
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitHeight = 32
                end
              end
            end
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Delivery'
          object PanelDelivery: TPanel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 1272
            Height = 579
            Margins.Left = 10
            Margins.Right = 10
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object pnlDeliveryLateral: TPanel
              Left = 962
              Top = 91
              Width = 310
              Height = 488
              Align = alRight
              BevelOuter = bvNone
              Caption = 'pnlDeliveryLateral'
              ShowCaption = False
              TabOrder = 0
              object dbimgDeliveryProdutoFoto: TDBImage
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 304
                Height = 264
                Margins.Top = 0
                Align = alClient
                BorderStyle = bsNone
                DataField = 'FOTO'
                DataSource = dsProdutoFoto
                Proportional = True
                ReadOnly = True
                TabOrder = 0
              end
              object pnlDeliveryItem2: TPanel
                Left = 0
                Top = 267
                Width = 310
                Height = 221
                Align = alBottom
                AutoSize = True
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -20
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object pnlDeliveryItemTotal: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 149
                  Width = 280
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemTotal'
                  ShowCaption = False
                  TabOrder = 0
                  object lblTotalD: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 272
                    Height = 36
                    Margins.Right = 5
                    Align = alClient
                    Alignment = taRightJustify
                    Caption = '0,00'
                    Color = clSilver
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitLeft = 226
                    ExplicitWidth = 49
                    ExplicitHeight = 32
                  end
                  object lblDeliveryItemTotalLib: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 274
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Total do Item'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 117
                  end
                  object shpDeliveryItemTotalDiv: TShape
                    Left = 0
                    Top = 28
                    Width = 280
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                    ExplicitWidth = 265
                  end
                end
                object pnlDeliveryItemQuantidade: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 5
                  Width = 280
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 5
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemQuantidade'
                  ShowCaption = False
                  TabOrder = 1
                  object lblDeliveryItemQuantidade: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 274
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Quantidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 104
                  end
                  object shpDeliveryItemQuantidadeDev: TShape
                    Left = 0
                    Top = 28
                    Width = 280
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitWidth = 265
                  end
                  object EdtQtdD: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 274
                    Height = 36
                    TabStop = False
                    Align = alClient
                    Alignment = taRightJustify
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '1'
                    StyleElements = [seClient, seBorder]
                    OnEnter = edtQtdPEnter
                    OnExit = edtQtdPExit
                    OnKeyPress = edtQtdPKeyPress
                  end
                end
                object pnlDeliveryItemPreco: TPanel
                  AlignWithMargins = True
                  Left = 15
                  Top = 77
                  Width = 280
                  Height = 72
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlPDVItemValorUnitario'
                  ShowCaption = False
                  TabOrder = 2
                  object lblDeliveryItemPreco: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 274
                    Height = 25
                    Margins.Top = 0
                    Align = alTop
                    Caption = 'Pre'#231'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 51
                  end
                  object shpDeliveryItemPrecoDiv: TShape
                    Left = 0
                    Top = 28
                    Width = 280
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                    ExplicitWidth = 265
                  end
                  object EdtPrecoD: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 33
                    Width = 274
                    Height = 36
                    TabStop = False
                    Align = alClient
                    Alignment = taRightJustify
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    MaxLength = 999999
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '0,00'
                    StyleElements = [seClient, seBorder]
                    OnExit = edtPrecoPExit
                    OnKeyPress = edtPrecoPKeyPress
                  end
                end
              end
            end
            object pnlDeliveryPage: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 91
              Width = 962
              Height = 488
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlDeliveryPage'
              ShowCaption = False
              TabOrder = 1
              object pnlDeliveryPageButtons: TPanel
                Left = 0
                Top = 0
                Width = 44
                Height = 329
                Align = alLeft
                BevelOuter = bvNone
                Caption = 'pnlDeliveryPageButtons'
                ShowCaption = False
                TabOrder = 0
                object imgDeliveryPageItens: TImage
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 41
                  Height = 32
                  Cursor = crHandPoint
                  Hint = 'Itens do Pedido'
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 10
                  Align = alTop
                  AutoSize = True
                  Center = True
                  ParentShowHint = False
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                    00200806000000737A7AF40000000473424954080808087C0864880000000970
                    485973000000EC000000EC01792871BD0000001974455874536F667477617265
                    007777772E696E6B73636170652E6F72679BEE3C1A000005D04944415478DABD
                    577D4C94751CFF7D9F3BE1803B0EF0101034D2135FE6D2FA03B66C4E91353BCC
                    E40C3523E69AD1CA6ACA345F10A37424D3E99C33B6488D4C2987850B35A7D3B6
                    BA7C492A0DB426866F95BC1F7077DC73CFEFA5EF73C075E8199478BFEDF63CF7
                    FC5EBE9FDFF7FBF9BE0119E4689E3BDEA0D1297304857442C914C12099301245
                    28107CB7E37B03A1D245C2F829A28523B1B6DFBA06732E0CB4C099F7488222C3
                    0614922B2809270C3A05233F0B2ADD02469A38C34328C4E17C1282781C011970
                    DE85200F10A12D19F1635DFDFF0220562485D965580B54CAC74387A1807D9C89
                    CA9856ED6938562F07DA73F51973A8D125A58307E6734E5E426020386CEBEC52
                    DE19571F784F40001D2B92CC42C017C060B2A0A28228D2FAA88F6E340CD65CEA
                    687C2A650C51C826BCC022047F86508D35AEB6B67140008E7589533983E378EB
                    70C2494EE4F65B87FF8BE07B80A4A6CC0326ED231CDAD15C96F84B576AEF0BA0
                    A328C92C3161435BCA78FB4C7DC9ED5F1E44B80F44DAF8C780926AC124819A48
                    F5D7840F80284AD639B59E3348203308699ABEE8F6A5A110DE375AD3CC9318D5
                    E2F950D7E95066F671C207C0B965E47B68EF02BCB93562FD9F0FA4F6FB6A2235
                    250BCD718853A924FEE2E5B53E00CEEDA6047499AB28FC70F8AABF5EF4DFE428
                    48CCE714B2099756466EB969B3BF317A0D9AE879B4294172620CC0451C35A8E0
                    93E137EFF79E779C3B30FCEBFA6DFEE735A54DA84077B612A29D1457537BCD0B
                    A07B577C29BAD8CB924C2684AD6AECC7F6CE0D49AF102AB238D714466DBE59D3
                    B162D4EB48D02C3CA447203EBD20A8E405A20626DEFB1DFF1F1C5E7DADAC9F16
                    BCDE0157705D795CCDAF7920769B0CDD8A74076D5311B1AC71E9C350FDDDA3E5
                    C9F1BBD123161287361E5C7B4C2F00970E702E2C1179CDC78201A0697A8A0583
                    D411C1C94270979BCA305A2DD0751947C05B81A3D5508F8619C93A3D0F694233
                    5540F77ED3798CE92E5D6ECB8C6008EF1BCD33534E2299F5E0FEDCD48C243A11
                    B6B865713001B4648C2B45DE5941AE1C2E0B2676EA16B6AD0CB4D0B9237E1961
                    622E6A6943F8AAC6738E4D09CBD16499C8642FD339977A18AF7A82EA7A7EDE81
                    44AB8A29BFB12B2080D9E662F4847C90AB626450C8CE90ECFB00F80001500440
                    A1303CFFCE794771C272F4F54CA1BADC002030FC5619F70406D066311763C6CC
                    07CF57D1CD78A313A1CFB505D70473C796024713788E449DC31B75873CDB3E23
                    98005AB3C6AA248C00CFF1E80FF165D130D21E0B16121C375C92AC333A25243F
                    EC077A327A1106A10A8982456B690F4A206ACB199389BCAA46AE2C00F19DC940
                    658AA19854843C6D0F4A286ECF4DDE8D665F20832BDE9B8CE837C632B5E86442
                    4CD46574FCEEBFD87DD09487D96D9EA490C290252D35EEB2D8658CC23C6FD6EB
                    4B42F8EC63BEBF7720B90F4696DCEE978CEC79A3C6625172195DF4E398F2EBAF
                    7A0188EF23CD5481CB784865C8AC8E7EDEE0AE8CC9C7349DCD14CDCAF09C269B
                    6B6FEC6A8949D9DC2BBC37137AFDBED7FD78EF13810113FBF5C57F6CEF07E0B5
                    D19FE17ABC0099A8D699BE8244B11936E3A6B74101AB36C35EF55054BF3CC98A
                    E02BB1B7783FAAF44681FAED9F92EC0219C6DCC69378A327B8224D0BCD681FD2
                    92CCB13A710A564236C1C5C548AA4B879D7795645E106723E218D5FCA0161442
                    91E60C15084761A2DA4955233F18D0D054C3D66B4D7D73F794E5B24D3F5923A4
                    A3B8211AC36FAE7696FDCB0711DEB531C18A11EF13547B2B211A8B61E3CD3AFF
                    F9808D89B860303159B515998EBCA8640A5BA79BDD593F38913DA37BC7C8D15C
                    160568D2A548E2B302A8555FD0347063E203719484D248431161DED64C75AF4F
                    31581DD2E88CA760E67577C03D7B93752ED9998E7BE6A36BE6A8FBF0B735DC15
                    F32E14D57902ED19B03915DF1AC73041D6080516E36D22F04007A6E7B39C69EA
                    314577F4FA7F14C60AB59D4BC3793D7E73A0F9B039259BC3DE6CFCD7966E4000
                    3E20A763F54C782CC864B53D9F8A421F15BEF69CD851CD0D28F82724F0A9308D
                    7414721B9D8339F76FA32FFA804D9C59A40000000049454E44AE426082}
                  Proportional = True
                  ShowHint = True
                  OnClick = ShowDeliveryPageItens
                  ExplicitLeft = 3
                  ExplicitWidth = 32
                end
                object imgDeliveryPageAnotacao: TImage
                  AlignWithMargins = True
                  Left = 0
                  Top = 42
                  Width = 41
                  Height = 32
                  Cursor = crHandPoint
                  Hint = 'Anota'#231#245'es do Pedido'
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 10
                  Align = alTop
                  AutoSize = True
                  Center = True
                  ParentShowHint = False
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                    00200806000000737A7AF40000000473424954080808087C0864880000000970
                    485973000000EC000000EC01792871BD0000001974455874536F667477617265
                    007777772E696E6B73636170652E6F72679BEE3C1A000007CD4944415478DAA5
                    970B7053551AC7CFB9096DDAE6D194F44543B72DA5883AE2BA3BC0B8AE83A5B3
                    C30696D5A0C0D2521FCB74477755A8B80A05B65806AC204FD9EE286C45852A53
                    5D580AAC83531DA5881844580A9BA1D0026DA4EFA449D326F771F67F6F9A98D2
                    9416B9934C6EEEE37CBFF37DFFEF3BDFA1649447FBDC493A95869FC3049A4B04
                    328589348388249E0894E0DC89F3462270678928D512353D9C5867778F665C3A
                    D203BD453F4BE57D740D8C143281C41291F630917CCF04EE3A15499B24621081
                    26E3BE19103F07900EF7BD80DC4798BA3CE9BBFA869F04C09699639C3EBA820A
                    5C31061D0303EF4B22AB4EE8547F4E8F36F822BD73E9B7D9D1062F974BFD749E
                    2491C500A34CA29B7BDCFCDF2636447E2722806B99399B31FA0915E9BD4C6055
                    84E756C5EFBADA38DA70C947EB4339598427EB30818580FF9A082A6BF2F9F3AD
                    23027856A6DD2F89F453CC3A9648A440BFE5FAC1DB313C04646ACEA354E4DE27
                    12ED46B82C29E72E9E1F16C0556ACEE644568758FA30FBD9DAF2E6FFDE89F110
                    C4B449F75181D4309163F0C4D4704F8400D866734CAF57FA0602CA84DB1ED496
                    058CBB8ACD05A02F84F81220428273829040F9F2393E3C717202DD6BACBE5239
                    3204AD4338CEF578F8DCA0264200BD1BC7BD86789760E6D6B8550EC5ED3D2BD3
                    9E82E14A183E4325DA8073D920212247A0F20084483371FF97F86E4FA86E5C8A
                    0159B861FCA1CEDCC9E9C6DA8B57118EC7108E8F25812B4F397B614508A0778B
                    2915297309C60FC6BEFC437EF065F76AF3975464D171EB5BA6DF3C70F8D1BD38
                    7313E3C94B50FCD6B1FBAF2C0BBFD79E97B319217DCED436464FEBEBFD6DD3EE
                    AA02AC9510F5DDC9A7CF5F5600FA76A65420C59EE17CE4AE98975B436A77AF1D
                    67C74C6DBA32473E19E1E85E9CB585F16C2995B8378DFB2F2F97AF75CDC9B260
                    B635F0D20ED3B14B2F2AA150B2835E84C8F7249FFE5F1165BB4DBA3E9EBB81D8
                    54C5FDB97549F8A09E75E3EC4C06281D194071757EE65684E5050C5E2E4AE236
                    2AA8CFC2AB2D5D12993E31AC76743C386937326201F1A853A8F79FA63F807A9F
                    24314B5C51FBD141001B52E1016AD3AE1E192008E12AC87C4B12C87398751360
                    122581FD22F1DF8DF6F0E7DA1ECEB1409087994416D0FE3DA67710BBF91AB721
                    89BE30B85A793602802736EDCA802EDCABD3BE93CB2DBC45026B00917F8F18DE
                    BA363B04514A38674366233C970E23CF44CA8EC619191AAD14D586F056D1BEBD
                    A653A8E95E4D61C78C9B1FF46C4EB17322B50585E95E9B3A8FF1AA6C39FD94AF
                    20A7A374D6B0A5F93FC1775C4B32A62353BE84074E193F687C68386FB53F92F3
                    1926A3A5FD1F99DA319363318B3A160D01D80E008420B6F8875185A0AB28CBC0
                    11F10CBC9289310F19F734CD1DEED98EBC8915F0A495FAAAC7FA98C876681674
                    2DBFF921EFCE146880D9625F6CCD1FD0C456CCEC1E26CF9EA74A2DC0FFE3BA37
                    9AD72AB37F3EFD4325C5B062529E9E3054DE026056F67A801653DF81041FE5C9
                    8EA8272200FC23491161EC5F0600DE9001C83D7241FA11827DA5DBE078AD67B9
                    F98FE815766156AF02EC09141C87E1EDE101BA2CD9EBB1621653FF21633B4478
                    2CFAF75D4342D0B72BC98E02638B7DB6ED962170AF4A9D0C6D7C0BD19DD0EAAE
                    CFEAE94C3F050887A1E2DAF01E983BA102D5D54AFD87E3BF417DEF8BFA5DF78C
                    2100958976CCD616B32400E0DD9EF2380436814881528CDFA3DA92E673A89836
                    78623C15C64CD16E6CBAE15A361EFFA9C3B0637880CEC726C8228CA3FE4F8D6F
                    E364E118D29D482D64501AF6BF67B26305B3C53C3D00B033E9345CFC809C8244
                    4945B6266EC58D3254CCBF6381DAAF5BD7FC85E29197C6DB50681C86ADD72302
                    343E95A131F472103FDD4B85CF8C0B5184AAA0768BDAD23DA810F5EF33299530
                    A6B0635459100AC92B661BF4E0D0BF1919A0AB206B36E06B30F67CCA8E9B7482
                    4F4029265551BF710E2AC5FD1F8D050042907F9B00250300E59101BA0B337623
                    ECF37DD49BA22C46C2178677E4A653646CB226CF7525F82052D42EC91E58D879
                    7B00D004565187767DCB100067D1F809684A2E2044EF26EC69FA9302C04EE8B3
                    059E5E804BAAA366BA42D9D07F2001CB318D8EB2764EA774F8E538FC901B1B8F
                    5B6A42093FA85BE7281A02F06CFA87D0CFA3A8A493E53E33D490F075BAD7515A
                    FF8A026255E7390FC8D7FC35F14FA2FD7E178AFF9E49DC2522D77EA521A14A53
                    22298528D498041A153F790035224392E8AFF56B5ABE1EE4FAA5662B2772D508
                    CF86F88AAB25F2B51F5BB223245AD4E96B5113EE9378EE57D179DDE794301C32
                    2EC2E04FE23B960941438404320110CA7918044F5AD05B6CD3AD68AD0D37EE79
                    256D0A7A83E3F29E421FAF9F494BEBFD830014889371C9A2A0FA56922B1DCFCD
                    0942DCE9E1599D26EFA46AE019910AD153759B2EB705EF0D69CB7D75DA7B558C
                    3B82178CA86C85EA99CE7FDD89717759AA1515EF3DB8BD931095455776AD3EFC
                    7EC48D09B3E94CA24F8E157918BAA8167971A566564FC3E84C068EBE6DE3D225
                    1F2B81CB9740C8271915ACDA92B691372621086842D0EB4A11E762A5F990C807
                    28561FAB34865AFA48537FC4772A33345E5F6F2EDE99079D14283A11E8A6586F
                    C2DA60CC470D101AF42B4396C8C8AB8CA78B309B380CE821223B2989AA063432
                    AE0161C6437CF2766E1AEE6B71CD83F061734A5E8F79BEF5965BBA110142209F
                    276A45E697BB5C797B7EBFB21F086DCF89136E96DBB03310706D8C8A3B420B5B
                    7B4733EEFF01DE4D1C9E5D186EE00000000049454E44AE426082}
                  Proportional = True
                  ShowHint = True
                  OnClick = ShowDeliveryPageAnotacao
                  ExplicitLeft = 3
                  ExplicitWidth = 32
                end
              end
              object nbDeliveryPage: TNotebook
                Left = 44
                Top = 0
                Width = 918
                Height = 329
                Align = alClient
                TabOrder = 1
                object TPage
                  Left = 0
                  Top = 0
                  Caption = 'DeliveryItens'
                  object pnlDeliveryContainer: TPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 912
                    Height = 323
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'pnlDeliveryContainer'
                    ShowCaption = False
                    TabOrder = 0
                    object DBGridClie: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 912
                      Height = 323
                      Align = alClient
                      AutoFitColWidths = True
                      BorderStyle = bsNone
                      Color = clBtnFace
                      DataSource = dsBuscaFone
                      DynProps = <>
                      EvenRowColor = clBtnFace
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      OddRowColor = clBtnFace
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                      ParentFont = False
                      TabOrder = 1
                      TitleParams.Font.Charset = ANSI_CHARSET
                      TitleParams.Font.Color = clWindowText
                      TitleParams.Font.Height = -15
                      TitleParams.Font.Name = 'Segoe UI'
                      TitleParams.Font.Style = []
                      TitleParams.ParentFont = False
                      Visible = False
                      Columns = <
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'CODIGO'
                          Footers = <>
                          Title.Caption = 'C'#243'digo'
                          Width = 61
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'FANTASIA'
                          Footers = <>
                          Title.Caption = 'Nome'
                          Width = 340
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'ENDERECO'
                          Footers = <>
                          Title.Caption = 'Endere'#231'o'
                          Width = 312
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'NUMERO'
                          Footers = <>
                          Title.Caption = 'Numero'
                          Width = 56
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'CELULAR1'
                          Footers = <>
                          Title.Caption = 'Celular'
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                    object DBGridD: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 912
                      Height = 323
                      Align = alClient
                      AutoFitColWidths = True
                      BorderStyle = bsNone
                      Color = clBtnFace
                      DataSource = dsItem
                      DynProps = <>
                      EvenRowColor = clBtnFace
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -15
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      OddRowColor = clBtnFace
                      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
                      ParentFont = False
                      TabOrder = 2
                      TitleParams.Font.Charset = ANSI_CHARSET
                      TitleParams.Font.Color = clWindowText
                      TitleParams.Font.Height = -15
                      TitleParams.Font.Name = 'Segoe UI'
                      TitleParams.Font.Style = []
                      TitleParams.ParentFont = False
                      OnDblClick = DBGridPDblClick
                      Columns = <
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'ITEM'
                          Footers = <>
                          Title.Caption = 'Item'
                          Width = 45
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'ID_PRODUTO'
                          Footers = <>
                          Title.Caption = 'C'#243'digo'
                          Width = 54
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'DESCRICAO_SL'
                          Footers = <>
                          Title.Caption = 'Descri'#231#227'o'
                          Width = 395
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'QTD'
                          Footers = <>
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Qtd'
                          Width = 75
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'UNIDADE'
                          Footers = <>
                          Title.Caption = 'Und.'
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'PRECO'
                          Footers = <>
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Pre'#231'o R$'
                          Width = 103
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'VALOR_ITEM'
                          Footers = <>
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Total R$'
                          Width = 120
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                    object DBGridBuscaD: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 912
                      Height = 323
                      Align = alClient
                      AutoFitColWidths = True
                      BorderStyle = bsNone
                      Color = clBtnFace
                      DataSource = dsPesqProd
                      DynProps = <>
                      EvenRowColor = clBtnFace
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -15
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      OddRowColor = clBtnFace
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                      ParentFont = False
                      TabOrder = 0
                      TitleParams.Font.Charset = ANSI_CHARSET
                      TitleParams.Font.Color = clWindowText
                      TitleParams.Font.Height = -15
                      TitleParams.Font.Name = 'Segoe UI'
                      TitleParams.Font.Style = []
                      TitleParams.ParentFont = False
                      Visible = False
                      OnDblClick = DBGridBuscaPDblClick
                      OnKeyPress = DBGridBuscaPKeyPress
                      Columns = <
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'CODIGO'
                          Footers = <>
                          Title.Caption = 'C'#243'digo'
                          Width = 59
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'DESCRICAO'
                          Footers = <>
                          Title.Caption = 'Descri'#231#227'o'
                          Width = 493
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'VIRTUAL_PRECO'
                          Footers = <>
                          Title.Caption = 'Pre'#231'o'
                          Width = 93
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'QTD_ATUAL'
                          Footers = <>
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Estoque'
                          Width = 77
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'UNIDADE'
                          Footers = <>
                          Title.Caption = 'Und'
                          Width = 32
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'LOCALIZACAO'
                          Footers = <>
                          Title.Caption = 'Local'
                          Width = 82
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'QTD_FISCAL'
                          Footers = <>
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Est.Fiscal'
                          Width = 72
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                  end
                end
                object TPage
                  Left = 0
                  Top = 0
                  Caption = 'DeliveryAnotacoes'
                  object lblDeliveryAnotacao: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 912
                    Height = 25
                    Align = alTop
                    Caption = 'Anota'#231#245'es do Pedido'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 189
                  end
                  object shpDeliveryAnotacaoDiv: TShape
                    AlignWithMargins = True
                    Left = 0
                    Top = 31
                    Width = 918
                    Height = 2
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 42
                    ExplicitWidth = 1076
                  end
                  object DBMemo1: TDBMemo
                    AlignWithMargins = True
                    Left = 0
                    Top = 46
                    Width = 918
                    Height = 283
                    Margins.Left = 0
                    Margins.Top = 10
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    DataField = 'OBSERVACOES'
                    DataSource = dsVenda
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 580
                    ParentFont = False
                    TabOrder = 0
                    OnKeyDown = FormKeyDown
                  end
                end
              end
              object pnlDeliveryItem: TPanel
                Left = 0
                Top = 329
                Width = 962
                Height = 159
                Align = alBottom
                BevelOuter = bvNone
                BorderWidth = 5
                Color = 16250871
                ParentBackground = False
                TabOrder = 2
                object pnlDeliveryItemProduto: TPanel
                  Left = 5
                  Top = 5
                  Width = 952
                  Height = 75
                  Align = alTop
                  AutoSize = True
                  BevelOuter = bvNone
                  Caption = 'F12 C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentBackground = False
                  ParentCtl3D = False
                  ParentFont = False
                  ShowCaption = False
                  TabOrder = 0
                  object shpDeliveryProdutoDiv: TShape
                    Left = 0
                    Top = 31
                    Width = 952
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitTop = 36
                    ExplicitWidth = 987
                  end
                  object lblDeliveryProduto: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 946
                    Height = 25
                    Align = alTop
                    Caption = 'F12  C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 486
                  end
                  object edtProdutoD: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 36
                    Width = 946
                    Height = 36
                    Align = alTop
                    BevelEdges = [beBottom]
                    BevelInner = bvNone
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    StyleElements = [seClient]
                    OnChange = edtProdutoDChange
                    OnEnter = edtProdutoDEnter
                    OnKeyDown = EdtProdutoPKeyDown
                    OnKeyPress = EdtProdutoPKeyPress
                  end
                end
                object pnlItemObservacao: TPanel
                  AlignWithMargins = True
                  Left = 8
                  Top = 80
                  Width = 949
                  Height = 75
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  AutoSize = True
                  BevelOuter = bvNone
                  Caption = ' Observa'#231#245'es'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentBackground = False
                  ParentCtl3D = False
                  ParentFont = False
                  ShowCaption = False
                  TabOrder = 1
                  object shpDeliveryItemObservacao: TShape
                    Left = 0
                    Top = 31
                    Width = 949
                    Height = 2
                    Align = alTop
                    Pen.Color = 427252
                    ExplicitLeft = 2
                    ExplicitTop = 9
                    ExplicitWidth = 927
                  end
                  object lblDeliveryItemObservacao: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 943
                    Height = 25
                    Align = alTop
                    Caption = 'Observa'#231#245'es'
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGray
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    StyleElements = [seClient, seBorder]
                    ExplicitWidth = 112
                  end
                  object edtObsD: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 36
                    Width = 943
                    Height = 36
                    Align = alTop
                    BevelEdges = [beBottom]
                    BevelInner = bvNone
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 200
                    ParentFont = False
                    TabOrder = 0
                    StyleElements = [seClient]
                    OnExit = edtObsDExit
                    OnKeyPress = edtObsDKeyPress
                  end
                end
              end
            end
            object pnlDeliveryContato: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 1272
              Height = 86
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alTop
              BevelOuter = bvNone
              Color = 16053492
              ParentBackground = False
              ShowCaption = False
              TabOrder = 2
              object pnlDeliveryCliente: TPanel
                AlignWithMargins = True
                Left = 135
                Top = 0
                Width = 1137
                Height = 86
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Cliente'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentCtl3D = False
                ParentFont = False
                ShowCaption = False
                TabOrder = 0
                object edtCliente: TLabel
                  AlignWithMargins = True
                  Left = 5
                  Top = 33
                  Width = 1129
                  Height = 24
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Bottom = 2
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -20
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitWidth = 5
                  ExplicitHeight = 28
                end
                object lblDeliveryCliente: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 1131
                  Height = 25
                  Align = alTop
                  Caption = 'Cliente'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitWidth = 61
                end
                object shpDeliveryClienteDiv: TShape
                  Left = 0
                  Top = 31
                  Width = 1137
                  Height = 2
                  Align = alTop
                  Pen.Color = 427252
                  ExplicitTop = 42
                  ExplicitWidth = 1076
                end
                object pnEndereco: TPanel
                  AlignWithMargins = True
                  Left = 5
                  Top = 59
                  Width = 1129
                  Height = 27
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  StyleElements = [seClient, seBorder]
                end
              end
              object pnlDeliveryClienteFone: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 125
                Height = 86
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alLeft
                BevelOuter = bvNone
                Caption = 'pnlDeliveryClienteFone'
                ShowCaption = False
                TabOrder = 1
                object lblDeliveryFone: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 119
                  Height = 25
                  Align = alTop
                  Caption = 'F1 | Celular'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  StyleElements = [seClient, seBorder]
                  ExplicitWidth = 99
                end
                object shpDeliveryFoneDic: TShape
                  Left = 0
                  Top = 31
                  Width = 125
                  Height = 2
                  Align = alTop
                  Pen.Color = 427252
                  ExplicitTop = 24
                  ExplicitWidth = 183
                end
                object edtFone: TMaskEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 43
                  Width = 119
                  Height = 40
                  Margins.Top = 10
                  Align = alClient
                  Alignment = taCenter
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Ctl3D = False
                  EditMask = '# ####-####;0;_'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  MaxLength = 11
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = ''
                  StyleElements = [seClient, seBorder]
                  OnChange = edtFoneChange
                  OnExit = edtFoneExit
                  OnKeyPress = edtFoneKeyPress
                end
              end
            end
          end
        end
      end
      object pnlContainerFuncoes: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1292
        Height = 97
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlContainerFuncoes'
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        object pnlFuncoes: TPanel
          Left = 0
          Top = 0
          Width = 378
          Height = 97
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          Caption = 'pnlFuncoes'
          Color = clWhite
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          StyleElements = [seFont, seBorder]
          object btnDelivery: TPanel
            AlignWithMargins = True
            Left = 255
            Top = 0
            Width = 120
            Height = 97
            Cursor = crHandPoint
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'btnDelivery'
            ShowCaption = False
            TabOrder = 0
            object imgDelivery: TImage
              Tag = 3
              Left = 0
              Top = 0
              Width = 120
              Height = 76
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                00400806000000AA6971DE0000000473424954080808087C0864880000000970
                485973000001D8000001D801FA5CA6720000001974455874536F667477617265
                007777772E696E6B73636170652E6F72679BEE3C1A000010AE4944415478DACD
                5B0B781355F6BF7726499F7992A62D2DB52D7C2DA0B24ADD65DD057CB0B8207F
                16A17FD48248790AEBA2E202057958455EADB20AB87FC082C8ABBC5C10FEBE3E
                56715B817511045984AEF4410BA56DA0499AA6CD6366EE9E994CD2B4A6C9105A
                C3FDBE7C99B9B973E69CDF3DF7BCEE0D46DDDCEAC6F636C809198238740FE2E8
                BE98900C96202DE69006713816FAA1E166C22233DC9B1047CAA0E312C7521738
                9A29492CBD6CEC4EFE707710353F9DFE00E1D00442D07010F06E42301604E53F
                040BDF44B8E6FBB0D8CFF7B55D8BFD04C6FD1BFA8F522CDE1577FAE2993B1600
                E3D44CA58C71CD00A6A7C12CF6273EC20A02FB5CDF2208DE7198C317E0D92DA4
                957ACF70E142F31D018079768A9638A81781C139C0AC4E609A201FC6B113AEBF
                81BE93A0116598E032CA415F47C86E52472B6D3C0D4B8B35C6E188D4CA314E24
                1CDB97E37006D079109E1904DF0A3F60DD84CB750A36729DF6EC59735800E027
                C43C3B3517B3640D3014C7334644C1E1DA0A03FE4671A4D8667596F63C52DB12
                CA3B6AB37A46D3D1AA21B07E72308BB30184D80E9A510F6C2C307C77718708FB
                CF0380794EAFDEA08EDB8081C1BE6A0E8CFD08F70576A6A5386147BD2D5470FD
                B5BAC706C4D0367B0E18CB3C78471F2F086E404A08C7E5267C5F56D9ED00985F
                4AF95F4C5011BC5CEDA3E655A0DAAFA81AABF6E1FD88ED4AC13B36321ED137AE
                F67D0AECCC4AB01777F98060061D981A7FEEE2C16E01805779EBBC5E0520F03C
                71B6F94E27B8B3B79A5DCC1B3D3787A6E6A1B6BA010362A828E712E0E765E041
                218240088BD7C49FFFE115A94B421200241FC9ACADC99B40F0A96D6B9D5C41AC
                EC69F5FAAA7FFE9C82776CC65FF71B4838B217F4AE0FF1D80716ED3428A2A7E2
                D3A75DB70D00999925B7E9EB3E04CB3C1AB519B9438C4C9EAB5B536109A7F09E
                D69895AE66E9880F084BC67841E0C861832E211B7FF515133200BCDADB96266D
                05A2B9EEF5CE2B16795F19756D26CE470109FFDC4DB00D95FD36104266794120
                6497E1DCA54981964340009AF27B1682719BE70D4C085AA95C716D71B8850DD4
                1A7ED97725F0BBC80302D884D509E77F5874CB0058972781B527FBDB540A6D54
                2EBF363BDC024A04E11DE0F7058F618489CBEECC3BF805C05C60E82D6364A7BD
                AE0EA143B15C6D36A83D176EE1A43461395CE9F7A18F4D30415A3130F1ECA5AA
                A000C003B8A520B1C41DE408F177B9431699A55B7867183CA9CD745FAAC6258F
                E427319DB8E5F82AEEECC5473BDA839F00D05C98300523BC95B8A33B270CF84D
                CCA2EBA7C32D5028CDF8ABCC0738828F7BE304969A147FEE879D9D0260FE6B8A
                566E779609B13D84B800C2AAD8BCEBAF845B90DB690DBFCA5C0DB2E479720739
                E5CCD49D6ED3E67600D8DE49C8070579558CEDABA29BA9BB717EF008CFBC3025
                9D46DCEB8076BC372FE01B1F147BB243560C59DBE50EC82781A2908FB7F14D78
                3848A5BFD60D285F118A0DE223461CEDF80192A914FE6920B624E14CD98A9F00
                40B6E895AD2D74153024A4B4E0012644CFAD2F96F212EB92A46220FE34F14985
                3B64871D5364DF044AD238F8E977FA03155F84A205F583329F014A3B44506F20
                3B9DE6A927780168D9687819B1F82D374AE8C79884FA7EF84969898D7569CF65
                C0EC6B6DC152378080D010DDFE8AAF430180F70AC69A8C4B9E2C12B4616EDC99
                8B6FB703C0B6D170013C667F919919317FAA2F92FC02A0D3B43869108D49ACD0
                E18911856F196258DFFB0ED79E6F56D6EE1E785021967C2882C0D85BECEA50EB
                0A7C33FE2663064CCE6671799D379CBA34C00B806D8BFE01CC52A7C419B14511
                92809F377649C929D4669E983E8C60F27751ABCEE8F65464DD0E3DA19ED0ECA8
                6B2BAAC8EE379CBA705600C05E64580B7D73895BEDB6C5CC6A98124EE1F9D638
                397511F8EE95429D90E04DBA5D15B36E97A67170E6760074122F27687B61DC37
                650B04005AB7C59D87D57E0FBFDE580E8D889DD9F079B801304D4D3D083C3D21
                1AAE17306177761C637571F65EFBAFB64AA5D93034E37100F56341AB5874D6F0
                4DD9FDD8BA3DDE20235C1D7462789933929169F1733F6F71A313006A61F61383
                185096E3A842FDC1CB8BA4D0149681DDDE28165A399783C463C70E433621DC01
                B16C5D1235C5F850B885BFF9C7DEBD6827532DD94572D41300C24752681B1FCA
                28053A83DDDE808CC38E62FDABA00EF922B182C8DC1B79520859D626EB641C9B
                26DCF8D65DFC5CBB88CCAC79A3A65C2A00E6597765032F0744C19D20B7AD5D50
                E506410120C4887C1B5D2E726FFCE1CAFAA0003C9C5908A8CE73076778196E2D
                D6EDC684CA71AF0B3C2D6AB2716B3022F60DFA0C8E917D0B4C283D1B1DC4BBE9
                8150878AADE8C7C91CE5F2DA0D9200989D520034E7BBE991559AF7AA7F128E9B
                725335C48EBF8771BDC4F77EAC3D50313A582DF0E6B03ED340638A44DABBB07D
                6F8F6FE1268B17027E181CFD4CC3F1600CB66C487852A8C3713EC14C7010F629
                975F7B4A1200CFA7FC03C60F75D3C463B59BAB0EF91D97D3FB518E7047611C25
                F2304B77A07C5320DA0DC33286508894883B50A7B0637F8F2A60DC5D5E46F2B4
                A89CBAAA600C92F75323EDD6D6F5F0C8FDBEB1BEC0B0F7DA7D2FE400003CE2E8
                3F2BF36BFE1D9436446D4D092916E027860754CEE29E319BAF5CEF6CBC6942EA
                5A1066AE68136C7244A529F777BEA15AFFBB0CC85B48B9B80D57891D077ADC80
                9B1EFCCB9C76A75E35D97A53CA2C75576B7C3179004DA873E25AAF51BF5B9D12
                687C656E6AA4C689AF137EB71940C00C3550FBE1E5EF3A1BDF343A43EF7410A3
                A89D37B0E36F3A87E016E0850A723302E27F67380130FF39652658E74D829546
                68BF6A5DF59381C65BA625EB3887FC06EFC60104A7D642ABF0A7971D9D8DFF71
                649F082D417671593AB0E3100F005854E85070E107A0E9E55E453017D3F819C2
                1C355FB5EECA9B81C6DFCC4D1D41B1F8535163FEA5DD5D3928D0780200808ADB
                453B05001CD6DD74EFEA8206304C0FFC6453635801989F7C1E18BB4728631134
                54F5979AD240E34D53529701EFAF09338AD07AED8ECA17028DB78EEC13E7A450
                03F12C01E7116D95B0C746F834984B8B1A6BAE0A97F00DF971B191AD11661088
                06819816ECD424BC197893D53435EDFF41925162CCF02C00B023D078F3A88C74
                96E2CAC5B4BF123B3FD6811B2459BC5B00F730583EC614D40D7657B32E497E98
                30E898E855CEA9DEBC7A5FB067CCD3EF6A00C1E3788DA1592A53B5BDE23F81C6
                378E491B420855E2F650F81400A0DD0DFD392282D314631A830642FE1AD987E8
                D6C678BE84321A68C503BAF5148B8E4425D5EF935A58695ADC730126788DE8A3
                3783466EA239592E7CF7877B3BF49FA49D8AF7941BCB1B04E167A7A48310E522
                EF8DEAAD55FAA081D0B83ED361C2DF73BB7DBC0BBB3ED32C03C2AFB9FD222A8C
                186D5A10445085C3159F8C7CEC2C76310A16D3EF03D15FFB0982FE491194E3B0
                2B0297D5E1575ACE6E83E7FF20D6002E20A1402324696D3901C1160C292DC7A0
                AF217F190B6FDAE206807CAE29AA1E110CE4C6ECDE85406B9E184E2FC58EA3EA
                6CCCE203624053AA18651ADAA9F01FE9950E1BFA0E1EEEEDEFDC4FD07058EA38
                6FBC2FBDBC06BCBCAEDD54F56A5000C6A797C2738379DE21071A87C927B1712E
                99ACDE930ECBD9282D1EED3F1D76EED10FE408391DE0F01303BFAF210C2E05F2
                43C18D2D807ED9ED8000DF4721EC5E0FCFE840DD5F83F7DDE50F04881A1E57FF
                DF954F0309DF30FEEE5819D50AE93092F3E9B08C531804DFE1FABBE67B2072AF
                E07B596AA47C54E3677E35201F518E7E3DD6C1B8C780215A142801988A763F4B
                0A22A7B765932D1B0D05C0F47C51381730DDDC2E6CF603025C2B60E63D595E45
                6C53547FBCDE1DD834E725FD8263A8B33E9AC09F0A6180DE172A266E12DE1CF8
                3C40E384F4C761A97CEC9E40F29D6E7FE54037005F6AF86AF0CB02432CFA4031
                D29C1B4C953CCDBE53FF293C3B8208C9141E1B33A5C19BB8D836199E80F57A50
                ACC47E16F542DDC860F49A5F4F7C0668794AD80720811AEFFB7BD3BC642B0810
                2BC409988D53BD557B432AAFA68969DB01B049E2B229D0EDADC81300707EA106
                24F069D11036CB494402FEBDB4434EF6627D118036CDED57F186E8C9C6395E0D
                D864D800349F17CAC6041745FDB17E46307AD615498F80267D292E87AB361BD3
                D7130B342D4A7A10FA4E88B36F532A6B5452374B78F59747B6D4012F6EED62D1
                7DDABD95E7BC6571D731B51081B9412033148F592495C5ED7BF4FF03048F882A
                0B1E0BF1A5E75244A8A1703F9308B685D76C322A6696F19360F448FEDD0A9BCC
                5403CF18C44DCD7F815DD908E1AE1668E5817618DC9BB6A85859787582D4D937
                E7A6CD20846C166DC7F7DA9D95BFE0FBBD00384B347301F9B582BA72E8326D32
                F795E2BFF9DD64C79E1E9F834A0D0F702AF4F3A8990D415D94A735AF4C988C38
                6A5B00EF60E1589CA529945665E2CF38596A522F11D17B81542F697756BDD30E
                00722C2E96A19C5530A0871B043C5136DCB45BD20B0E6A340EBBAC18181CF113
                1058F44924CB4CC0CF996E697BBD7945229FE3AF466D27C03C20D4C24C8E57AD
                A83D2195966546CA24E067BBE84A8D0EA635CD738EB1DDE6285BA25A0AEBF875
                11E52BF296E8FE9DB9447FCDBE47F71862E93FC0C3F188A5EA10850F474E6A38
                7A2B82B7A3B72A3E9D6569308AA83F18582766D1F156CAB9CB902F7DD3A66E5E
                7C4C6473C445105E2C9DE157345BAA56797E6F070039A6D1B0342983171AC499
                5C2D1F66915472BE535BD3F329AB394E385DCA1BF8EB0C139919B7B5CCEA1700
                BE31A5AA6761F007EEAD6CE484EFDF2A1EB17C1B6E41426996177BFD1266FE38
                1FF888C1D2440896DA2D6BBF4764D8E3EAAFF8A2A4989357D02E6A201E7E6B6B
                38DCCDF452AA86C2EC1908C4D244AFF1A5EADDEA611DC7F93D2445BE51A7B12E
                7206D0D388A7423F92199BB2A56675E16E7C61D59AD2EB20F03EDA9329B25876
                BFEE9D8A6A4900F08D39A104FF8E0FC3078B9AB059F6B0E5B9700B27A5591726
                AF8744E74FA2D52730FBE3546FD7F82DAD073C28E93AA15C05EE70A1371363D1
                2AF9A3963BFACC50F3E29EAB38965AE81333BCA17EAB666967E3031F95E5EDC1
                4975112C01EF21697045EFD3D832133F72E71D956DEE9BC487DEB3045EDD31C3
                4EE59AABCF867C5456207C0CC9D80815BF4F37C6E7A4F84732869E7CA7184653
                7EAA468E9DDB097FA0BB2DBB3C14ABB83A3ED8996669C7E5F7219A4D526F04E9
                A77B40804F3522F4538A471AC37A5CDEB62A310B2CFD5E3ECCF59E0FE6D07665
                7DC2F460E9B16400041060393027952BC126E4790C23A00D393EB556C628964B
                CD1EBBAA91C2F8181BC1CB20E2849099C8DBFE664756C4E65F5FD6A57F98F06D
                E01DF8531B5BE1A3256D86A69A227831DD682AEE6E57C927363675620E246E2B
                F89D619FA24A234C4E6ECC92DA23B7422FA43F4D91939A549623DB40D4877CEB
                74E02ACBF992989C8BDCDDD51A41DE8D8B6D61A91CB8E435B077BBF21AC15FD2
                1C9A12B5B0B6FA56E986FEB739DE439C504D84F5C75759137CEB747C5105EE0F
                8256ECA129C53F420543105A461EC2887A0AC01EE73910E1931D5E272C99173B
                BF5E52D6DAA5007899FC56ABE66CEC1C0EE1178121BD0F081ECD70F17F9C04A6
                4F6216FF07E6AB8C65B96B1198B320C62A2425D656A552218B56138E4B822733
                2170C980597D10841E0442CBFDD40E8D40EFED9656767D5CDE0DEB6DB0DF757F
                9DE5EB092EDA351DD6261F33DCDB01844E4BDDEDC605F8ABADE8D7F913215BA3
                ACA808CFEF9A25D62D7F9E761ED3DC07B33D01381E0E8C0F0021A81041E020F0
                3A0771C7510A53BB15D31ACE7535AFDD02806F23C7947AA78B1E42B1C2BFC8FB
                81801920900EAE35883FB5E906A119A43573043742D85206C25E422C77C1C13A
                4BBAFBC0C67F01C302014D55053B690000000049454E44AE426082}
              OnClick = ShowDelivery
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitLeft = 16
              ExplicitWidth = 88
              ExplicitHeight = 74
            end
            object lblDelivery: TLabel
              Tag = 3
              Left = 0
              Top = 76
              Width = 120
              Height = 21
              Align = alBottom
              Alignment = taCenter
              Caption = 'DELIVERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 427252
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              OnClick = ShowDelivery
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitWidth = 74
            end
          end
          object btnFoods: TPanel
            AlignWithMargins = True
            Left = 129
            Top = 0
            Width = 120
            Height = 97
            Cursor = crHandPoint
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'btnPDV'
            ShowCaption = False
            TabOrder = 1
            object imgFoods: TImage
              Tag = 2
              Left = 0
              Top = 0
              Width = 120
              Height = 76
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                00400806000000AA6971DE0000000473424954080808087C0864880000000970
                485973000001D8000001D801FA5CA6720000001974455874536F667477617265
                007777772E696E6B73636170652E6F72679BEE3C1A0000141D4944415478DACD
                5B097C53C5D69FB959BA656F9B6EB4B4C0AF6C0A22B883823C54541E0F501110
                2908089F0A522A3B581E503645015164971D0A82F8C3E7FB7C020FDC1051968F
                D22AA5FBBE246D9A364973EF7C67EEBD49D3FD268038BF1FE4F666E6CC39FF39
                73B6996074875BF188CE460521031087EE419CAC1B26249E25488F39A4431C56
                C17B68B886B0C80C7F9B104732E0453AC732D73899F36CC4B91B6577923F7C27
                889A5FEED48F70682C21680808D893108C7941E93F82F94FC23FD377587C4FDF
                353C8BEF09F4FB3F78FF0DC3E27DA117AFFFFA9705A06C5257B5DC593F05987E
                0D56B107F1109617D8E3D94B10DCFD3087AFC1D8EDA48ED96ABC76ADE62F0180
                797A8C9ED89999C0E05BC0AC81679A200FC6B1039ECFC3BB1F41233230C1198C
                5D568490CDA40D545B298DAA5A4B90DDEEAF57601C4138B61BC7E178A0F3088C
                79083E952D8055018F1B94ACFF06FDA54BE6BB02005D10F3F4D804CC92D5C050
                28658C8882C3B3053A7CCE70E480D5E23817F96561AD2F7314F68D0C94056A06
                C0FE1983593C0A405035D18C1260638EF1B7EB7B44D8FF1C00CC6F45770675DC
                050CF4F7547360EC0FF87B8DCD597B207C4F89D557705B6AC54FF50A92596D63
                C058CE8539BAB8411000394B382E21FC4A46D61D07C0FC76CC0B98A06D30B9D6
                43CDB341B517682AB30FE354C4DE4EC19B36F2229295E7771B0D762605EC4547
                0F10CCA00393C22E5F3F764700A02A6F498A5E03022789AB4D5F3AC09DBD5F53
                EF5C1EB9C53735F7B515F7EA15C4043816013F89C0835204811016AF0EBB9AB6
                40EA969004004946724B5D874F41F0490D7B9DE42056FEB27663F64F7FA6E04D
                5BD9C3DDEF271C39047AD785B8EC038BF61A958193F0C58BF5B70C0099DA5761
                0D293E0A9679186A3072C79D72458261F5CDAABB29BCAB55F6EDA465657E9F11
                960C7783C091134643F8287CE68CD36700A8DA5B1747ED00A209C27EA78A4576
                AA030AA6E264D426E13FBBF1B621ABFB478490696E1008D967BC9C3EBEADEDD0
                2600D5C9916BC1B825B903138252D42B0A16DE6D61DB6AA50F744B017EE7BB40
                009BB02AFC6ADA7CAF01B02C8B026B4F521B540A6D562F2B987EB7059408C27A
                E07786CB30C2C28D6ACD3BB40880798DB1B3DC29BFE87675081D577185A340ED
                B9F62637BD11D711315C5F193866E490A56BB664A77B7E0F0695A9CA8AE98388
                2C8E63B14DCEC97FD21CF8BDBC2D9A1543BBF4004E1FE50861102B432E2EB013
                D7CA9DCA93BAEFAE9A1ACD41B7434EF7A31E36C10469C5FD1197D2B3DB050006
                E0DA3511678520878FBF33ED72FFBE86796D1BBC9AC4A8DE2C623E42749C6738
                4C503A58E5C5DA88DCE3E6BCD8B7E0FD3BF02FC2C395C2B645A99CA33E312435
                BFA019A0CFC7F5E6B0EC67445D5D0BB90318E79F8CA77F7FA4D9B8FB6275F50A
                7FBA889D8820C799D04BD79F6C6A0F9A0150B3367C2246780711A23B07747834
                687ED1C5B684AF7E277A00D0FD0618F3F308879BE6046542C82C7CD7B41F286A
                31BC7B58BF3F2BA7D1EA8FE8B203B16462EB0914CE09F9F6F7D896F82A7BB06B
                3F8EE0EFDD7102CB8C0FBB9CB6B75500CC1FC7E815364706CF284C0893AD54CD
                2D5AD0A67A261B340A5B6026301542198298BD163EBE8390D50A067420BCD77B
                80E00A9BF311C79C87A5A7630680308C08D60500E04137ED715D34A88E2B84EF
                83C48C722FAC64AD47E6E804EDDA05005C688DBFD207BBAE8279E7BA720705E3
                E86AB8D8A0CD8D00B0AE0F4F06C2EF8A4C6607D6303D7172DB119E65618719C0
                D97AEA2261823CC2C99ED0BD97C3C7E4855323038302E42BA94112197042BFB9
                3A12B2116F118294CA84B801606CFF0D4206F020B064A0FE40F67FF9EF5EE8FC
                3AD0DECCA7D2045D093E96D91B79D968C48803ED69B030319407B0238BC27FCD
                58D10C00B23D445D572BCB0655E1535A606A6CE0AC9203ED4D60591CF93520FC
                344F9C4513B4AB0B7637ED533D236602C791E1086C84EEA39C534DBF374D8C5D
                07E367F15B83C36B0CFB6ECEE5DF8FEEF43380F6004F9BC333438E656EF01600
                DA4A1EEAFA0A08BA47DC36E5C8268B73D513DC00D46E36262216BF2FA084FE08
                0A2FE98E5F6A3FB1B12447A541AFEEBC4142385EBB3CFF0F6F1934BF16F72284
                B387F92DC43107757B6E8E31BD12D79B38D12571DBD864C811A54DCDAFF40500
                EA15CAF2E2D35D592468C3ACD05FAF7FD80800EB66E33530443D44033525E8CD
                926DAD11AC5911351872F4CE141E3032A0E2D840996758D23728A5D0EBB29569
                0AAD2BA09DA261BC02FB7C133C3F0FCFC344DB910673AC773B613A2F87EC3286
                FD427F3C5B5241A4ECD1F829A05D5B44037AD57821BD971B00EBF6907E98652E
                88C6C512508323F03B2DE7F3D65591C3C0789D68549870455D1C9EAF5996BFCA
                6B0D981A7310C68F6EC93BB460403DCB6BFF093E913944CA1CA5037BAAB0C359
                D4505491F7315EB8768907C0B6CDB80EDECD22C264BB82A6954E6C8D90F5BD88
                A960E13F6D56B713982D766265777DB2B455A1ADE28D989E32165F82B1F2D65C
                641B20A4051FCFEC2975AEB2FE5D77C398F1941668FBDAD0F319737800EA7685
                5E05B5BA874EC072E819D5D4D27FB746A4665DD8BDA02D57C438018C2ADA0E2A
                FB2C3C47899A7050B5B460AC947C9CCCEA10506D67BE87717D44E1AEC0F89FE0
                730CBC538BC29E02616F7814541F86CF5E0228CC8EE063375E930A40E9E3F1CF
                02AF27F9B12CBA643C9FD1075B768719E5842BA6160C2677F83BE57AFC7AEBAE
                8F86B2B5AAF03260C440418061DD644E0EA22DE62B8FEDB05CBDB460719BC2D3
                1A8329FA106C9B91E20AD7820BECC510858C236C3AD00047449CF504471B7765
                17BBC655BE1CF72F98FB19C160E204FDD1CCCFA402C097D56CB64AB1D0CAD5DB
                4918B6EF318E22843B22AAD4D98089654FB447C8BA2EE238A26E8DF0C587A941
                F38AB6D6A4447C0084DFF600E143152E98DD52FE509C141614C0F981D527CFBA
                234188F6341FE7ED324F8B5D0DEFE7B8EA0EBA1DD923DCA00D1C283747E65400
                581A3A37C3B19D74A9395ED501CB9E883F07F3F517BC011989ED0742DE057548
                16556C8D7F42F9DCF688D47E109108ABF3BEB80AFB02E714BD024E4C56F34744
                2A447F233C4038A8C28A893839DBE61A6B490A3312AC3801DF3DE4DEEB042DD7
                AECF5B4C8B2F55F2B23CF82E4C882AD1F3DAED39275D63CDE33BF583792F881A
                936B3898D5D11BE1790006765D0BCC250941175E82EB0E18F663C28C110DCBA4
                80F1653BDBD5808D11FD405D2FB8C2DAA0A4E2687E850004EB8DF0AD10E64E6C
                008149C31C19AB5A5670B96641D460086876C3E4910D468EACD6ACCB9F47C79B
                DEEA3892E1C851D1E015682B723A7A16594D133ACE067AEF89B589BDFA7D59E3
                BD05A0E2C9F8C910E76C15F5722FB61D0AFE05FEE84B558AE398FE81AF947EDF
                1E112A686D7118DD4B1AD1FF770A78A7845745DE4628233780106FB84120B80E
                C4F80A98A6FB1D0B9525C09FE019EA35791FBBE856CD883909EF9F15223FB25C
                FF495E233B0211236C3D349C575F0E4DD5EDCBDAEA2D00A583E30740E271563C
                81BA80EDA9C1D9C0AC505E468AB88031C5D95208D56D347E0541D050C1FFA304
                556271236354931249B580A6C781A4490A0B9F45F0FF38754AC169F7CA244646
                CB395916F493411FF02EB80B84CDEEFDCDD7117263CB84501D21709DDD347BB3
                32BC05A0E46FF19D60824C3199CAC2F623C1E5F04730553B87CD11A29960A990
                04C0A6B079345B14577847D0CCE266EEC8B22ABC277632FB80E1DE0DC112FA8A
                61EB27A9524A4B1AF59DDD610900BA54DC1ADF6837E43EE5F97DE5E4B85E0CE2
                2E8B46B358BB333BD297D3A0EA61F1210E3B2913B5B31CDB3F37D879B700A494
                A4C20FE27F871442B59B8C8F8299FA5E24941934A3A44B4BFDC8A748612D8F9A
                01366310FCB95FB5A4707FB33EB0BA166B879BC047470A14ACFE68DD07B9873D
                FB544DEBF82680B75104E8307887D1DE0A4FDB1F43BBF8E909B2891A69C7F6E3
                1400A4A42F949C7400A860759C919EE907F24CD53B3B042656144819DBB455CD
                8D7E1A74E36B51B80AB5C32F0A6FBC61F7EC639E16930A80BF20781EF4A6765B
                CE265FE6220000A8B84D8C62018013860AE1541734C0E90CC62F554BCEB82083
                FC16083D291E468C0D9CD17EFADC52B32C884A85FDF88260DDC93ACD9A82D98D
                980699ABDF88A1717C9860ACD95E862DF9577D9A6B68975007834A896B0B38BE
                D467F3676C349D255C5CC00873B65462755B8C4B80D052A176C86C0E78A3D8EB
                AAB1657E782892C9F2859A1F5877CCF454AFCC4DF3EC53FD666C3782B9EBA2FF
                AFD086E51AA514685B6AE6E7E23BB10C9729A6FD59D871D2006E90F4A593837B
                E8AF186E6AD70DBA01D81A3E10A2C8D3A21D480B9A5E2A393171B59A2551B361
                EC7BA277F8013CC363CD989E153315D3044CE8F3857653EE3F7C119EB6CAE171
                03206C3F2B44B1F80200A0A746698CB8FF5E530EAFDC219518D919EB6F636B4D
                B02AFEF43A0B4B70B87A7A49A9370C5996465E83797B082092499AE585CD02B1
                AAC498BDB048E3C423AF44ED47791FF80A40C5C82E9381C656778DB1FE6B1DA8
                315E2AF845B4D66F98698E3704EBB687426C8DFBF3D11B8B5E089C5E7A54EAD8
                EAE591FD190E9D1323C66AABB53E32FCBDE67588AAD9D1B9C05FB4783CD74FB7
                21F7A2D4399AB6CA519DD7C27C49E2765A8CEDDF684761161F11FDEB39E573A6
                C7BD026067E80A20B680AF2213BC21704AC94CA963AD29110B40A015A2605BD4
                C905AF37ED634EEA18C760F6A65827A8D6E4E5196EE50E42E58B9DCED1B30B9A
                FC410E341293AF54A1F57279892B1D56B0017A3C4CFA59BF6D97F129C2577569
                91015FF29F5CDA47EA584B4A780F307BB4226C65101A12B8A830AF699FEA79D1
                09F44056DCA2FFD2BC9FF7ACAFC297BED8532567EA2084470A9A0ECB39A5912F
                88D4FF47470B1CF70A19183354F15CE5D7528992C3A12A5B1D3289151DCE6E77
                84E8FEA7CA24757C7BAD6661D40E8EC5134503385FB3D6FB929BAB558EED0479
                063929145FC86F86D4ACFB05004EE9686A9B28EEE3CF9443CD09DE10AEDB1D72
                1E883E280048FEEE3FB9FCCBDB0580655114AD0675161228EE31CDEAC21F7CA5
                651A174733D1F162B6B9C670E8E65C1E00C7296D5F50DF5F444368552814E178
                5099E47B78B63D219063A324BAAF20F55DEB3FB1DC2B43DA5AAB5DD8218A6548
                BEB8FAB52AA54E8F93AF498A549BB6E2F161417E28B01868A944B7DDDB7020EB
                8ABB2C5E7F5A7B15F6D83D0208648AF2A9AA6D5289DBF6870C03A22704C2CCCF
                01134A1FBA1D00D4FC33722C61F13EB1EEF0AD7A45C1DF7CA5654E889B02B66A
                8B68ECAFE8F766F1A74C6E001C6775B3407DD789B9F60D99C9DC4DCAC1086D64
                9F566FC78A7260121236E4F4F3C77AFC92740D6AAD5996466C06165F17FDFFBB
                EA6585FFF4850EAD3F56E5C5A683767746C2367F5BBF377B7D2300C8E9509593
                716443876001043C4E3EC4B45FEA24B68386DFC097DF27AC16F38CFFABAD5796
                A5B69AE5916940AFBB90723383D4C9F9677CA1533525663C6CCFDDA22B2DB33B
                EBE25CF7181B1D8EB26735EE9C1C8C4EAEC2E9D7033F2DEDC2A3ED50307F2B43
                3855262B025EA958742BC2838B0C856528A1D5619AB606A9183D4ECCAFF3960E
                3DA00D6414106DA258B1ACBE40B73D7BA5EBFB460090D33A1D2B2319809251DC
                77AB1483ABE64B99C87EC4308AF001153FC977FE63CB07DC12006B2220404347
                C4E2E539D5E242AF023457832C7215C7F1B74BA9812F723AFDBB86EEC8B0B408
                006DCE739A57A1F36782DA21077C3EA61C54F54BBB0C7F1E6654B2CE62C20754
                C8EE278380EA25EF57CCD56AD646ACF738565FA15E58E4B54655CD8C7E003488
                166D14FC6910C2E3B49FE434DAD62D5E9161BFD79E81418F13E1E6C64D593D73
                3F1E626AF74EA0FD48F035008DBF2A0F067534218A06E0EC2D0CB03525D0F0C8
                B2F8382CC4BDC209147E5A35BFF07FBD11DEF476AC0E42E85F417BE284741D9D
                D26CCA1DDCB45F8B97A4C8796D1C5B4F7E858975E2ADD02FE465D5A3DAF30AB6
                CF833F8189A689F144A3DF06B4F49B81863EA8D941AB473FA7D5EAD41B93A57B
                157A1C6E89893E06B486892174258BE57D0CEB6FE64A028036E70FEA1130F0A8
                7044C523B8593EA8AACD8287FDB861344C78D075DA739B40F82928A9F811E445
                AB9ED381D60EA68A569F4090375CF3416E8BD1699B1725EB7F50AF047738CF7D
                62CBA2958A27AB5ABD33444EC7FA3BAAAA7721F156070F022B0A47980610105F
                426B00C1DDC703047E15180B87C8DBEA59C567A40A5FB3307225C732F31A4E95
                F172EDFB79AD9E53B67D5596DA831FB5DB600BB82F49D38B0C325C35150FFAEB
                5D95ADE916F511083E4D2CBFF3A747EAD5F9AFFA7C5596277C1AC9593FCD11D7
                898CDB26386513A418C63FA3999263750AECD84DE885EE86ED745CA5CC7FB1BD
                3BCDD2AECB1F4632364ABB19A49FEC0201FEE522221BAD1C547957AFCB5B5746
                F4054B7F8886B91E872FBBD525E1935D37D16E19001E04D80ECE1FD5296013E6
                BA0C23A05D0F61EF3AB953B94C6AC478BB1A591B1664257809629959C09CA2E1
                677664852AB968C96DFDC1846703EFF00F986C07FCD393064393CB10BC505669
                3A203581F25970486CACDA88311067AC00031AEDE1452AE98589A045855ED522
                7CFAD114F95117CB72641788FA84E77D1E089A323942562B38FFFDB75B23C8A6
                50552DCB8C8147AA819D1BB952824FC9383431605E61AEB7747DFFD91CF5103F
                68C6C1FEA355D670CF4B4DB02A35F0F731D08A833246F95F5FC1E08596932730
                624603D82341D8A026714211614992EA9D12C959EB6D03C0CDE42F7A2D6765DF
                821460263014D22C08E2703DFDE12430FD2366F1EFB05E192CCB15F861AE0A39
                2D7C5262A953AB95F2402DE1B82818D91582AE7858D54740E8874068450BC112
                3D26FFB0B68EDD183AB7DC720BECDFBE9FCED27A42BDAC7E32EC4D1A33DCDB04
                048FEB6E0DCF5E478C045DA147F10116B4ADB57B8C770D00CFE638ADBB0F567B
                2C703C840857DA181F41E020F0BA0C71C7370C66F62B5F2BBD7CBB79BD230078
                36725A1DE2A8970D6058FE57E4DD41C07810C800CF3AC409054A00A106A43573
                045742D89201C2A62396BB66671D67A55ED8F0B5FD3FAE269F5BE8D5C4830000
                000049454E44AE426082}
              OnClick = ShowFoods
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitLeft = 16
              ExplicitWidth = 88
              ExplicitHeight = 74
            end
            object lblFoods: TLabel
              Tag = 2
              Left = 0
              Top = 76
              Width = 120
              Height = 21
              Align = alBottom
              Alignment = taCenter
              Caption = 'FOODS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 427252
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              OnClick = ShowFoods
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitWidth = 53
            end
          end
          object btnPDV: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 120
            Height = 97
            Cursor = crHandPoint
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'btnPDV'
            ShowCaption = False
            TabOrder = 2
            object imgPDV: TImage
              Tag = 1
              Left = 0
              Top = 0
              Width = 120
              Height = 76
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                00400806000000AA6971DE0000000473424954080808087C0864880000000970
                485973000001D8000001D801FA5CA6720000001974455874536F667477617265
                007777772E696E6B73636170652E6F72679BEE3C1A00000F264944415478DAD5
                5B0978535516BEF765E996344BDB74636BC1165071A9CAA82028838E3A0C4A45
                2D8A1604C40F5161D002B214115AA838E0360CBB145B051704F5733E6740CB87
                C8B0C83208656BA1A5B40D342949DA6679EFCC792F2F69124BFB122861CEF7E5
                7BAFB77739E7BFE79E73EEB9F751D2C954FB784F83026020E1C84D8493F5A600
                192C101DE58896705485E548D40A2C31E3DF26C24139161CE358E60827739525
                EF3869EC4CFE6867746A7E3AFD0EE0C82800321405BC1180524150FE07547882
                F0CE9751B19C2F6B7D17CB01EBFD17CB7F6058FA49C2BEA3FBAF5B008C6333D5
                7297733C32FD02CE625FF0115610D8E73D4810BCF528478F60DBD5D0CCAC341C
                3962BD2E0030BFD44D0776E65564703232AB179806E2C33875E0FB6E2CDB851A
                514E81963376D979425A4C9A68B58DEFA3B1C91263B747EA14942603C7F6E638
                9A81FDDC8D6DFAE353D9065817F1F53D251BF99EEEC001735800E027C4FC528F
                5CCAC222642881670C44C1F1DD8215BE643828B5591C3B52B6D6348532464D56
                4AB42C3A7620AE9F1CCAD26C044115A01975C8C61B865F8F168BB05F1B00CC93
                BBF644755C870C0CF0557364EC04FEBDB8C5D5549A545C670B15DCB6A8F6C17E
                31325B4B0E1ACB3C1CA3971704372065C071B94987CA2B3A1D00F36BDD9EA040
                56E1E01A1F35AF44D59E19DB50B9916E22ECD5143C906024915DA8EEFD14DA99
                85682FBAFB8060461D189B78F0E8579D0200AFF296695D17A3C0D3C4D9E60B1D
                E8CE96589DAEB7535684A6E6A1526DBF7E314C946316F2331579508A2000B074
                51E2E1DF664A5D129200807C22B73477F9070A3EB675ADC319C2CA9FD6BC5FF9
                CBB5143C908C7FE8733B70F019EA5D2FF0D807966C3028A3C7D27DFB9C570C00
                4CC852D8E26BBF40CB3C8CB41AB9CD2EB92257BFE874633885F7504356BA8695
                457C0C2C0CF782C0C116833E299BFEF8A32B640078B5B7CD4E5D839DE6BAD73B
                AF58B0561D756E02CD27ED767CAD49B00D157D3E0080895E10003E311C3C36BA
                BDE5D02E0097F2538AD0B84DF306264016AA179C7B33DCC2B647F577F65E88FC
                CEF0808036A130E9F06F338206C0323F15AD3D6C6A5529B25C3DFFDC4BE11650
                2208CB90DF573C8611272EFB72DEA14D00CC8B0D3DE52EF93EAFAB2364B38AAB
                C946B5E7C22D9C141296C3993E5FF8D804136E2B6E4F3E70ACB24300B0016D5A
                9C5CE60E7284F8FB945D1E99A59FDE6AF02ECD4EBD9BB2640DDA84441FC3D8CC
                01E46BDFAD5E196E007832DDDA43EB5444F293980E6E397E4C3870F481407BF0
                3B00AC45496328A16BC01DDD39B0C23D3133CEEFF3AD830014A3623DDB6A18BD
                2098D467AB123A3B18924AC6BB32EFE080EEF4C6092C333AF1E06F1B2E0B80F9
                A36E3A458BA35C88ED31C445100A5479E76706768CC6F1318CCD3F45C1230241
                6008DCA62A3A7720DCC27BA8FEAECC429425CFB37750308E4CFDBE566DF603C0
                B62C291F05992BC6F695D156E6469ADF768407937B4534C638A2F97719C3AE44
                10B2DDDB59F28AA6A8FAFD700BEE213E62A4D1F6DF70C2BAF172E1329D95B4BF
                7CC1EF0080D5F1EAE6265925AA8AB0A5450F302A7A4A5DA994412CB35226619B
                0FDC9A4037C52EAA7A32DC82FB525DFFCC6791B362D19B5D202DB2344F3EC10B
                40D372C354C2D2256E94C88998A4BA3EF449696BD99ADFA51FB8E0A0B81CCEC7
                1656A7845B685FE2BD82B12AE398671789DA302561FFD1A57E00D8961B8EA061
                EB2BC6FAE3635EAE5B2579807CC258D9D40BB8047402801CBD4153587D32DC82
                FB92F19E8CF138392BC47CC261C39E63FDBC00D856C7DF4159668FB8F66D5100
                49749231A89493353FF51BDCAB3F2AD80116C6C616D4AC0DB7D0BE24E413ACF6
                DAD6A48AFC36C39E230704005A5619DEC5B229E0B694EB6226D68F0976804BF3
                52F2D0D7168A61B3199F0D012ED23763E49303242420A9E25FCF2FBD467C728C
                8C6F8EF10203CC04DD37C70FB6C7A37140E67AAC3F9AEF0BB5BD286177F91B02
                00CDEB120EE36ABF896784E5C89F5413EAFF1934006FA7DC83C1D14EE297D4FC
                5D9CD08E705241B86CA2756DDCD69363DBE3B1FEBE8C477092BE15DAB2E48061
                77F96DD4B23ED12007AE160B290EE68874C975F4C5E0931BB091C86CC7527682
                3B91E997D9F59FBDCE0101819E19BFE564417B3C0ACBA0A5A5414CB4724E3B24
                527BB1211B80FB5CECA82C6A8C7150B0C2FB82D0723CB98BDDC5C908C6485E6A
                09A8686FA371477502FE0F4E26168860B7E43CEFAC8BDC60D872AA43C36B1C94
                B103C11CE0F6063082DA4BE3E7A23AE48B882E8ECCBD90172A00D7921A72D230
                14A7C522DFFBF55F9CCE92D2CE3838B308D5669AA0512C9D439B4BF52514981C
                519DC6468D365E57D6FB72641A95B60597C33061390099AEDF787A919476171F
                C8188771CE4A715FBB81B67C16B717FFC8E23BE2386640F4B3F53BC32D5C47D4
                30325D4323A00EF98EE06D02C3287A6A4B8E9F96D2B67E48C640DCAF94892750
                7BA87D535C2576E24E2F13455A544E6D65B805EC884CCFA73D87FC7E2C1AC6BD
                BA928A3BA5B6ADFB6346BA8CC029F118AE82DA3F8FE323B8381E49478B233EF6
                79CBC58E3A818D372A5B8CC6A7D11727731EABCD8A4FE2E39F09F1BE0BF558C6
                BF1C50EF5C64B7BAA8FAA7A00018D37D2BAEFF3F0B868C409EB6B872B1D4B697
                8665C43BEC6014CF132E50FB977ABBE0161011255C8CC0F8DFD15127B6E5890B
                71B33423E074C6EFF013BCEFADFFF3ABD71A27F03998FE9AC2AA3D9284CFEDA1
                A50CA9C346BC2B03CA414F6DF119C92742271EEE15A103F4296E3EECD4BE9907
                80EF8C1225270D80A69589CB080BAF5C56B82041C0BA83D505D2B4C034BE472E
                42B6568C2FFEA35B57D95FAAF03C0102709177AA6E3E1080AFF5C212E0195112
                673C1D2161096CD0C7B634C92601C768840217F1516DEA17B27A9788F0F35902
                9E3A2C7358B5A0FA13A902982776E723B947DCC031AF6B5757BC130C00FC1270
                729C113C4BC0B15557299CB101BF0DE6D2A21E375706D3E1B524FE281E1FB5A8
                3182FA03CBA4E956579C09AA8F4733D259863B256EFB2BA8E35B3DBA41C8E2DD
                02BA87018AE1A6EBD60D5E9ADC7D2C70B05A0C877FD12E3F7377B07D340C4F1B
                88C6BB4C881F58BA0701D09560798E1873BFA01CDEB026DC825E8E1A2777FB1E
                1F0F89A9ADA9BA8FAAFE166C1F1747F41A878D578A81DF06EAFC5E3B07677F9E
                B8352D8A18667A23DC82B6459726A5C68182398F93A4E0DDA78B75758FFBA8A6
                2AD87E1AB27B16E1DA9F266EAC6653FB0F9A6CCAD2CF45E3B543F9A8E9BE700B
                DB26007FED320E676CA5A8A93F6BDE3B7B6F28FD6014B903FB18C06FA0700F34
                82C277AA04A75C5EE7D90E2BD8281D1D16DA597FCB9AC474CE093F2090E957CB
                45B69D4FA053344BCF2E0D96BFFA9137AAE44C336E878982DF0ECB39A5414888
                38FFA53D840CDDCC0F4259E661C5A30DDF8704C0EA84C988EC7B1D0A77652070
                4E19D73D6EF1B9EAA0677F543ABA4FF8D69D4F805FF59B2A6E7703B04DCB6783
                A7823BA4FD58F9B0393714009A5725774704BF4366FB7606081448135AEE42F5
                3B55F343E1CFF44CDA7AEC6FB4E84516EB3F3B9D2700E0D8A6C9A240F78A86D0
                A6502892E8FDC12545AF77AA1D9D181341A23186202A11E45BF4A51587BC6971
                E776CD6144FD263708305EF960A3E4B4F8FF039973D3C603C00AD1D81FD26DA8
                B8852FF702E028D34EA12CBC2BECB03872526632F7967A3072BD137FC7A9B1AA
                C731D4EE9EE2CEF535DD86CA657E00C0F604958B71546285383708F419F95053
                C9950CDCBC2E71083AECC9186346A3CE95468E33AEA334B80B8DD679A94380C2
                CBC8530C6A66A9FAAD9A75C15E8A6C1CDF6D341AE7F5A21731DA5DCD699E7B8C
                7E87A36C59EC6C0EE85BA2D139A3688AEE1BAA4B6C2E8E1F8C03FE1BFB62BC06
                0FE894E8F17592DD976561D220CA31DBF83E3C8691B264AAEAED739223C0DA69
                893191D688A3D8B6ABC8C74CEDEA4A6FF6D80F00D8AED5B23228C7C10CA2A52E
                540C699C2175B000004AD16A3F1D90BB3F1E35AE3E536A1FD682E4129CEB1C3F
                EF00F4843AFF5C86D43E2E4DEA56883BD23CD1E39C77B9223313D6945BDA0480
                27D78ED8E7B0F2C7EEC188039FF72AEF6FDC1B2C002D25717C74991D70805111
                F582315D6A1FB645C99B90E927026E9457AAE6D6A44969DFF86AD73BB1DD4E3E
                F0114E83087D46F3F7337ECBBACD2B32EC4ECD8FD8E83EE16A0990D33227733B
                1D6A0AEA4EA0FDD3B8E1B88C36FB1F60D0795163EAF32503B024E52FE082AF03
                0E59DE52CFA999DB515BD36B3DB40C65F763DC90E6BEEA43B6C57E78764860BD
                362F49C16E4D1AEB84FD38A056BC15FAB5DC78293B58AFD05C12F72C0EF12A0E
                1E8346B544D9D55848EF0FEE7EA1B52899BF8AF32AE1FB20501A6DAF2DE8E88E
                227F1C6EE9D6F52BE47D98183D36B0547E9B7ED9E9B39200E0C9F5B39A4F3A6E
                C11F153561857C70E38BC1301F2EB24CEFF23E6E745E16AD3EE0048C885D5AB5
                B9ADBAED5E9474FEAC2EC0999BEEDD84B0A440F140E34C721D93F5CD94028E65
                A6FB84D06F6B9654CDBE5CFDF6AFCAF2F6609766152E01EF256974436B65B471
                42B0AADCD9C4ABBDB577EA0728F8449F03D90DEA45D5CF857C5556E8783B91B3
                11B168D1C9709F9BE25FCB5DB2E783358C9D45A6FC1E5A0575AC07FE4277ABC1
                DCAC52568FECC85E48BB2EBF91C8D854CD72947E9C0704FC9D25207B4A797F43
                58AFCBDB0A92B3D0D27FC687B9D0EA29D6ABEB92C6D11557E1BABC17045C0EAE
                5DEA856813F23C8611D176128E7957EE52CEA70F5DDD4F643AE4A72831C60674
                0E619929C89CA2F5333B58A0CA3F3FE7AA7E30E14BE81D1EC3C1D6E04F07AD86
                E62C03F44D5983A9B4B33750FCC6C6A649CEC18DDB02B4EF5D7DF2090D3839B9
                31B36AB606D35F481F4DC12E6D0F96837528EA20DF5B1CE82A4F71008B145C64
                C9D5D608F83041D5C43239F8CA6B604FBFA40AD06D328E8C899A5E7336D87E43
                FF6C8EF7103FC73E83EB8FCFB226F95E65C159B1E2DF5FA1567C2A63943F850A
                8620B41C06E16EF229047B040A1B1390313A0F2C4C53BD5E17F2AEF58A3F9C84
                BD3A0D6763277318F12143F13E207834C3C97F38894CEFA22C3D8EF355CEB2DC
                B908CA35129745D894589AD56AA53C5A031C978A2D333170C9C059BD1B85EE8F
                422BDA489B19B1BFA54DCDECFB0979172C57C0FED5FB7496CF273865CE71B836
                F998E1E600102E9BE5F5ABD7CEA7B6A25F3F84EF6BA22C64157DFDEA2CB14EF9
                78DAB15D7B2BCEF628E4782832DECF9D130809040E03AF831877FCC050A644F9
                42FDC12BE1EB9A01E04BB05D1DEF70CA0632ACF015791F14300305D2E3BB9670
                EE042582604569CD1CD0060C5BCA51D86384E58ED8594799940B1B5742FF0392
                88203D981D28320000000049454E44AE426082}
              OnClick = ShowPDV
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitLeft = 16
              ExplicitWidth = 88
              ExplicitHeight = 74
            end
            object lblPDV: TLabel
              Tag = 1
              Left = 0
              Top = 76
              Width = 120
              Height = 21
              Align = alBottom
              Alignment = taCenter
              Caption = 'PDV'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 427252
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              OnClick = ShowPDV
              OnMouseEnter = FuncoesEnter
              OnMouseLeave = FuncoesLeave
              ExplicitWidth = 33
            end
          end
        end
        object Panel1: TPanel
          Left = 378
          Top = 0
          Width = 914
          Height = 97
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel1'
          Color = 427252
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          StyleElements = [seFont, seBorder]
          object nbTotais: TNotebook
            Left = 0
            Top = 0
            Width = 914
            Height = 97
            Align = alClient
            TabOrder = 0
            object TPage
              Left = 0
              Top = 0
              Caption = 'PDVTotal'
              object dbtxtPDVTotal: TDBText
                AlignWithMargins = True
                Left = 564
                Top = 12
                Width = 335
                Height = 85
                Margins.Left = 15
                Margins.Top = 12
                Margins.Right = 15
                Margins.Bottom = 0
                Align = alRight
                Alignment = taRightJustify
                AutoSize = True
                DataField = 'TOTAL'
                DataSource = dsVenda
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -48
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                StyleElements = []
                ExplicitHeight = 65
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'FoodsTotal'
              object lblGeralRestaurante: TLabel
                AlignWithMargins = True
                Left = 802
                Top = 0
                Width = 97
                Height = 92
                Margins.Left = 15
                Margins.Top = 0
                Margins.Right = 15
                Margins.Bottom = 5
                Align = alRight
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -48
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                StyleElements = [seClient, seBorder]
                ExplicitHeight = 65
              end
            end
            object TPage
              Left = 0
              Top = 0
              Caption = 'DeliveryTotal'
              object lblGeralD: TLabel
                AlignWithMargins = True
                Left = 802
                Top = 0
                Width = 97
                Height = 92
                Margins.Left = 15
                Margins.Top = 0
                Margins.Right = 15
                Margins.Bottom = 5
                Align = alRight
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -48
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                StyleElements = []
                ExplicitHeight = 65
              end
            end
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 784
    Width = 1294
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object ActionList1: TActionList
    Left = 401
    Top = 1
    object actAbrir: TAction
      Caption = 'Ctrl + A | Abrir Gaveta'
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actReceber: TAction
      Caption = 'Ctrl + R | Receber'
      ShortCut = 16466
      OnExecute = actReceberExecute
    end
    object actLerPeso: TAction
      ShortCut = 16464
    end
    object actBusca: TAction
      Caption = 'Ctrl+L | Busca Pre'#231'o'
      ShortCut = 16460
      OnExecute = actBuscaExecute
    end
    object actCliente: TAction
      Caption = 'CTRL + C | Clientes'
      ShortCut = 16451
      OnExecute = actClienteExecute
    end
    object actReimprimir: TAction
      Caption = 'Ctrl+I | Imprimir NFCe'
      ShortCut = 16457
      OnExecute = actReimprimirExecute
    end
    object actTEF: TAction
      Caption = 'Ctrl + T TEF'
      ShortCut = 16468
      OnExecute = actTEFExecute
    end
    object actDesconto: TAction
      Caption = 'Cltr+D  Desconto Item'
      ShortCut = 16452
      OnExecute = actDescontoExecute
    end
    object actImprimePedido: TAction
      Caption = 'Imprimir Pedido'
      ShortCut = 16467
      OnExecute = actImprimePedidoExecute
    end
    object actImprimeItem: TAction
      Caption = 'Imprime Item'
      ShortCut = 16453
      OnExecute = actImprimeItemExecute
    end
    object actTranfereMesa: TAction
      Caption = 'Trnasferir Mesas'
      ShortCut = 16450
      OnExecute = actTranfereMesaExecute
    end
    object actAtualizaMesa: TAction
      Caption = 'Atualiza Mesa'
      ShortCut = 16461
      OnExecute = actAtualizaMesaExecute
    end
    object actAbrirMesa: TAction
      Caption = 'Abrir Mesa'
      ShortCut = 16462
      OnExecute = actAbrirMesaExecute
    end
  end
  object dsPesqProd: TDataSource
    DataSet = qryPesqProd
    Left = 584
    Top = 320
  end
  object qryPesqProd: TFDQuery
    AfterScroll = qryPesqProdAfterScroll
    OnCalcFields = qryPesqProdCalcFields
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'SELECT '
      'PRO.CODIGO, '
      'PRO.DESCRICAO, '
      'PRO.CFOP,'
      'PRO.CODBARRA, '
      'PRO.NCM, '
      'PRO.REFERENCIA, '
      'PRO.PR_VENDA,'
      'PRO.PRECO_ATACADO, '
      'PRO.QTD_ATACADO, '
      'PRO.QTD_ATUAL,'
      'PRO.QTD_FISCAL,'
      'PRO.UNIDADE, '
      'PRO.EFISCAL,'
      'PRO.E_MEDIO, '
      'PRO.LOCALIZACAO,'
      'PRO.PRODUTO_PESADO,'
      'PRO.PRECO_PROMO_VAREJO,'
      'PRO.PRECO_PROMO_ATACADO, '
      'PRO.PRECO_VARIAVEL, '
      'PRO.DESCONTO,'
      'PRO.INICIO_PROMOCAO,'
      'PRO.FIM_PROMOCAO, '
      'PRO.SERVICO, '
      'PRO.REMEDIO, '
      'PRO.GRADE, '
      'PRO.SERIAL, '
      'PRO.PREFIXO_BALANCA,'
      'PRO.TIPO_ALIMENTO,'
      'FROM PRODUTO PRO'
      'WHERE (PRO.EMPRESA=:EMP) AND (PRO.ATIVO='#39'S'#39')'
      '/*where*/'
      '')
    Left = 585
    Top = 272
    ParamData = <
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPesqProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesqProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryPesqProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesqProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryPesqProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPesqProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryPesqProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryPesqProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryPesqProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryPesqProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryPesqProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryPesqProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryPesqProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryPesqProdREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryPesqProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryPesqProdPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryPesqProdVIRTUAL_PRECO: TExtendedField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_PRECO'
      DisplayFormat = ',0.00'
      Precision = 19
      Calculated = True
    end
    object qryPesqProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryPesqProdQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryPesqProdSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
  end
  object qryVenda: TFDQuery
    BeforeOpen = qryVendaBeforeOpen
    AfterOpen = qryVendaAfterOpen
    AfterPost = qryVendaAfterPost
    AfterDelete = qryVendaAfterDelete
    OnCalcFields = qryVendaCalcFields
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select * from VENDAS_MASTER'
      'where'
      'codigo=:cod and tela=:tela')
    Left = 517
    Top = 160
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TELA'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendaFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendaFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryVendaFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryVendaCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryVendaVIRTUAL_CLIENTE: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ID_CLIENTE'
      Size = 80
      Lookup = True
    end
    object qryVendaVIRTUAL_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDEDOR'
      LookupDataSet = Dados.qryVdd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_VENDEDOR'
      Size = 50
      Lookup = True
    end
    object qryVendaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryVendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendaFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendaNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryVendaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryVendaVirtualEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'VirtualEmpresa'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 50
      Lookup = True
    end
    object qryVendaGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryVendaFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryVendaVIRTUAL_TABELA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TABELA'
      LookupDataSet = qryTabela
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_TABELA'
      Size = 30
      Lookup = True
    end
    object qryVendaVIRTUAL_TX_ACRESC: TFloatField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TX_ACRESC'
      LookupDataSet = qryTabela
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ACRESCIMO'
      KeyFields = 'FK_TABELA'
      Lookup = True
    end
    object qryVendaVIRTUAL_CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CNPJ'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnValidate = qryVendaDESCONTOValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryVendaTOTAL_TROCA: TFMTBCDField
      FieldName = 'TOTAL_TROCA'
      Origin = 'TOTAL_TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryVendaFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryVendaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object qryVendaFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object qryVendaFK_ENTREGADOR: TIntegerField
      FieldName = 'FK_ENTREGADOR'
      Origin = 'FK_ENTREGADOR'
    end
    object qryVendaVIRTUAL_ENTREGADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ENTREGADOR'
      LookupDataSet = qryEntregador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_ENTREGADOR'
      Size = 50
      Lookup = True
    end
    object qryVendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryVendaVIRTUAL_ENDERECO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ENDERECO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qryVendaVIRTUAL_CELULAR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CELULAR'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CELULAR1'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaVIRTUAL_NUMERO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_NUMERO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaVIRTUAL_BAIRRO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_BAIRRO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'ID_CLIENTE'
      Size = 50
      Lookup = True
    end
    object qryVendaVIRTUAL_COMPLEMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_COMPLEMENTO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    OnDataChange = dsVendaDataChange
    Left = 520
    Top = 208
  end
  object qryItem: TFDQuery
    BeforeOpen = qryItemBeforeOpen
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    BeforeDelete = qryItemBeforeDelete
    AfterDelete = qryItemAfterDelete
    AfterScroll = qryItemAfterScroll
    OnCalcFields = qryItemCalcFields
    AggregatesActive = True
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode, evCache]
    FetchOptions.Mode = fmAll
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM VENDAS_DETALHE'
      'where'
      'FKVENDA=:CODIGO'
      'ORDER BY ITEM;')
    Left = 515
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItemITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItemDESCRICAO_SL: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'DESCRICAO_SL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qryItemEFISCAL: TStringField
      FieldKind = fkLookup
      FieldName = 'EFISCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'EFISCAL'
      KeyFields = 'ID_PRODUTO'
      Size = 1
      Lookup = True
    end
    object qryItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      OnValidate = qryItemVALOR_ITEMValidate
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      OnValidate = qryItemQTDValidate
      MaxValue = '99999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
    object qryItemE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryItemQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryItemFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
      DisplayFormat = ',0.00'
    end
    object qryItemOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryItemQTD_FISCAL: TExtendedField
      FieldKind = fkLookup
      FieldName = 'QTD_FISCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QTD_FISCAL'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemDESCRICAO_OBS: TStringField
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_OBS'
      Size = 250
      Calculated = True
    end
    object qryItemOBSERVACAO: TStringField
      DisplayWidth = 150
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 150
    end
    object qryItemVIRTUAL_TIPO_ALIMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TIPO_ALIMENTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO_ALIMENTO'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR_ITEM)'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    OnDataChange = dsItemDataChange
    Left = 517
    Top = 320
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, razao as razao , cnpj, endereco, numero, bairro, ' +
        'municipio, complemento, uf, cep, fone1, celular1  FROM pessoa'
      'where'
      '(CLI='#39'S'#39') AND'
      '(ATIVO='#39'S'#39') AND'
      '(CCF='#39'N'#39') AND'
      '((RAZAO LIKE :NOME) OR'
      '(CNPJ LIKE :CPF))'
      'order by razao')
    Left = 592
    Top = 160
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'CPF'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 18
      end>
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryClienteRAZAO: TStringField
      DisplayWidth = 100
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 100
    end
    object qryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClienteMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClienteFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClienteCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 593
    Top = 209
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT CODIGO, DESCRICAO, EFISCAL, E_MEDIO, QTD_FISCAL, TIPO_ALI' +
        'MENTO FROM PRODUTO')
    Left = 168
    Top = 137
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryProdTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
  end
  object qrySoma: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'SUM(vd.valor_item) TOTAL'
      'FROM VENDAS_detalhe vd'
      'where'
      'vd.FKVENDA=:CODIGO')
    Left = 322
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qrySomaTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryConta_Movimento: TFDQuery
    BeforePost = qryConta_MovimentoBeforePost
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas_movimento'
      'where'
      'lote=:lote and id_conta_caixa=:id'
      'order by 1')
    Left = 75
    Top = 192
    ParamData = <
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryConta_MovimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConta_MovimentoID_CONTA_CAIXA: TIntegerField
      FieldName = 'ID_CONTA_CAIXA'
      Origin = 'ID_CONTA_CAIXA'
    end
    object qryConta_MovimentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryConta_MovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryConta_MovimentoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryConta_MovimentoFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryConta_MovimentoLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryConta_MovimentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryConta_MovimentoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoTROCA: TFMTBCDField
      FieldName = 'TROCA'
      Origin = 'TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaVenda: TFDQuery
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select coalesce(max(CODIGO),0) codigo from VENDAS_MASTER'
      'where'
      'SITUACAO='#39'X'#39' and'
      'fk_usuario=:ID and'
      'TIPO=:tp and'
      'fkempresa=:emp'
      '/*where*/')
    Left = 72
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TP'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaVendaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 152
    Top = 344
  end
  object qryTabela: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from tabela_preco'
      'where'
      'fkempresa=:id'
      'order by descricao')
    Left = 320
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTabelaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryTabelaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTabelaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTabelaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
  end
  object qryComposicao: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select id_produto,quantidade from produto_composicao'
      'where'
      'fk_produto=:produto')
    Left = 248
    Top = 136
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
  end
  object qryContas: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas')
    Left = 168
    Top = 248
    object qryContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryContasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryContasDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryContasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryContasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryContasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      DisplayFormat = ',0.00'
    end
    object qryContasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
  object qryGrade: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select CODIGO, FK_PRODUTO, DESCRICAO, QTD, PRECO from produto_gr' +
        'ade'
      'where'
      'codigo=:codigo'
      '')
    Left = 764
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryGradeFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryGradeQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryGradePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsGrade: TDataSource
    DataSet = qryGrade
    Left = 768
    Top = 320
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
  end
  object qryPesqConta: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas where id_usuario=:id AND SITUACAO='#39'A'#39';')
    Left = 75
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPesqContaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryPesqContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryPesqContaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPesqContaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryPesqContaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 
      'All (*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;' +
      '*.tif;*.tiff)|*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.e' +
      'mf;*.wmf;*.tif;*.tiff|Portable Network Graphics (*.png_old)|*.pn' +
      'g_old|GIF Image (*.gif)|*.gif|Portable Network Graphics (*.png)|' +
      '*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.j' +
      'peg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles' +
      ' (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.tif)|*.tif' +
      '|TIFF Images (*.tiff)|*.tiff'
    Left = 480
    Top = 4
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 440
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 536
  end
  object qtdAtacado: TFDQuery
    Left = 168
    Top = 192
  end
  object dsMesas: TDataSource
    DataSet = Dados.qryMesas
    Left = 80
    Top = 344
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 672
    Top = 65534
  end
  object frxReport: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42203.460160023100000000
    ReportOptions.LastChange = 44077.368255138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Linha,qtd:Integer;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if linha>14 then begin'
      '  Header2.StartNewPage:=True;'
      '  line49.visible:=false;'
      ' end;'
      '   if linha<14 then begin'
      '    qtd:=14-linha;'
      '    footer1.height:=footer1.height+(qtd*16);'
      '  end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'Linha:=0;'
      ''
      'end;'
      ''
      'procedure DetailData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Linha:=Linha+1;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 640
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Endereco'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COlonna MT'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 737.008350000000000000
        RowCount = 0
        object Memo84: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 102.263080000000000000
          Top = 3.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 430.127830000000000000
          Top = 3.722820000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 17.759060000000000000
          Top = 18.897637800000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 35.771653540000000000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object frxDBPVRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 18.897637800000000000
          Width = 599.735560000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_CLIENTE"]')
          ParentFont = False
        end
        object frxDBPVNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 34.771653540000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_VENDEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_VENDEDOR"]')
          ParentFont = False
        end
        object frxDBPVDATA_EMISSAO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.016080000000000000
          Top = 3.779530000000000000
          Width = 205.379530000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 18.118120000000000000
          Top = 2.779530000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo82: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COlonna MT'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object frxDBItensID_PRODUTO: TfrxMemoView
          AllowVectorExport = True
          Left = -62.031540000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 2.559060000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ITEM'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ITEM"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 2.559060000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO_SL'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO_SL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 398.107360000000000000
          Top = 2.559060000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'PRECO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."PRECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 496.160000000000000000
          Top = 2.559060000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          DataField = 'QTD'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 643.720000000000000000
          Top = 2.559060000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ITEM'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VALOR_ITEM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 587.360000000000000000
          Top = 2.779530000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'UNIDADE'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."UNIDADE"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 391.520000000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 583.520000000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 737.008350000000000000
        object Memo83: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 2.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 2.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 426.907360000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 496.200940000000000000
          Top = 2.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 641.760940000000000000
          Top = 2.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 587.400940000000000000
          Top = 3.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 391.560940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 583.560940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 117.165366540000000000
        ParentFont = False
        Top = 268.346630000000000000
        Width = 737.008350000000000000
        OnAfterCalcHeight = 'Footer1OnAfterCalcHeight'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874015748000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object frxDBOrcamentoOBS: TfrxMemoView
          AllowVectorExport = True
          Left = 127.579530000000000000
          Top = 51.015770000000000000
          Width = 595.200000000000000000
          Height = 32.881880000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 51.015770000000000000
          Width = 114.595300000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 84.415770000000000000
          Width = 384.000000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 84.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object frxDBPVSUBTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object frxDBPVDESCONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object frxDBPVTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 172.579530000000000000
          Top = 31.236240000000000000
          Width = 549.845640000000000000
          Height = 17.763760000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FFPG]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 9.425170000000000000
          Top = 30.236240000000000000
          Width = 159.949660000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 517.795610000000000000
        Width = 737.008350000000000000
        RowCount = 0
        object Memo80: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 112.601670000000000000
          Top = 2.645669290000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 440.466420000000000000
          Top = 2.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 29.097650000000000000
          Top = 17.763779530000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 19.897650000000000000
          Top = 33.637795280000000000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 112.897650000000000000
          Top = 33.637795280000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_VENDEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_VENDEDOR"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 524.354670000000000000
          Top = 2.645669290000000000
          Width = 201.600000000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 28.456710000000000000
          Top = 2.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO n'#186)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 112.385900000000000000
          Top = 17.763779530000000000
          Width = 614.853680000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_CLIENTE"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 85.149660000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 737.008350000000000000
        object Memo79: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Height = 81.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 109.883550000000000000
          Top = 17.338590000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 110.179530000000000000
          Top = 36.081880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 67.845640000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 16.563760000000000000
          Width = 86.400000000000000000
          Height = 65.461410000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 51.445640000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = -0.220470000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 66.252010000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 101.663080000000000000
          Top = 0.774830000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 101.959060000000000000
          Top = 19.518120000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 49.281880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 86.400000000000000000
          Height = 65.461410000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 33.881880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 593.386210000000000000
        Width = 737.008350000000000000
        object Memo78: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 48.954360000000000000
          Top = 2.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 430.686890000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 499.980470000000000000
          Top = 2.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 645.540470000000000000
          Top = 1.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 591.180470000000000000
          Top = 3.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377950000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582680000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110240000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677170000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637800000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 634.961040000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo81: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 50.174830000000000000
          Top = 2.000000000000000000
          Width = 334.941930000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 398.107360000000000000
          Top = 2.000000000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 499.160000000000000000
          Top = 2.000000000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 643.720000000000000000
          Top = 2.000000000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 590.360000000000000000
          Top = 2.220470000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377950000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582680000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110240000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677170000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637800000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 676.535870000000000000
        Width = 737.008350000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874020000000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 107.902350000000000000
          Top = 50.795300000000000000
          Width = 614.097650000000000000
          Height = 29.102350000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 51.795300000000000000
          Width = 99.477180000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 80.415770000000000000
          Width = 384.000000000000000000
          Height = 25.020470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 79.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 166.933890000000000000
          Top = 31.236240000000000000
          Width = 549.845640000000000000
          Height = 17.763760000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FFPG]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 159.949660000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
      'TIPO=TIPO'
      'CNPJ=CNPJ'
      'IE=IE'
      'IM=IM'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'LOGOMARCA=LOGOMARCA'
      'FUNDACAO=FUNDACAO'
      'USU_CAD=USU_CAD'
      'USU_ATU=USU_ATU'
      'NSERIE=NSERIE'
      'CSENHA=CSENHA'
      'NTERM=NTERM')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    Left = 704
    Top = 65534
  end
  object frxDBPedido: TfrxDBDataset
    UserName = 'frxDBPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_SAIDA=DATA_SAIDA'
      'ID_CLIENTE=ID_CLIENTE'
      'FK_USUARIO=FK_USUARIO'
      'FK_CAIXA=FK_CAIXA'
      'FK_VENDEDOR=FK_VENDEDOR'
      'CPF_NOTA=CPF_NOTA'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'OBSERVACOES=OBSERVACOES'
      'SITUACAO=SITUACAO'
      'VIRTUAL_CLIENTE=VIRTUAL_CLIENTE'
      'VIRTUAL_VENDEDOR=VIRTUAL_VENDEDOR'
      'FKEMPRESA=FKEMPRESA'
      'TIPO=TIPO'
      'FKORCAMENTO=FKORCAMENTO'
      'NECF=NECF'
      'LOTE=LOTE'
      'VirtualEmpresa=VirtualEmpresa'
      'GERA_FINANCEIRO=GERA_FINANCEIRO'
      'FK_TABELA=FK_TABELA'
      'VIRTUAL_TABELA=VIRTUAL_TABELA'
      'VIRTUAL_TX_ACRESC=VIRTUAL_TX_ACRESC'
      'VIRTUAL_CNPJ=VIRTUAL_CNPJ'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TROCO=TROCO'
      'DINHEIRO=DINHEIRO'
      'TOTAL=TOTAL'
      'PERCENTUAL=PERCENTUAL'
      'PERCENTUAL_ACRESCIMO=PERCENTUAL_ACRESCIMO'
      'ACRESCIMO=ACRESCIMO'
      'PEDIDO=PEDIDO'
      'TOTAL_TROCA=TOTAL_TROCA'
      'OS=OS'
      'FK_OS=FK_OS'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'FK_MESA=FK_MESA')
    DataSet = qryVenda
    BCDToCurrency = False
    Left = 736
    Top = 65534
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FKVENDA=FKVENDA'
      'ITEM=ITEM'
      'COD_BARRA=COD_BARRA'
      'ID_PRODUTO=ID_PRODUTO'
      'SITUACAO=SITUACAO'
      'UNIDADE=UNIDADE'
      'DESCRICAO_SL=DESCRICAO_SL'
      'EFISCAL=EFISCAL'
      'PRECO=PRECO'
      'VALOR_ITEM=VALOR_ITEM'
      'VDESCONTO=VDESCONTO'
      'TOTAL=TOTAL'
      'ACRESCIMO=ACRESCIMO'
      'QTD=QTD'
      'E_MEDIO=E_MEDIO'
      'QTD_DEVOLVIDA=QTD_DEVOLVIDA'
      'FK_GRADE=FK_GRADE'
      'OS=OS'
      'QTD_FISCAL=QTD_FISCAL'
      'DESCRICAO_OBS=DESCRICAO_OBS'
      'OBSERVACAO=OBSERVACAO'
      'TTOTAL=TTOTAL')
    DataSet = qryItem
    BCDToCurrency = False
    Left = 768
    Top = 65534
  end
  object qryBuscaFone: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, fantasia , endereco, numero, bairro, municipio, u' +
        'f, cep, complemento, celular1   FROM pessoa'
      'where'
      '(celular1 like :fone)'
      'order by fantasia')
    Left = 760
    Top = 160
    ParamData = <
      item
        Name = 'FONE'
        DataType = ftString
        ParamType = ptInput
        Size = 14
        Value = Null
      end>
    object qryBuscaFoneCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryBuscaFoneFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryBuscaFoneENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryBuscaFoneNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryBuscaFoneBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryBuscaFoneMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryBuscaFoneUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryBuscaFoneCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryBuscaFoneCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryBuscaFoneCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
  end
  object dsBuscaFone: TDataSource
    DataSet = qryBuscaFone
    Left = 760
    Top = 208
  end
  object qryEntregador: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT * from entregador'
      'order by nome')
    Left = 672
    Top = 160
    object qryEntregadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryEntregadorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object dsEntregador: TDataSource
    DataSet = qryEntregador
    Left = 673
    Top = 209
  end
  object PopupMenu1: TPopupMenu
    Left = 512
  end
  object qryPedido: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select CODIGO from vendas_master'
      'where'
      'ID_CLIENTE=:CODIGO and situacao='#39'X'#39)
    Left = 248
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object qryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryProdutoFoto: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    SQL.Strings = (
      'SELECT P.FOTO FROM PRODUTO P'
      'WHERE P.CODIGO = :ID_PRODUTO')
    Left = 672
    Top = 272
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end>
    object qryProdutoFotoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
  end
  object dsProdutoFoto: TDataSource
    DataSet = qryProdutoFoto
    Left = 672
    Top = 320
  end
  object ilImagens: TImageList
    Height = 32
    Width = 32
    Left = 400
    Top = 56
    Bitmap = {
      494C010102000C00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFADE7
      FC0070D4FA0043C4F90025B7F80016B0F70017ACF70026AEF60045B7F80072C6
      F900AFDDFA00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFADE7
      FC0070D4FA0043C4F90025B7F80016B0F70017ACF70026AEF60045B7F80072C6
      F900AFDDFA00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFDDF5FD006DD8FB0019BEF90010BA
      FA001BB7F8004EC5F90072CEF90080D1FA0080CFF90071C8F90050B8F8001EA2
      F500169CF7001F9BF40072BDF800DFEFFC00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFDDF5FD006DD8FB0019BEF90010BA
      FA001BB7F8004EC5F90072CEF90080D1FA0080CFF90071C8F90050B8F8001EA2
      F500169CF7001F9BF40072BDF800DFEFFC00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7DDEFB0013C0F90014BCF9006AD3FA00B8E8
      FC00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBADFFA006FBCF7001B93F3001C8FF30085C0F800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7DDEFB0013C0F90014BCF9006AD3FA00B8E8
      FC00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBADFFA006FBCF7001B93F3001C8FF30085C0F800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF49D1FB000EBFF9005FD1FA00DBF3FC00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF73B7F7001986F2004D9EF500000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF49D1FB000EBFF9005FD1FA00DBF3FC00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF73B7F7001986F2004D9EF500000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFD4F3FC0028C9FA0019C2F900B2E8FC00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB4D5F9002284F200348AF200D8E7
      FB00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD4F3FC0028C9FA0019C2F900B2E8FC00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB4D5F9002284F200348AF200D8E7
      FB00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF28C9FA0029C6F800D3F1FC00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD3E5FB003387F2003687
      F100000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF28C9FA0029C6F800D3F1FC00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD3E5FB003387F2003687
      F100000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF48D0
      FA0019C2F900D3F1FC00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD3E4FB002577
      F0004E8FF200000000FF000000FF000000FF000000FF000000FF000000FF43CF
      FA0019C2F900D3F1FC00000000FF000000FFA9E2FB0052C4F80041BBF80041B8
      F70041B6F70041B3F70042B0F70044AEF70044ABF60044A8F60044A6F50045A3
      F5005DACF600C1DEFA00000000FF000000FF000000FF000000FFD3E4FB002678
      F0005190F200000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF7CDEFB000EBF
      F900B3E8FC00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB4CF
      F8001D6CEF0089AFF500000000FF000000FF000000FF000000FF7CDEFB000EBF
      F900B3E8FC00000000FF000000FFA4E1FB0012B0F9003DBAF80061C4F80061C2
      F80061BFF80061BDF80063BBF80063B8F70063B6F70063B4F60063B2F60065B0
      F6003895F4001B83F200CBE1FA00000000FF000000FF000000FF000000FFB4CF
      F8001D6CEF0089AFF500000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFDBF5FD0012C0F90061D2
      FA00000000FF000000FF000000FF000000FF94D8FA0045BAF800C8E8FB000000
      00FF90D0F90044AEF70044ABF60044A8F60044A6F50045A3F50045A0F500459D
      F400469BF4004698F3004895F30098C2F800000000FF000000FF000000FF0000
      00FF699AF3002468EE00E0E9FB00000000FF000000FFDBF5FD0012C0F90061D2
      FA00000000FF000000FF000000FF49C1F70043BCF800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF2C8AF20073AEF600000000FF000000FF000000FF000000FF0000
      00FF699AF3002468EE00E0E9FB00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF6CD7FB0014BCF900DDF4
      FC00000000FF000000FF000000FF000000FF9FDBFA0056BDF800CEEAFC000000
      00FF9BD3FA0053B1F50053AFF50053ADF50055AAF50055A8F50055A5F50055A3
      F50055A1F400569EF400569BF400A4C7F800000000FF000000FF000000FF0000
      00FFDEE8FB002464EE00789DF300000000FF000000FF6CD7FB0014BCF900DDF4
      FC00000000FF000000FF000000FF35B6F80065C5F800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4895F3005EA0F500000000FF000000FF000000FF000000FF0000
      00FFDEE8FB002464EE00789DF300000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF18BDF9006BD3FA000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF749AF3002A62ED00000000FF000000FF18BDF9006BD3FA000000
      00FF000000FF000000FF000000FF35B4F70065C3F800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4894F300609EF400000000FF000000FF000000FF000000FF0000
      00FF000000FF749AF3002A62ED00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABE6FC0010BAFA00B9E8FC000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFBCCDF8002158EE00B3C4F700ABE6FC0010BAFA00B9E8FC000000
      00FF000000FF000000FF000000FF35B1F70065C1F800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4890F300609BF400000000FF000000FF000000FF000000FF0000
      00FF000000FFBCCDF8002158EE00B3C4F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006ED3FA001CB8F800000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2B5BEC007A96F2006ED3FA001CB8F800000000FF0000
      00FF000000FF000000FF000000FF35AEF70067BFF800000000FF000000FF42A8
      F5001792F500188EF500198BF5008CC2F800000000FF77B3F600C5DDFA000000
      00FF000000FF498DF3006099F300000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2B5BEC007A96F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041C3F9004AC4F900000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5B7DF0005273EF0041C3F9004AC4F900000000FF0000
      00FF000000FF000000FF000000FF36ABF60067BDF800000000FF000000FFB1D9
      FA0092C8F80093C7F80093C5F800D5E7FB00000000FF4895F3002D83F2000000
      00FF000000FF498CF2006097F300000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5B7DF0005273EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022B7F80063CAF900000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7B95F200355AEC0022B7F80063CAF900000000FF0000
      00FF000000FF000000FF000000FF37A9F60067BAF700000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD9E8FB00247BF0005997
      F400000000FF4988F2006095F300000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7B95F200355AEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016B0F7007BCFFA00000000FF0000
      00FF000000FF000000FF000000FF000000FF9DD1F90055AEF600CDE5FB000000
      00FF98C8F80055A3F50055A1F400569EF400569BF4005899F3005897F3005894
      F3005892F300588FF200598DF2009FBBF700000000FF000000FF000000FF0000
      00FF000000FF000000FF8A9EF400284BEA0016B0F7007BCFFA00000000FF0000
      00FF000000FF000000FF000000FF37A5F50067B8F700000000FF000000FF7CBB
      F70055A5F50055A3F50055A1F400569EF4008CBBF700000000FFA5C7F8001D70
      F10094B9F6004985F1006292F300000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF8A9EF400284BEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017ACF7007BCEF900000000FF0000
      00FF000000FF000000FF000000FF000000FF9DCFF90055ABF600CBE4FB000000
      00FF98C7F80055A1F400569EF400569BF4005899F3005897F3005894F3005892
      F300588FF200598DF200598AF2009FBAF600000000FF000000FF000000FF0000
      00FF000000FF000000FF8A9DF3002947EA0017ACF7007BCEF900000000FF0000
      00FF000000FF000000FF000000FF39A3F50067B6F700000000FF000000FF7CB9
      F70055A3F50055A1F400569EF400569BF4008CB9F700000000FF000000FF699D
      F400216AEE002E70EF00628FF300000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF8A9DF3002947EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025AEF60064C3F800000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7C8FF2003750EA0025AEF60064C3F800000000FF0000
      00FF000000FF000000FF000000FF39A0F30069B4F700000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3A78F0002062F000628EF200000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7C8FF2003750EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000043B6F6004DB7F800000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5D71EE005366ED0043B6F6004DB7F800000000FF0000
      00FF000000FF000000FF000000FF399DF30069B2F700000000FF000000FFB3D4
      F90094C0F70094BFF70094BEF70094BCF700BDD5F900000000FF000000FF0000
      00FFCDDBFA002360ED005380F000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5D71EE005366ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006FC4F90020A2F500000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2F46EA007B87F1006FC4F90020A2F500000000FF0000
      00FF000000FF000000FF000000FF3A9AF30069AFF600000000FF000000FF4594
      F3001B7AF3001C77F2001D73F2001D70F1005E95F300000000FF000000FF0000
      00FF000000FF3A6DEF002158EE00A9BCF700000000FF000000FF000000FF0000
      00FF000000FF000000FF2F46EA007B87F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABDBFA00169CF700BAE0FA000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFBEC5F700273AEB00B5BAF600ABDBFA00169CF700BAE0FA000000
      00FF000000FF000000FF000000FF3A97F30069ADF600000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7C9EF4002158EE003C69EE002A58EB00DCE2FA00000000FF000000FF0000
      00FF000000FFBEC5F700273AEB00B5BAF6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF1E9AF40070BCF7000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF7884F1002F3EE900000000FF000000FF1E9AF40070BCF7000000
      00FF000000FF000000FF000000FF3B94F30069ABF500000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7FA0
      F4002158EE0088A2F400000000FF335BEB004C6BEE00000000FF000000FF0000
      00FF000000FF7884F1002F3EE900000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF75BEF8001B93F300DFEE
      FC00000000FF000000FF000000FF000000FFA4CAF8005B9EF400D0E2FA000000
      00FFA0C2F7005892F300588FF200598DF200598AF2005988F1005B85F1005B84
      F1005B81F1005C7EF0005C7BF000A6B6F600000000FF000000FF000000FF0000
      00FFE1E3FA002A3AE7007C82F000000000FF000000FF75BEF8001B93F300DFEE
      FC00000000FF000000FF000000FF3B92F20069A9F500000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF81A2F4002158
      EE0085A1F400000000FF000000FFBDC9F8002347EA008194F200000000FF0000
      00FFE1E3FA002A3AE7007C82F000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF2091F30069B2
      F700000000FF000000FF000000FF000000FF98C2F8004C93F300C9DDFA000000
      00FF94B8F6004985F1004A84F1004C80F1004C7DF0004C7CF0004C78EF004D75
      EF004D74EF004D70EF004E6DEF009CACF500000000FF000000FF000000FF0000
      00FF717AEF002B36E700E1E1FA00000000FF000000FF000000FF2091F30069B2
      F700000000FF000000FF000000FF519AF4004A94F400000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF84A4F4002158EE00819F
      F300000000FF000000FF000000FF000000FF8595F2002A44E900000000FF0000
      00FF717AEF002B36E700E1E1FA00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF89C2F8001986
      F200B7D7FA00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB9BE
      F6002732E8008D8FF100000000FF000000FF000000FF000000FF89C2F8001986
      F200B7D7FA00000000FF000000FFA8CBF8001C77F200468CF100679FF400679D
      F4006799F3006997F3006995F3006993F2004D7BF0002158EE007F9CF3000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB9BE
      F6002732E8008D8FF100000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4499
      F4002385F100D5E7FB00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD9DDFA00323D
      E900575DEC00000000FF000000FF000000FF000000FF000000FF000000FF4198
      F4002385F100D5E6FB00000000FF000000FFACCAF8005995F3004988F2004985
      F1004A84F1004C80F1004C7DF0004C7CF0005A82F000A9BCF700000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD7D9F900303B
      E900585DEC00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFDDEC
      FB002D86F2003387F200D5E5FB00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D9F9003E49EA004147
      E900000000FF000000FF000000FF000000FF000000FF000000FF000000FFDDEC
      FB002D86F2003387F200D5E5FB00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D9F9003E49EA004147
      E900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFD3E4FB002E81F1002678F000B7D1F900000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB9BEF600303BE9004047EA00D9D9
      F900000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD3E4FB002E81F1002678F000B7D1F900000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB9BEF600303BE9004047EA00D9D9
      F900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFDDE9FB004387F0001D6CEF006B9CF300E0E9FB00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE1E3FA00707BEF002732E800585DEC00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFDDE9FB004387F0001D6CEF006B9CF300E0E9FB00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE1E3FA00707BEF002732E800585DEC00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF8AB1F500276BEE002464EE00769BF300BFCF
      F800000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBFC6F7007984F1002A3AE7002B35E8008B90F100000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF8AB1F500276BEE002464EE00769BF300BFCF
      F800000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBFC6F7007984F1002A3AE7002B35E8008B90F100000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF799FF4002861ED002158
      EE002D5DED00567AEF00718BF1008399F3008397F2007084F100596EEE002F46
      EA00273AEB002E3DE8007A81F000E0E1FA00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF799FF4002861ED002158
      EE002D5DED00567AEF00718BF1008399F3008397F2007084F100596EEE002F46
      EA00273AEB002E3DE8007A81F000E0E1FA00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB0C2
      F7007894F2004F71EF003458EB00274AEA002846EA00364FEA005265ED007C86
      F100B3B8F600000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB0C2
      F7007894F2004F71EF003458EB00274AEA002846EA00364FEA005265ED007C86
      F100B3B8F600000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFE007FFFFE007FF0000000000000000
      FF0000FFFF0000FF0000000000000000FE0FF07FFE0FF07F0000000000000000
      FC3FFE3FFC3FFE3F0000000000000000F0FFFF0FF0FFFF0F0000000000000000
      F1FFFF8FF1FFFF8F0000000000000000E3FFFFC7E30003C70000000000000000
      C7FFFFE3C60001E300000000000000008F1000F18E7FF9F10000000000000000
      8F1000F18E7FF9F100000000000000009FFFFFF99E7FF9F90000000000000000
      1FFFFFF81E7FF9F800000000000000003FFFFFFC3E6099FC0000000000000000
      3FFFFFFC3E6099FC00000000000000003FFFFFFC3E7F89FC0000000000000000
      3F1000FC3E6041FC00000000000000003F1000FC3E6061FC0000000000000000
      3FFFFFFC3E7FF1FC00000000000000003FFFFFFC3E6071FC0000000000000000
      3FFFFFFC3E6078FC00000000000000001FFFFFF81E7FF0780000000000000000
      9FFFFFF99E7FE27900000000000000008F1000F18E7FC6310000000000000000
      CF1000F1CE7F8F310000000000000000C7FFFFE3C6001FE30000000000000000
      E3FFFFC7E3003FC70000000000000000E1FFFF8FE1FFFF8F0000000000000000
      F0FFFF0FF0FFFF0F0000000000000000F83FFC3FF83FFC3F0000000000000000
      FE0FF07FFE0FF07F0000000000000000FF8000FFFF8000FF0000000000000000
      FFE007FFFFE007FF000000000000000000000000000000000000000000000000
      000000000000}
  end
end
