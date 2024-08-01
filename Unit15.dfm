object Form15: TForm15
  Left = 566
  Top = 281
  Caption = 'Cadastro de Login'
  ClientHeight = 352
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 40
    Top = 77
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label3: TLabel
    Left = 40
    Top = 112
    Width = 23
    Height = 13
    Caption = 'Nivel'
  end
  object DBEdit1: TDBEdit
    Left = 76
    Top = 37
    Width = 93
    Height = 21
    DataField = 'login'
    DataSource = DataModule14.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 76
    Top = 74
    Width = 93
    Height = 21
    DataField = 'senha'
    DataSource = DataModule14.DataSource1
    PasswordChar = '*'
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 76
    Top = 109
    Width = 29
    Height = 21
    DataField = 'nivel'
    DataSource = DataModule14.DataSource1
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 191
    Top = 8
    Width = 122
    Height = 25
    Caption = 'Voltar ao Submenu'
    Kind = bkIgnore
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 152
    Width = 240
    Height = 25
    DataSource = DataModule14.DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 183
    Width = 320
    Height = 120
    DataSource = DataModule14.DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 333
    Width = 455
    Height = 19
    Panels = <
      item
        Width = 80
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
    ExplicitLeft = 176
    ExplicitTop = 304
    ExplicitWidth = 0
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 56
  end
end
