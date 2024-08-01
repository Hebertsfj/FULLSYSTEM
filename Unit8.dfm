object Form8: TForm8
  Left = 463
  Top = 169
  Caption = 'Agendamento de Avalia'#231#245'es'
  ClientHeight = 406
  ClientWidth = 558
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
    Top = 96
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object Label2: TLabel
    Left = 40
    Top = 123
    Width = 82
    Height = 13
    Caption = 'Dia da avalia'#231#227'o:'
  end
  object Label3: TLabel
    Left = 40
    Top = 150
    Width = 39
    Height = 13
    Caption = 'Hor'#225'rio:'
  end
  object Label4: TLabel
    Left = 40
    Top = 69
    Width = 47
    Height = 13
    Caption = 'Matricula:'
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 261
    Width = 320
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
    Left = 25
    Top = 230
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 93
    Width = 185
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 120
    Width = 185
    Height = 21
    DataField = 'data'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 147
    Width = 185
    Height = 21
    DataField = 'hora'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 66
    Width = 41
    Height = 21
    DataField = 'matricula'
    DataSource = DataSource1
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 425
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Voltar ao Submenu'
    Kind = bkIgnore
    NumGlyphs = 2
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 387
    Width = 558
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
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Hebert\Google Drive\Projeto\projeto\projeo atualizado\Projet' +
      'o\Avalia'#231#227'o.mdb;Mode=Share Deny None;Persist Security Info=False' +
      ';Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLE' +
      'DB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Databa' +
      'se Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:' +
      'Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Je' +
      't OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=' +
      'False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Com' +
      'pact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 368
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 488
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tbagendamento')
    Left = 432
    Top = 256
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 8
  end
end
