object DataModule13: TDataModule13
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 370
  Width = 624
  object MydbConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=mydb')
    Connected = True
    LoginPrompt = False
    Left = 41
    Top = 25
  end
  object ProdutosTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      
        'SELECT * FROM mydb.produtos WHERE status = '#39'INDISPONIVEL'#39' ORDER ' +
        'BY nome')
    Left = 393
    Top = 57
    object ProdutosTableidItens: TIntegerField
      FieldName = 'idItens'
      Origin = 'idItens'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object ProdutosTablequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object ProdutosTablepreco: TSingleField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
    end
    object ProdutosTablequantidademin: TIntegerField
      FieldName = 'quantidademin'
      Origin = 'quantidademin'
      Required = True
    end
    object ProdutosTablestatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
      FixedChar = True
      Size = 12
    end
    object ProdutosTabletipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object DataSource1: TDataSource
    DataSet = ProdutosTable
    Left = 392
    Top = 112
  end
end
