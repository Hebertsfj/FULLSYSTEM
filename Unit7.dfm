object Form7: TForm7
  Left = 411
  Top = 281
  Caption = 'Cadastros de Empresas Terceiras'
  ClientHeight = 506
  ClientWidth = 687
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
  object TLabel
    Left = 160
    Top = 56
    Width = 90
    Height = 13
    Caption = 'Nome da Empresa:'
  end
  object Label2: TLabel
    Left = 80
    Top = 206
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label3: TLabel
    Left = 80
    Top = 152
    Width = 93
    Height = 13
    Caption = 'Servi'#231'o executado:'
  end
  object Label4: TLabel
    Left = 80
    Top = 179
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label1: TLabel
    Left = 80
    Top = 233
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object Label5: TLabel
    Left = 80
    Top = 260
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 361
    Width = 657
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
    Left = 16
    Top = 330
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 215
    Top = 149
    Width = 170
    Height = 21
    DataField = 'servi'#231'o'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 215
    Top = 176
    Width = 258
    Height = 21
    DataField = 'endere'#231'o'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 215
    Top = 203
    Width = 121
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 272
    Top = 53
    Width = 121
    Height = 21
    DataField = 'nome empresa'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 215
    Top = 230
    Width = 121
    Height = 21
    DataField = 'e-mail'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 215
    Top = 257
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 80
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 224
    Top = 284
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 540
    Top = 8
    Width = 131
    Height = 25
    Caption = 'Voltar ao Submenu'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 487
    Width = 687
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
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Hebert\Goo' +
      'gle Drive\Projeto\projeto\projeo atualizado\Projeto\projeto.mdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 392
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 544
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tbterceiros')
    Left = 472
    Top = 88
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 448
    Top = 8
  end
end
