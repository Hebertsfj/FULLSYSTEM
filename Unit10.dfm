object dm: Tdm
  OldCreateOrder = False
  Height = 365
  Width = 348
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Hebert\Google Drive\Projeto\projeto\projeo atualizado\Projet' +
      'o\exercicio nivel de acesso.mdb;Mode=Share Deny None;Persist Sec' +
      'urity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry' +
      ' Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;' +
      'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk ' +
      'Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Databas' +
      'e Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:E' +
      'ncrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fal' +
      'se;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=' +
      'False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblogin')
    Left = 128
    Top = 24
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1login: TWideStringField
      FieldName = 'login'
      Size = 255
    end
    object ADOQuery1senha: TWideStringField
      FieldName = 'senha'
      Size = 255
    end
    object ADOQuery1nivel: TIntegerField
      FieldName = 'nivel'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 24
  end
end
