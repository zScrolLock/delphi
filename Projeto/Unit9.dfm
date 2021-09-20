object DataModule9: TDataModule9
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 397
  Width = 605
  object MydbConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=mydb')
    Connected = True
    LoginPrompt = False
    Left = 43
    Top = 17
  end
  object Produtos_vendaTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.produtos_venda')
    Left = 219
    Top = 33
    object Produtos_vendaTableidVenda: TIntegerField
      FieldName = 'idVenda'
      Origin = 'idVenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produtos_vendaTablequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object Produtos_vendaTablepreco: TSingleField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
    end
    object Produtos_vendaTableProdutos_idItens: TIntegerField
      FieldName = 'Produtos_idItens'
      Origin = 'Produtos_idItens'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produtos_vendaTablenomeprod: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeprod'
      LookupDataSet = ProdutosTable
      LookupKeyFields = 'idItens'
      LookupResultField = 'nome'
      KeyFields = 'Produtos_idItens'
      Lookup = True
    end
    object Produtos_vendaTabletotal_venda: TFloatField
      FieldKind = fkLookup
      FieldName = 'total_venda'
      LookupDataSet = VendaTable
      LookupKeyFields = 'idVenda'
      LookupResultField = 'valortotal'
      KeyFields = 'idVenda'
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Produtos_vendaTable
    Left = 224
    Top = 88
  end
  object VendaTable: TFDQuery
    Active = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.venda')
    Left = 322
    Top = 27
    object VendaTableidVenda: TIntegerField
      FieldName = 'idVenda'
      Origin = 'idVenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VendaTabledata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
    object VendaTablevalortotal: TSingleField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Required = True
    end
    object VendaTableFuncionario_idFuncionario: TIntegerField
      FieldName = 'Funcionario_idFuncionario'
      Origin = 'Funcionario_idFuncionario'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = VendaTable
    Left = 328
    Top = 88
  end
  object ProdutosTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.produtos')
    Left = 428
    Top = 36
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
  object DataSource3: TDataSource
    DataSet = ProdutosTable
    Left = 424
    Top = 96
  end
  object Compra_produtosTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.compra_produtos')
    Left = 294
    Top = 222
    object Compra_produtosTableCompra_idCompra: TIntegerField
      FieldName = 'Compra_idCompra'
      Origin = 'Compra_idCompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Compra_produtosTablequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object Compra_produtosTablevalortotal: TSingleField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Required = True
    end
    object Compra_produtosTableProdutos_idItens: TIntegerField
      FieldName = 'Produtos_idItens'
      Origin = 'Produtos_idItens'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Compra_produtosTablenomeproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeproduto'
      LookupDataSet = ProdutosTable
      LookupKeyFields = 'idItens'
      LookupResultField = 'nome'
      KeyFields = 'Produtos_idItens'
      Lookup = True
    end
    object Compra_produtosTablevalorcompra: TFloatField
      FieldKind = fkLookup
      FieldName = 'valorcompra'
      LookupDataSet = CompraTable
      LookupKeyFields = 'idCompra'
      LookupResultField = 'valortotal'
      KeyFields = 'Compra_idCompra'
      Lookup = True
    end
  end
  object CompraTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.compra')
    Left = 429
    Top = 216
    object CompraTableidCompra: TIntegerField
      FieldName = 'idCompra'
      Origin = 'idCompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CompraTableDistribuidor_idDistribuidor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Distribuidor_idDistribuidor'
      Origin = 'Distribuidor_idDistribuidor'
    end
    object CompraTabledata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
    object CompraTablevalortotal: TSingleField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Required = True
    end
  end
  object DataSource4: TDataSource
    DataSet = Compra_produtosTable
    Left = 288
    Top = 272
  end
  object DataSource5: TDataSource
    DataSet = CompraTable
    Left = 424
    Top = 264
  end
end
