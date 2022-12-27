object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 113
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pmMenu
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 67
    Top = 40
    Width = 396
    Height = 22
    Caption = 'Servidor Mobile - Gestor Restaurante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ctiPrincipal: TTrayIcon
    Hint = 'Servidor Mobile | Restaurante'
    PopupMenu = pmMenu
    Left = 45
    Top = 13
  end
  object pmMenu: TPopupMenu
    Left = 341
    Top = 29
    object RestaurarAplicao1: TMenuItem
      Caption = 'Exibir Aplica'#231#227'o'
      OnClick = RestaurarAplicao1Click
    end
    object SairdaAplicao1: TMenuItem
      Caption = 'Sair da Aplica'#231#227'o'
      OnClick = SairdaAplicao1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 216
    Top = 56
  end
end
