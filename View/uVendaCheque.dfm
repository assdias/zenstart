object frmCHParcela: TfrmCHParcela
  Left = 0
  Top = 0
  ActiveControl = edtParcela
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cheques | Parcela'
  ClientHeight = 314
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 112
      Height = 16
      Caption = 'Total da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 7
      Width = 64
      Height = 16
      Caption = 'Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 474
      Top = 1
      Width = 4
      Height = 71
      Align = alRight
      ExplicitLeft = 405
      ExplicitHeight = 63
    end
    object Splitter2: TSplitter
      Left = 388
      Top = 1
      Width = 5
      Height = 71
      Align = alRight
      ExplicitLeft = 332
      ExplicitTop = -4
      ExplicitHeight = 63
    end
    object Splitter3: TSplitter
      Left = 705
      Top = 1
      Width = 4
      Height = 71
      Align = alRight
      ExplicitLeft = 706
      ExplicitTop = -4
    end
    object Splitter4: TSplitter
      Left = 559
      Top = 1
      Width = 4
      Height = 71
      Align = alRight
      ExplicitLeft = 573
      ExplicitTop = -4
    end
    object Splitter5: TSplitter
      Left = 632
      Top = 1
      Width = 4
      Height = 71
      Align = alRight
      ExplicitLeft = 705
      ExplicitTop = 2
    end
    object Label4: TLabel
      Left = 228
      Top = 7
      Width = 72
      Height = 16
      Caption = 'Intervalo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTotal: TEdit
      Left = 16
      Top = 27
      Width = 124
      Height = 21
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
    end
    object edtParcela: TEdit
      Left = 154
      Top = 26
      Width = 68
      Height = 21
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '1'
      OnKeyPress = edtParcelaKeyPress
    end
    object BtnExcluir: TBitBtn
      Left = 478
      Top = 1
      Width = 81
      Height = 71
      Align = alRight
      Caption = 'F3|Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000000FFFFFFF4E7DB
        D7A97DC48241C48241C48241C48241C48241C48241C48241C48241C48241C482
        41C48241F8EFE7FFFFFF5B57F2241FEE322DEFADABF9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF1F1FE6965F3241FEE322DEFADABF9F4E7DBC88A4D
        C48241C48241C48241C48241C48241C48241C48241C48241C48241C48241C482
        41D3A171FFFFFFADABF9241FEE241FEE241FEE241FEEADABF9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF1F1FE4D49F1241FEE241FEE241FEE322DEFD7A97DC48241
        C48241DEB994F0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0
        CFF4E7DBFFFFFF918FF6241FEE241FEE241FEE241FEE241FEEADABF9FFFFFFFF
        FFFFFFFFFFF1F1FE4D49F1241FEE241FEE241FEE241FEE241FEEC48241C48241
        DEB994FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE4E3FD322DEF241FEE241FEE241FEE241FEE241FEEADABF9FF
        FFFFF1F1FE4D49F1241FEE241FEE241FEE241FEE241FEE6965F3C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD6D5FC322DEF241FEE241FEE241FEE241FEE241FEE9F
        9DF84D49F1241FEE241FEE241FEE241FEE241FEE4D49F1F1F1FEC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FC322DEF241FEE241FEE241FEE241FEE24
        1FEE241FEE241FEE241FEE241FEE241FEE4D49F1F1F1FEFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FC322DEF241FEE241FEE241FEE24
        1FEE241FEE241FEE241FEE241FEE4D49F1F1F1FEFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FC322DEF241FEE241FEE24
        1FEE241FEE241FEE241FEE4D49F1F1F1FEFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FE4D49F1241FEE241FEE24
        1FEE241FEE241FEE241FEE9F9DF8FFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FE4D49F1241FEE241FEE241FEE24
        1FEE241FEE241FEE241FEE241FEEADABF9FFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FE4D49F1241FEE241FEE241FEE241FEE24
        1FEE241FEE241FEE241FEE241FEE241FEEADABF9FFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1F1FE4D49F1241FEE241FEE241FEE241FEE241FEE4D
        49F1322DEF241FEE241FEE241FEE241FEE241FEEADABF9FFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4D49F1241FEE241FEE241FEE241FEE241FEE4D49F1F1
        F1FED6D5FC322DEF241FEE241FEE241FEE241FEE241FEEADABF9C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFADABF9241FEE241FEE241FEE241FEE241FEE4D49F1F1F1FEFF
        FFFFFFFFFFD6D5FC322DEF241FEE241FEE241FEE241FEE322DEFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF918FF6241FEE241FEE241FEE241FEE4D49F1F1F1FEFFFFFFDE
        B994E9D0B7FFFFFFD6D5FC322DEF241FEE241FEE241FEE241FEEC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE4E3FD322DEF241FEE241FEE4D49F1F1F1FEFFFFFFFFFFFFD3
        A171C48241E9D0B7FFFFFFD6D5FC322DEF241FEE241FEE6965F3C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE4E3FD918FF6ADABF9FFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFE4E3FD918FF6ADABF9FFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        CF9A65D3A171D3A171D3A171D3A171D3A171D3A171DEB994FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88A4DC48241
        C48241C48241C48241C48241C48241C48241C48241C48241E1C0A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4D
        C48241C48241C48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB
        C88A4DC48241C48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4E7DBC88A4DC48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4E7DBC88A4DC48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F3CB
        9259C48241DAB189FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241CF9A65F0E0CFF0E0
        CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFECD8C3CF9A65C4
        8241C48241E9D0B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241C482
        41C48241C48241C48241C48241C48241C48241C48241C48241C48241C48241C4
        8241D7A97DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C482
        41C48241C48241C48241C48241C48241C48241C48241C48241C48241C88A4DE1
        C0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 4
      OnClick = BtnExcluirClick
    end
    object BtnGerar: TBitBtn
      Left = 393
      Top = 1
      Width = 81
      Height = 71
      Align = alRight
      Caption = 'F2|Gerar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000000FFFFFFF4E7DB
        D7A97DC48241C48241C48241C48241C48241C48241C48241C48241C48241C482
        41C48241C48241C48241C48241D7A97DFFFFFFE2F2E071C06667BC5C8DCD85F5
        FBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4D
        C48241C48241C48241C48241C48241C48241C48241C48241C48241C48241C482
        41C48241C48241C48241C48241E9D0B7FFFFFF7AC47067BC5C67BC5C67BC5CBC
        E2B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A97DC48241
        C48241DEB994F0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0
        CFF0E0CFF0E0CFF0E0CFF0E0CFFBF7F3FFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        DEB994FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F2E0B3DD
        ADB3DDADB3DDADB3DDADB3DDADB3DDADB3DDAD67BC5C67BC5C67BC5C67BC5C8D
        CD85B3DDADB3DDADB3DDADB3DDADB3DDADB3DDADBCE2B7F5FBF5C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF7EB71C06667BC
        5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67
        BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C8DCD85C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3DDAD67BC5C67BC
        5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67
        BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5CC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEACC67BC5C67BC
        5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67
        BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C71C066C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD9A471C0
        6667BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67
        BC5C67BC5C67BC5C67BC5C67BC5C67BC5C67BC5C7AC470E2F2E0C48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67BC5C67BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71C06667BC5C67BC5C67BC5CB3
        DDADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        F0E0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD9A467BC5C67BC5C71C066E2
        F2E0FFFFFFE5C8ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48241C48241
        CF9A65D3A171D3A171D3A171D3A171D3A171D3A171DEB994FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEACCB3DDADECF7EBFF
        FFFFF0E0CFD3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88A4DC48241
        C48241C48241C48241C48241C48241C48241C48241C48241E1C0A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
        D8C3C88A4DD3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4D
        C48241C48241C48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB
        C88A4DC48241C48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4E7DBC88A4DC48241C48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4E7DBC88A4DC48241C48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        A171C48241D3A171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241D3A171FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F3CB
        9259C48241DAB189FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241CF9A65F0E0CFF0E0
        CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFF0E0CFECD8C3CF9A65C4
        8241C48241E9D0B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C48241C482
        41C48241C48241C48241C48241C48241C48241C48241C48241C48241C48241C4
        8241D7A97DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DBC88A4DC48241C48241C482
        41C48241C48241C48241C48241C48241C48241C48241C48241C48241C88A4DE1
        C0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 3
      OnClick = BtnGerarClick
    end
    object btnVoltar: TBitBtn
      Left = 563
      Top = 1
      Width = 69
      Height = 71
      Align = alRight
      Caption = 'F4|Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFEDBDBEE6969CB3C3CC24C4CC5A1A1DCFDFDFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFEA1A1DC4C4CC53C3CC26A6ACBDBDBEFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
        D7D7ED4848C83B3BD83B3BD93B3BD93B3BD18C8CD5FEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8C
        8CD53B3BD03B3BD93B3BD93B3BD84848C8D8D8EEFEFEFEFFFFFFFEFEFED7D7ED
        4949CA3C3CDA3C3CDA3C3CDA3B3BDA3C3CDA3C3CD38C8CD6FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8C8CD63C
        3CD33C3CDA3B3BDA3C3CDA3C3CDA3C3CDA4949CAD8D8EEFEFEFEDBDBEF4949CB
        3C3CDA3D3DDB3D3DDB3D3DDB3D3DDB3C3CDB3D3DDB3D3DD48C8CD7FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8C8CD73D3DD43D
        3DDB3C3CDB3D3DDB3D3DDB3D3DDB3D3DDB3C3CDA4949CBDCDCF06C6CD53D3DDB
        3E3EDB3D3DDC3D3DDC3D3DDC3D3DDC3D3DDC3D3DDB3E3EDB3E3ED58D8DD7FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8D8DD73E3ED53E3EDB3D
        3DDB3D3DDC3D3DDC3D3DDC3D3DDC3D3DDC3E3EDB3D3DDB6C6CD54141D83E3EDC
        3E3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDC3E3EDC3F3FD68D8D
        D7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8D8DD73F3FD63E3EDC3E3EDC3E
        3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDD3E3EDC4141D85353E04040DD
        3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDD3F3FDD3F3F
        D68D8DD7FEFEFEFFFFFFFFFFFFFEFEFE8D8DD73F3FD63F3FDD3F3FDD3F3FDE3F
        3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE3F3FDE4040DD5353E0A5A5EF4141DE
        4141DE4040DE4040DE4040DE4040DE4040DE4040DE4040DE4040DE3F3FDE4040
        DE4040D78E8ED8FDFDFEFDFDFE8E8ED84040D74040DE3F3FDE4040DE4040DE40
        40DE4040DE4040DE4040DE4040DE4040DE4141DE4141DEA5A5EFFDFDFE9191EB
        4141DE4141DF4141DF4141DF4141DF4141DF4141DF4141DF4141DF4141DF4040
        DE4141DE4141D88E8ED98E8ED94141D84141DE4040DE4141DF4141DF4141DF41
        41DF4141DF4141DF4141DF4141DF4141DF4141DE9191EBFDFDFEFFFFFFFEFEFF
        9191EB4242DF4242E04141E04141E04141E04141E04141E04141E04141E04141
        E04141DF4242DF4141D94141D94242DF4141DF4141E04141E04141E04141E041
        41E04141E04141E04141E04242E04242DF9191EBFEFEFFFFFFFFFFFFFFFFFFFF
        FEFEFF9191EC4242E04343E14242E14242E14242E14242E14242E14242E14242
        E14242E14242E04242E04242E04242E04242E14242E14242E14242E14242E142
        42E14242E14242E14343E14242E09191ECFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFF9292ED4343E14444E14343E24343E24343E24343E24343E24343
        E24343E24343E24343E24343E24343E24343E24343E24343E24343E24343E243
        43E24343E24444E14343E19292EDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFF9393ED4444E24545E24444E24444E24444E24444E24444
        E24444E24444E24444E24444E24444E24444E24444E24444E24444E24444E244
        44E24545E24444E29393EDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFF9393ED4545E24545E34545E34545E34545E34545
        E34545E34545E34545E34545E34545E34545E34545E34545E34545E34545E345
        45E34545E29393EDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9393EE4646E34646E34545E44545E44545
        E44545E44545E44545E44545E44545E44545E44545E44545E44545E44646E346
        46E39393EEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE9393EE4646E44646E54646E54646
        E54646E54646E54646E54646E54646E54646E54646E54646E54646E54646E493
        93EEFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE9191E24747E54747E54747E54747
        E54747E54747E54747E54747E54747E54747E54747E54747E54747E54747E591
        91E2FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9191DC4747DF4848E54848E64848E64848
        E64848E64848E64848E64848E64848E64848E64848E64848E64848E64848E547
        47DF9191DCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFE9292DC4747DF4949E64848E64949E74949E74949
        E74949E74949E74949E74949E74949E74949E74949E74949E74949E74848E649
        49E64747E09292DCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFE9393DC4848E04A4AE74949E74949E84949E84949E84949
        E84949E84949E84949E84949E84949E84949E84949E84949E84949E84949E849
        49E74A4AE74848E09393DCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFE9393DC4949E04A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A4A
        E84A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A4AE84A
        4AE84A4AE84A4AE84949E19393DCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFE9393DD4A4AE14B4BE84A4AE84B4BE94B4BE94B4BE94B4BE94B4BE94B4B
        E94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B
        4BE94B4BE94A4AE84B4BE84A4AE29393DDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
        9393DD4B4BE24C4CE94B4BE94C4CEA4C4CEA4C4CEA4C4CEA4C4CEA4C4CEA4C4C
        EA4C4CEA4D4DEA4D4DEA4D4DEA4D4DEA4C4CEA4C4CEA4C4CEA4C4CEA4C4CEA4C
        4CEA4C4CEA4C4CEA4B4BE94C4CE94B4BE29393DEFEFEFEFFFFFFFDFDFE9494DE
        4B4BE34D4DEA4C4CEA4C4CEB4C4CEB4C4CEB4C4CEB4C4CEB4C4CEB4C4CEB4C4C
        EB4D4DEB4D4DEA9797F29797F24D4DEA4D4DEB4C4CEB4C4CEB4C4CEB4C4CEB4C
        4CEB4C4CEB4C4CEB4C4CEB4C4CEA4D4DEA4B4BE39494DEFDFDFEA9A9E44C4CE3
        4D4DEB4D4DEB4D4DEC4D4DEC4D4DEC4D4DEC4D4DEC4D4DEC4D4DEC4D4DEC4E4E
        EB4D4DEB9898F2FDFDFEFDFDFE9898F24D4DEB4E4EEB4D4DEC4D4DEC4D4DEC4D
        4DEC4D4DEC4D4DEC4D4DEC4D4DEC4D4DEB4D4DEB4C4CE4A9A9E55E5EE24E4EEC
        4D4DEC4E4EEC4E4EEC4E4EEC4E4EEC4E4EEC4E4EEC4E4EEC4E4EEC4F4FEC4E4E
        EC9898F2FEFEFFFFFFFFFFFFFFFEFEFF9898F24E4EEC4F4FEC4E4EEC4E4EEC4E
        4EEC4E4EEC4E4EEC4E4EEC4E4EEC4E4EEC4D4DEC4E4EEC5E5EE25151EA4F4FEC
        4F4FED4F4FED4F4FED4F4FED4F4FED4F4FED4F4FED4F4FED5050ED4F4FEC9999
        F3FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9999F34F4FEC5050ED4F4FED4F
        4FED4F4FED4F4FED4F4FED4F4FED4F4FED4F4FED4F4FEC5151EA7C7CF25050ED
        5151EE5050EE5050EE5050EE5050EE5050EE5050EE5050EE5050ED9A9AF3FEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9A9AF35050ED5050EE50
        50EE5050EE5050EE5050EE5050EE5050EE5151EE5050ED7C7CF2DFDFF85E5EEE
        5151EE5151EF5050EF5050EF5050EF5050EF5151EE5151EE9A9AF4FEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9A9AF45151EE51
        51EE5050EF5050EF5050EF5050EF5151EF5151EE5E5EEEE0E0F9FEFEFEDCDCF8
        5E5EEF5151EF5252EF5151EF5151EF5252EF5151EF9A9AF4FEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9A9AF451
        51EF5252EF5151EF5151EF5252EF5151EF5E5EEFDCDCF8FEFEFEFFFFFFFEFEFE
        DCDCF85F5FEF5252EF5353F05353F05252EF9B9BF5FEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF9B
        9BF55252EF5353F05353F05252EF5F5FEFDCDCF9FEFEFEFFFFFFFFFFFFFFFFFF
        FEFEFEE0E0F87E7EF45555F06464F2AEAEF8FDFDFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFEAEAEF86464F25555F07E7EF4E0E0F9FEFEFEFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 5
      OnClick = btnVoltarClick
    end
    object btnAvancar: TBitBtn
      Left = 636
      Top = 1
      Width = 69
      Height = 71
      Align = alRight
      Caption = 'F5|Concluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEFEDEAE1B36ED5A866C7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3
        BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7
        C3BDC7C3BDD5A866E1B36EF0EDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1B36EDB9834DDB06CE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1
        DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3
        E1DCE3E1DCDDB06CDB9834E2B36EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDC9A39DB9834E2B571F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECF1F0ECE2B571DB9834DC9A39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECDEDBD7D5D1CCD5D1CCD5D1
        CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCDEDBD7F1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECDEDBD7D5D1CCD5D1CCD5D1
        CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCD5D1CCDEDBD7F1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECD5D1CCC7C3BDC7C3BDC7C3
        BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDD5D1CCF1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B571F1F0ECF1F0ECE7E5E1E3E1DCE3E1DCE3E1
        DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE3E1DCE7E5E1F1
        F0ECF1F0ECE2B571DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834E2B470F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECF1F0ECE2B470DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DDA046EEE4D3F1F0ECF1F0ECF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1
        F0ECEEE4D3DDA046DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB98
        34DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB98
        34DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834DA9733D19130CF9030CF90
        30CF9030CF9030CF9030CF9030CF9030CF9030CF9030CF9030D19130DA9733DB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834C98B2EB98029B98029B980
        29B98029B98029B98029B98029B98029B98029B98029B98029B98029C98B2EDB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834D6AC6BEEEBE3F1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECEEEBE3D6AC6BDB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834E9D1ADF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECE7C89AE2B571E2B571E2B571ECDCC3E9D1ADDB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECE2B571DB9834DB9834DB9834E9D2AEE9D2AEDB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECE2B571DB9834DB9834DB9834E9D2AEE9D2AEDB
        9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECE2B571DB9834DB9834DB9834E9D2AEE9D2AEDB
        9834DB9834DB9834DB9834E0C396FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDC9A39DB9834DB9834DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECD3AA6BC4882CC4882CC4882CE2CCABE9D2AEDB
        9834DB9834DB9834E0C396FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1B36EDB9834DB9834DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECD7BD93CBA468CBA468CBA468E4D6BFE9D2AEDB
        9834DB9834E0C396FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0EDEAE2B36EDC9A39DB9834DB9834E9D2AEF1F0ECF1F0ECF1F0
        ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECE9D2AEDB
        9834E0C396FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 6
      OnClick = btnAvancarClick
    end
    object edtIntervalo: TEdit
      Left = 228
      Top = 26
      Width = 68
      Height = 21
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '1'
      OnKeyPress = edtParcelaKeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 710
    Height = 200
    Align = alClient
    DataGrouping.Font.Charset = ANSI_CHARSET
    DataGrouping.Font.Color = clBlue
    DataGrouping.Font.Height = -13
    DataGrouping.Font.Name = 'Segoe UI'
    DataGrouping.Font.Style = []
    DataGrouping.ParentFont = False
    DataSource = dsCH
    DynProps = <>
    EvenRowColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TitleParams.Font.Charset = ANSI_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = 'Courier New'
    TitleParams.Font.Style = []
    TitleParams.ParentFont = False
    OnEnter = DBGridEh1Enter
    OnExit = DBGridEh1Exit
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUMERO'
        Footers = <>
        Title.Caption = 'N'#250'mero'
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATA_PREDATA'
        Footers = <>
        Title.Caption = 'Pr'#233'Datado'
        Width = 105
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BANCO'
        Footers = <>
        Title.Caption = 'Banco'
        Width = 241
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AGENCIA'
        Footers = <>
        Title.Caption = 'Ag'#234'ncia'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONTA_CORRENTE'
        Footers = <>
        Title.Caption = 'Conta Corrente'
        Width = 104
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALOR'
        Footers = <>
        Title.Caption = 'Valor'
        Width = 82
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 273
    Width = 710
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label3: TLabel
      Left = 12
      Top = 11
      Width = 136
      Height = 16
      Caption = 'Total Parcelas  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 163
      Top = 10
      Width = 125
      Height = 18
      DataField = 'TTOTAL'
      DataSource = dsCH
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qryCH: TFDQuery
    AfterPost = qryCHAfterPost
    AfterDelete = qryCHAfterPost
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CHEQUES'
      'where'
      'fk_venda=:id')
    Left = 240
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCHCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCHNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCHAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object qryCHCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
      Size = 10
    end
    object qryCHBANCO: TStringField
      DisplayWidth = 30
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryCHVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCHDATA_PREDATA: TDateField
      FieldName = 'DATA_PREDATA'
      Origin = 'DATA_PREDATA'
    end
    object qryCHDATA_COMPESADO: TDateField
      FieldName = 'DATA_COMPESADO'
      Origin = 'DATA_COMPESADO'
    end
    object qryCHSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCHFK_CONTA_DESTINO: TIntegerField
      FieldName = 'FK_CONTA_DESTINO'
      Origin = 'FK_CONTA_DESTINO'
    end
    object qryCHFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCHFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryCHFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryCHHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCHDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryCHTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR)'
    end
  end
  object dsCH: TDataSource
    DataSet = qryCH
    Left = 184
    Top = 144
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 88
    Top = 144
  end
end
