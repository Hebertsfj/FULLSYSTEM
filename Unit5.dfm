object Form5: TForm5
  Left = 360
  Top = 169
  Caption = 'Cadastro de Alunos'
  ClientHeight = 566
  ClientWidth = 743
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
    Left = 64
    Top = 136
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object Label2: TLabel
    Left = 64
    Top = 163
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label3: TLabel
    Left = 64
    Top = 190
    Width = 100
    Height = 13
    Caption = 'Data de Nascimento:'
  end
  object Label4: TLabel
    Left = 64
    Top = 217
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label5: TLabel
    Left = 152
    Top = 52
    Width = 83
    Height = 13
    Caption = 'Tipo de Atividade'
  end
  object Label6: TLabel
    Left = 64
    Top = 244
    Width = 62
    Height = 13
    Caption = 'Indentidade:'
  end
  object Label7: TLabel
    Left = 64
    Top = 271
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label8: TLabel
    Left = 64
    Top = 298
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
  end
  object Label9: TLabel
    Left = 62
    Top = 325
    Width = 47
    Height = 13
    Caption = 'Matricula:'
  end
  object Image1: TImage
    Left = 18
    Top = 8
    Width = 105
    Height = 105
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 408
    Width = 709
    Height = 135
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 41
    Top = 377
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 133
    Width = 305
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 160
    Width = 305
    Height = 21
    DataField = 'endere'#231'o'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 187
    Width = 145
    Height = 21
    DataField = 'nacimento'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 214
    Width = 145
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 241
    Width = 161
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 184
    Top = 268
    Width = 161
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 295
    Width = 145
    Height = 21
    DataField = 'vencimento'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 241
    Top = 49
    Width = 184
    Height = 21
    DataField = 'atividade'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 184
    Top = 322
    Width = 145
    Height = 21
    DataField = 'matricula'
    DataSource = DataSource1
    TabOrder = 10
  end
  object Button1: TButton
    Left = 620
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Voltar ao Submenu'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 43
    Top = 350
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Button2: TButton
    Left = 184
    Top = 349
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 13
    OnClick = Button2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 547
    Width = 743
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
    Left = 472
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 608
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tbaluno')
    Left = 544
    Top = 64
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 8
  end
end
