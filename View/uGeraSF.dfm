object FrmSpedSf: TFrmSpedSf
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sped Fiscal '
  ClientHeight = 278
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 515
    Height = 77
    Align = alBottom
    TabOrder = 0
    object btnExecute: TSpeedButton
      Left = 1
      Top = 1
      Width = 75
      Height = 75
      Align = alLeft
      Caption = 'F2 | Gerar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B000062010000620100000000000000000000F9FDFEC7E5F5
        9ED3EE93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CE
        EC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC93CEEC93CEEC93CEEC97CEE5A6CDC9BACBA7D0CB80E0C963EAC851
        EDC84BEBC84FE4C95FE7D37AF6E4A7FBF1D0FEFBF1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC8E6F595CFEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEECA4CDCFCECA
        83E4C95CEFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F0
        CC56F4D87DFAEEC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99D0ED93CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CE
        EC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC94CEEAB8CBA9EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F6DF93FEFEFBFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC93CEEC93CEEC93C9EC7E9EEADEE1EEEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEAEFDB99EFCA50EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848F4DA82FDF8E7FFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93C9EC789AE9556F
        E7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EEEDEFD992EFC94EEFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC94BF4DA
        82FEFEFAFFFFFFFFFFFF93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC93CEEC7F9FEA556FE7546EE7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0ACEFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848F6DF93FFFFFFFFFFFF93CEEC93CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93C9EC7F9EEA556FE7546EE7546E
        E7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8D5EF
        CF66EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848FAEFC8FFFFFF93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93
        C9EC789AE9556FE7546EE7546EE7546EE7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFDCA0EFC94BEFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848F2D36BF0CB51EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848F4D87DFEFBF193CEEC93CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC7F9FEA556FE7546EE7546EE7546EE7546E
        E7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCD61EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848F4DA85FFFEFBF8E7B0EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848F0CC56FBF1D093CEEC93CEEC93CEEC93CEEC93CEEC93C9EC7F9EEA55
        6FE7546EE7546EE7546EE7546EE7546EE7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFE6C9EFC849EFC848EFC848EFC848EFC848EFC848F0CA
        4FF5DE92FFFEFDFFFFFFFFFFFFFAEFCBF2D167EFC849EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F7E5A793CEEC93CEEC
        93CEEC93CEEC93C9EC789AE9556FE7546EE7546EE7546EE7546EE7546EE7546E
        E7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD890EFC848EF
        C848EFC848EFC848EFC848EFC848F5DB88FEFBF0FFFFFFFFFFFFFFFFFFFFFFFF
        FCF4D8F3D574EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848F4D87D93CEEC93CEEC93CEEC93CEEC7F9FEA556FE7546EE754
        6EE7546EE7546EE7546EE7546EE7546EE7DDE0EEEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFCF68EFC848EFC848EFC848EFC848EFC848EFC848FAEE
        C6FFFFFFFFFFFFFFFDF8FFFEFAFFFFFFFFFFFFFEFCF4F3D471EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F1CF6193CEEC93CEEC
        93CEECA7C1EC7F91E97E91E97E91E97E91E97E91E97E91E97E91E97E91E97E91
        E9E2E4EEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCA53EFC848EF
        C848EFC848EFC848EFC848EFC848F6DE90FCF5DEFBF0CDF2D269F5DD8FFDF9EB
        FFFFFFFFFFFFFEFEFBF6E098F0CB53EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848F0CA5093CEEC93CEEC93CEECE5E7EFE5E6EEE5E6EEE5E6EEE5
        E6EEE5E6EEE5E6EEE5E6EEE5E6EEE5E6EEEEEEEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFC94DEFC848EFC848EFC848EFC848EFC848EFC848F0CA
        4EF2D164F0CC56EFC848EFC84AF3D472FCF3D6FFFFFFFFFFFFFEFCF5F9E9B6F0
        CA4FEFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC94B93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCB56EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        F1CE5DFBF2D2FFFFFFFFFFFFFFFFFFFCF5DEF0CD57EFC848EFC848EFC848EFC8
        48EFC848EFC848F0CB5293CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFD171EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848F0CD59F9EBBDFEFDF7FFFFFFFF
        FFFFFAEDC5F0CC54EFC848EFC848EFC848EFC848EFC848F2D16793CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9E95779E95779E9577EFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDC9CEFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848F0CA4FF6E19DFEFBF2FFFFFFFBF2D5F0CE5AEFC848EFC848EFC8
        48EFC848EFC848F5DB8693CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFE9D7EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F4D77CFA
        EDC3F3D575EFC848EFC848EFC848EFC848EFC848EFC848F8E8B293CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD170EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848F1CF5FFCF4D993CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFE0AEEFC94DEFC848EFC848EFC848EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848EFC848EFC848F5DC8AFEFDF793CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEBE0EF
        D171EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC8
        48EFC848FCF4DCFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFC8C4B4A29A7D9E9577
        9E9577A0977ABCB7A3EFEFEFEFEFEFEFE4C1EFCB53EFC848EFC848EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848EFC848F0CA50F8E8B4FFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9E95779E95779E9577EFEF
        EFEFEFEFEFEFEFA79F849E95779E95779E95779E9577A49C80EFEFEFEFEFEFEF
        EFEEEFE2B9EFCB53EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F0CA4EF7E2
        A1FFFEFDFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFD7D5CCA39B7F9E9577
        9E9577A1987BC8C4B4EFEFEFEFEFEFEFEFEFEFEFEFEFE2B8EFCB53EFC848EFC8
        48EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EF
        C848EFC848EFC848EFC848F6E098FFFDFAFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEEEFE4C1EFD170EFC94EEFC848EFC848EFC848EFC848EFC848
        EFC848EFC848EFC848EFC848EFC848EFC848EFC94BF2D269F8E9B5FEFEFCFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEBDFEFE0
        AFEFD171EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848EFC848F2
        D164F7E5A8FDF6E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE9D7EFDC9CEFD271EFCB55
        EFC94DEFCA53DDCA68C8CA8EA8CCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFC8C4B4A29A7D9E9577
        9E95779E95779E95779E95779E95779E95779E9577A0977ABCB7A3EFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9E95779E95779E9577EFEF
        EFEFEFEFEFEFEFA79F849E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E9577A49C80EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFD7D5CCA39B7F9E9577
        9E95779E95779E95779E95779E95779E95779E9577A1987BC8C4B4EFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFC8C4B4A29A7D9E9577
        9E95779E95779E95779E95779E95779E95779E95779E95779E95779E9577A097
        7ABCB7A3EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9E95779E95779E9577EFEF
        EFEFEFEFEFEFEFA79F849E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E95779E95779E9577A49C80EFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEF9E95779E95779E9577EFEFEFEFEFEFEFEFEFD7D5CCA39B7F9E9577
        9E95779E95779E95779E95779E95779E95779E95779E95779E95779E9577A198
        7BC8C4B4EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEEEFEFEEEEEFEEEEEFEEEEEFEEEEEFEEEEEFEEEEEFEEEEEFEEEEEFEE
        EEEFEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFE7E8EE9FACEB637BE8546EE7546EE7546EE7
        546EE7546EE7546EE7546EE7546EE7546EE75973E78B9CEAD7DBEEEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFA0AD
        EB5670E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7556FE78B9CEAEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF93CEEC93CEEC93CEECEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEF5D74E7546EE7546EE7546EE7546EE7546EE7
        546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE75A73E7EEEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF93CEEC93CEEC93CEECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93CEEC93CEEC
        93CEECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF556F
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7546EE7EEEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEF93CEEC93CEEC93CEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF97CFED93CEEC93CEECB2D9EDB2D9EDB2D9EDB2D9EDB2
        D9EDB2D9EDB2D9EDB2D9EDB2D9ED546EE7546EE7546EE7546EE7546EE7546EE7
        546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7B1D9EDB2D9
        EDB2D9EDB2D9EDB2D9EDB2D9EDB2D9EDB2D9EDB2D9ED93CEEC93CEEC96CFEDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6DEF293CEEC
        93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7546EE793CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC
        93CEEC93CEEC93CEEC93CEECABD9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7FBFEB0DBF198D0ED93CEEC93CEEC93CEEC93CEEC93
        CEEC93CEEC93CEEC93CEEC93CEEC546EE7546EE7546EE7546EE7546EE7546EE7
        546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE793CEEC93CE
        EC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC93CEEC95CFECA6D7EFE1F2FAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAFD
        E0F1FADBEFF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9556F
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7546EE7DAEEF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9DBEFF9
        DBEFF9DBEFF9DDEFF9EDF7FCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF556FE7546EE7546EE7546EE7546EE7546EE7
        546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7FEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnExecuteClick
      ExplicitLeft = 2
    end
    object btnSair: TSpeedButton
      Left = 76
      Top = 1
      Width = 75
      Height = 75
      Align = alLeft
      Caption = 'Esc | Sair'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B00003D0200003D0200000000000000000000513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        195136195136195136195136197D6853A89B8CA89B8CA89B8CA89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C
        A89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B
        8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C7D6953513619513619A89A8C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFF6E8CBEDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD0
        96EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096ED
        D096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096
        EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096F6E7CAFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22ED9A02DDAA12EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EC18E2AC18D2ADBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDAA22ED9A02DDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22ED9A02EBB89298C64237552
        1F815C21AA7C26DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E81
        5B20805B20DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EAD7E27
        845E2275521F8A6323B88729D9A02EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22ED9A02E936A235F4525725C4483705B76624C5C4328855F21CB952BDAA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EB48428B48328DBA22EDBA22EDBA22EDBA2
        2EDBA22EDAA22ECB952B8660215E452A77624B82705B715B435E4324936923D9
        A02DDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EB68528604527A09181EAE6E3FEFE
        FEF1EFEDB9AFA461462A825C21CA952BDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C21654B2EBEB4A9
        F2F0EEFEFEFEE7E4E09A8A795E4325B58527DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22E835E217A654FF1EFECFFFFFFFFFFFFFFFFFFFCFCFCB7ACA061482A7E5920
        D79F2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2ED79F2D7E5920644B2EBEB4A9FDFDFDFFFFFFFFFFFFFFFFFFECE9E5735D4681
        5C21DAA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22ED49C2D704E1E9A8979FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFCFCC4BBB16751377E5920CB952BDAA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDAA22ECB952B7E59206B543BC9C0B7FDFDFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF8A78656F4D1ED29B2CDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22ED8
        A02D7A562085725DF8F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBC4BCB2
        62482B825C20CA952BDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C
        21654B2EC9C1B8FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F07B66507A
        561FD8A02DDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22E9F732660482EC3BAB0FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCB9AFA363482B7E5920D79F2DDBA22EDB
        A22EDBA22EDBA22ED79F2D7E5920644B2EBEB4A9FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFCFCBBB1A55D4429A37625DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22ED9A02E79561F62492EBEB4A8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFDC6BDB46952397E5920CB952BDAA22EDAA22ECB952B7E59206B543BC9C0
        B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCB7ACA06046297F5A20DA
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EC4902A78552062492DC9C0
        B7FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBC7BEB5644A2D825C20CA
        952BCA952B825C21654B2EC9C1B8FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFBFBC3BAB06046297D5820C7932BDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDAA12EC38F2A72501F6A543AC9C0B7FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDBCB2A7644A2D7E59207E5920644B2EBEB4A9FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCC4BCB267503778551FC7922BDAA12EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED19B2D7350
        1E62492EBEB4A8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC9C0B66A
        543A6B543BC9C0B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCB9AFA3
        61472B78541FD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EC4902A78552062492DC9C0B7FDFCFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC9C1B7C9C1B8FDFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFBC6BDB461472B7D5820C7932BDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDAA1
        2EC48F2A72501F6A543AC9C0B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC7BEB469523878551F
        C7922BDAA12EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED19B2D73501E62492EBEB4A8
        FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDBCB1A662492C78541FD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EC4902A78552062492DC9C0B7FDFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCC8C0B662492C7D5820C7932BDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EC1
        8E2A805B20B48328DBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F2B72501F
        6A543AC9C0B7FDFDFDFFFFFFFFFFFF9D8E7E9D8E7DFFFFFFFFFFFFFDFDFDC9C1
        B76A533A78551FC7922BDAA12EDBA22EDBA22EDBA22EDBA22EDBA22EB4842880
        5B20C18E29DBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EC28E2A805C21B48328DBA22EDBA22EDBA2
        2EDBA22EDBA22EDAA22ECB952B7D59206A543AC9C0B7FDFDFDFFFFFFFFFFFF9E
        8E7E9D8E7DFFFFFFFFFFFFFDFDFDCAC1B86C543C78541FC7922BDAA12EDBA22E
        DBA22EDBA22EDBA22EDBA22EB48428805B20C18E2ADBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C21644A2D
        C8C0B6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FCCAC2B9654C307C581FC7922ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22ED79F2D7E5A2063492DBBB1A6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDBFB6AC654C3078541FD59D2C
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDAA22ECB952B7E5920695239C6BEB4FDFDFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFDCBC4BB6D563E78541FC7922BDAA12EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA95
        2B825D2162492BC6BDB4FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCC9
        C1B8C8C0B7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCCC5BC664D31
        7C581FC7922ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22ED79F2D7E5A2162482AB9AFA3FDFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDC9C2B96B543B6A533AC8BFB6FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFDC2B8AE664D3278541FD59D2CDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDAA22ECB952B7E59216750
        37C4BBB1FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDBFB5AB634A2F73
        501E73501E61482CBCB1A5FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
        CEC6BE6E584078541FC7922BDAA12EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22ECA952C835D2161482AC4BBB1FCFBFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDCBC3BB634A2F78541FC48F2AC4902A78552061472CC6BDB4FCFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCEC6BF674F337C581FC7922ADB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22E845E21614629B7ABA0FCFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCCC4BC6D563D72501FC38F2ADA
        A12EDAA12EC48F2B72501F695139C5BDB4FDFDFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEC4BBB16850347F5A20DBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EA679265E452ABDB2A7FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        C2B8AE654C3073501ED19A2CDBA22EDBA22EDBA22EDBA22ED19A2C73501E6047
        2BB9AEA3FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC9C1B7624A30A9
        7B26DBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22ED9A02D7A561F76614BF3F1EFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDCDC6BE654C3178541FC48F2ADBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EC4902A7855205F462AC4BBB1FCFBFBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F8F786735F805A21DAA12EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22ED2
        9A2C6F4E1E7B6751FBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDCEC7BF6E5840
        72501FC38F2ADAA12EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F
        2B72501F675037C4BAB0FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF998A7872
        501ED79F2DDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDAA12E7F5A216E5840E3DFDAFFFFFFFFFF
        FFFFFFFFFEFEFEC4BBB1664E3373501ED19A2CDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22ED19A2C73501E5F4529B7AB9FFCFCFB
        FFFFFFFFFFFFFFFFFFF0EEEC7A654E876022DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EB080285B4023998978E3DEDAFFFFFFF5F4F2C4BBB1674E3378541FC48F2A
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EC4902A7855205E4429B9AEA3F0EEECFEFEFEE9E6E2A091815D4326B5
        8528DBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22ED79F2D8660225A40226E5840917F
        6D816D5860472D77531FC38F2ADAA12EDBA22EDBA22EDBA22EDBA22EDBA22EB4
        8428B48328DBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F2B76531F5C4328
        76614B83705B725C445B4124866122D8A02DDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22ED69F2DAA7C2778541F6C4B1D74511E9A6F24D9A02EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22E815B20805B20DBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22ED9A02D976D2473511F6C4B1D7A551FAC7D27D69F2DDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED89F2DCC96
        2BD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EC1
        8E2AC18E2ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        D59D2DCC972BD8A02DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFF6E8CBEDD197EDD197ED
        D197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197
        EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD1
        97EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197ED
        D197EDD197EDD197EDD197F6E7CBFFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C5136195136197C6852
        A89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A
        8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA8
        9A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8C
        A89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A
        8CA89A8C7C685251361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnSairClick
      ExplicitTop = 6
    end
  end
  object memoError: TMemo
    Left = 128
    Top = -100
    Width = 1024
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 201
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 40
      Top = 20
      Width = 45
      Height = 15
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 35
      Top = 52
      Width = 50
      Height = 15
      Caption = 'Contador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 28
      Top = 89
      Width = 57
      Height = 15
      Caption = 'Per'#237'odo de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 43
      Top = 122
      Width = 42
      Height = 15
      Caption = 'Arquivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 61
      Top = 149
      Width = 23
      Height = 15
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 283
      Top = 89
      Width = 16
      Height = 15
      Caption = 'at'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cbEmpresa: TDBLookupComboboxEh
      Left = 90
      Top = 17
      Width = 388
      Height = 25
      DynProps = <>
      DataField = ''
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      KeyField = 'CODIGO'
      ListField = 'FANTASIA'
      ListSource = dsEmpresa
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 0
      Visible = True
    end
    object cbContador: TDBLookupComboboxEh
      Left = 90
      Top = 47
      Width = 388
      Height = 25
      DynProps = <>
      DataField = ''
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsContador
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Visible = True
    end
    object dtIni: TDateTimePicker
      Left = 90
      Top = 86
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = dtIniExit
    end
    object edArq: TEdit
      Left = 90
      Top = 117
      Width = 388
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object dtFim: TDateTimePicker
      Left = 352
      Top = 86
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = dtFimExit
    end
    object ckSemMovimento: TCheckBox
      Left = 328
      Top = 142
      Width = 110
      Height = 17
      Caption = 'Sem Movimento'
      TabOrder = 5
    end
    object ckInventario: TCheckBox
      Left = 328
      Top = 160
      Width = 157
      Height = 17
      Caption = 'Gerar sped com invent'#225'rio'
      TabOrder = 6
    end
    object CbTipo: TComboBox
      Left = 91
      Top = 150
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Ctl3D = False
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 7
      Text = 'ORIGINAL'
      Items.Strings = (
        'ORIGINAL'
        'SUBSTITUTO')
    end
  end
  object dsContador: TDataSource
    DataSet = DadosSped.qryContador
    Left = 64
    Top = 96
  end
  object dsEmpresa: TDataSource
    DataSet = DadosSped.qryEmpresa
    Left = 64
    Top = 40
  end
  object ACBrSPEDFiscal: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\19.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 272
    Top = 104
  end
end