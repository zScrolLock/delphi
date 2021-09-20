object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 248
  Width = 342
  object TesteConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=teste')
    Connected = True
    LoginPrompt = False
    Left = 33
    Top = 22
  end
  object Jogador: TFDQuery
    Active = True
    Connection = TesteConnection
    SQL.Strings = (
      
        'SELECT nome,tempo FROM recordistas.jogador ORDER BY tempo LIMIT ' +
        '5;')
    Left = 129
    Top = 134
    object Jogadornome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 45
    end
    object Jogadortempo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tempo'
      Origin = 'tempo'
      Size = 10
    end
  end
  object DS_Jogador: TDataSource
    DataSet = Jogador
    Left = 128
    Top = 80
  end
end
