object Form6: TForm6
  Left = 360
  Top = 225
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 516
  ClientWidth = 692
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
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 113
    Height = 105
  end
  object Label1: TLabel
    Left = 154
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Cargo:'
  end
  object Label2: TLabel
    Left = 82
    Top = 193
    Width = 36
    Height = 13
    Caption = 'Sal'#225'rio:'
  end
  object Label3: TLabel
    Left = 82
    Top = 239
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label4: TLabel
    Left = 82
    Top = 274
    Width = 18
    Height = 13
    Caption = 'RG:'
  end
  object Label5: TLabel
    Left = 82
    Top = 220
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object Label6: TLabel
    Left = 82
    Top = 166
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label7: TLabel
    Left = 82
    Top = 139
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 17
    Top = 374
    Width = 648
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 17
    Top = 343
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 154
    Top = 190
    Width = 63
    Height = 21
    DataField = 'Sal'#225'rio'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 154
    Top = 217
    Width = 263
    Height = 21
    DataField = 'e-mail'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 154
    Top = 244
    Width = 121
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 216
    Top = 61
    Width = 121
    Height = 21
    DataField = 'Fun'#231#227'o'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 154
    Top = 271
    Width = 121
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 154
    Top = 163
    Width = 263
    Height = 21
    DataField = 'endere'#231'o'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 154
    Top = 136
    Width = 263
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 298
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 82
    Top = 298
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object BitBtn2: TBitBtn
    Left = 536
    Top = 8
    Width = 139
    Height = 25
    Caption = 'Voltar ao Submenu'
    Kind = bkIgnore
    NumGlyphs = 2
    TabOrder = 11
    OnClick = BitBtn2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 497
    Width = 692
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
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 560
    Top = 64
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Hebert\Goo' +
      'gle Drive\Projeto\projeto\projeo atualizado\Projeto\projeto.mdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 416
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tbfuncionario')
    Left = 488
    Top = 64
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 392
  end
end
