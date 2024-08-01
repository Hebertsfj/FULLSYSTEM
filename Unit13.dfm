object DataModule13: TDataModule13
  OldCreateOrder = False
  Height = 386
  Width = 287
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Hebert\Goo' +
      'gle Drive\Projeto\projeto\projeo atualizado\Projeto\Avalia'#231#227'o.md' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tbmedidas')
    Left = 104
    Top = 16
    object ADOQuery1matricula: TWideStringField
      FieldName = 'matricula'
      Size = 255
    end
    object ADOQuery1nome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
    object ADOQuery1pescoço: TWideStringField
      FieldName = 'pesco'#231'o'
      Size = 255
    end
    object ADOQuery1ombro: TWideStringField
      FieldName = 'ombro'
      Size = 255
    end
    object ADOQuery1braçorelaxado: TWideStringField
      FieldName = 'bra'#231'o relaxado'
      Size = 255
    end
    object ADOQuery1braçocontraido: TWideStringField
      FieldName = 'bra'#231'o contraido'
      Size = 255
    end
    object ADOQuery1antebraço: TWideStringField
      FieldName = 'antebra'#231'o'
      Size = 255
    end
    object ADOQuery1tóraxrelaxado: TWideStringField
      FieldName = 't'#243'rax relaxado'
      Size = 255
    end
    object ADOQuery1tóraxinspirado: TWideStringField
      FieldName = 't'#243'rax inspirado'
      Size = 255
    end
    object ADOQuery1cintura: TWideStringField
      FieldName = 'cintura'
      Size = 255
    end
    object ADOQuery1abdome: TWideStringField
      FieldName = 'abdome'
      Size = 255
    end
    object ADOQuery1quadril: TWideStringField
      FieldName = 'quadril'
      Size = 255
    end
    object ADOQuery1coxa: TWideStringField
      FieldName = 'coxa'
      Size = 255
    end
    object ADOQuery1panturrilha: TWideStringField
      FieldName = 'panturrilha'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 200
    Top = 16
  end
end
