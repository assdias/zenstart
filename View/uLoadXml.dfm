object frmLoadXML: TfrmLoadXML
  Left = 0
  Top = 0
  Caption = 'frmLoadXML'
  ClientHeight = 369
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 751
    Height = 369
    ActivePage = tsLog
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -484
    ExplicitTop = 12
    ExplicitWidth = 931
    ExplicitHeight = 189
    object tsLog: TTabSheet
      Caption = 'Log de Comandos'
      ExplicitWidth = 923
      ExplicitHeight = 161
      object mLog: TMemo
        Left = 0
        Top = 20
        Width = 743
        Height = 321
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 923
        ExplicitHeight = 141
      end
    end
    object tsGerado: TTabSheet
      Caption = 'XML Gerado'
      ExplicitWidth = 439
      ExplicitHeight = 173
      inline mVendaEnviar: TMemo
        Left = 0
        Top = 0
        Width = 743
        Height = 341
        Cursor = crIBeam
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 439
        ExplicitHeight = 173
      end
    end
    object tsRecebido: TTabSheet
      Caption = 'XML Recebido'
      ExplicitWidth = 439
      ExplicitHeight = 173
      inline mRecebido: TWebBrowser
        Left = 0
        Top = 0
        Width = 743
        Height = 341
        Cursor = crIBeam
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 923
        ExplicitHeight = 161
        ControlData = {
          4C000000CB4C00003E2300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tsCancelamento: TTabSheet
      Caption = 'XML Cancelamento'
      ExplicitWidth = 439
      ExplicitHeight = 173
      inline mCancelamentoEnviar: TMemo
        Left = 0
        Top = 0
        Width = 743
        Height = 316
        Cursor = crIBeam
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 439
        ExplicitHeight = 148
      end
      object Panel2: TPanel
        Left = 0
        Top = 316
        Width = 743
        Height = 25
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 148
        ExplicitWidth = 439
        object Label18: TLabel
          Left = 1
          Top = 1
          Width = 106
          Height = 23
          Align = alLeft
          Caption = 'Chave Cancelamento:'
          Color = clBtnFace
          ParentColor = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object edChaveCancelamento: TEdit
          Left = 127
          Top = 1
          Width = 704
          Height = 21
          TabOrder = 0
        end
      end
    end
    object tsRedeXML: TTabSheet
      Caption = 'XML Rede'
      ExplicitWidth = 439
      ExplicitHeight = 173
      inline mRede: TWebBrowser
        Left = 0
        Top = 0
        Width = 743
        Height = 341
        Cursor = crIBeam
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 923
        ExplicitHeight = 161
        ControlData = {
          4C000000CB4C00003E2300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
end
