object Form4: TForm4
  Left = 463
  Top = 225
  Caption = 'Form4'
  ClientHeight = 388
  ClientWidth = 551
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
    Left = 32
    Top = 64
    Width = 43
    Height = 13
    Caption = 'Matricula'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 184
    Top = 160
    Width = 22
    Height = 13
    Caption = 'data'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 184
    Top = 200
    Width = 22
    Height = 13
    Caption = 'hora'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 81
    Top = 61
    Width = 134
    Height = 21
    DataField = 'matricula'
    DataSource = DataModule14.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 93
    Width = 417
    Height = 21
    DataField = 'nome'
    DataSource = DataModule14.DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 179
    Width = 1143
    Height = 21
    DataField = 'data'
    DataSource = DataModule14.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 216
    Width = 3319
    Height = 21
    DataField = 'hora'
    DataSource = DataModule14.DataSource1
    TabOrder = 3
  end
end
