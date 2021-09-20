object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 378
  Width = 557
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 40
    Top = 152
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 200
  end
  object MydbConnection: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'ConnectionDef=mydb')
    Connected = True
    LoginPrompt = False
    Left = 50
    Top = 45
  end
  object ProdutoTable: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.produtos')
    Left = 339
    Top = 11
    object ProdutoTableidItens: TIntegerField
      FieldName = 'idItens'
      Origin = 'idItens'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object ProdutoTablequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object ProdutoTablepreco: TSingleField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
    end
    object ProdutoTablequantidademin: TIntegerField
      FieldName = 'quantidademin'
      Origin = 'quantidademin'
      Required = True
    end
    object ProdutoTablestatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
      FixedChar = True
      Size = 12
    end
    object ProdutoTabletipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object DS_Produtos: TDataSource
    DataSet = ProdutoTable
    Left = 336
    Top = 64
  end
  object DS_Venda2: TDataSource
    DataSet = VendaTable
    OnDataChange = DS_Venda2DataChange
    Left = 424
    Top = 64
  end
  object VendaTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.venda')
    Left = 420
    Top = 12
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
  object CaixaTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.caixa WHERE DATE(dataCaixa) = CURRENT_DATE')
    Left = 329
    Top = 260
    object CaixaTabledataCaixa: TDateTimeField
      FieldName = 'dataCaixa'
      Origin = 'dataCaixa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CaixaTablevalorabertura: TSingleField
      FieldName = 'valorabertura'
      Origin = 'valorabertura'
      Required = True
    end
    object CaixaTablevalorfechamento: TSingleField
      FieldName = 'valorfechamento'
      Origin = 'valorfechamento'
      Required = True
    end
    object CaixaTableCompra_idCompra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compra_idCompra'
      Origin = 'Compra_idCompra'
    end
    object CaixaTableVenda_idVenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Venda_idVenda'
      Origin = 'Venda_idVenda'
    end
    object CaixaTablestatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      Size = 45
    end
  end
  object CompraTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.compra')
    Left = 437
    Top = 142
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
  object Compra_produtosTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.compra_produtos WHERE Compra_idCompra=:compra')
    Left = 328
    Top = 143
    ParamData = <
      item
        Name = 'COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
      LookupDataSet = ProdutoTable
      LookupKeyFields = 'idItens'
      LookupResultField = 'nome'
      KeyFields = 'Produtos_idItens'
      Lookup = True
    end
  end
  object FuncionarioTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      
        'SELECT * FROM mydb.funcionario WHERE login=:login AND senha =:se' +
        'nha AND tipo=:tipo')
    Left = 435
    Top = 257
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FuncionarioTableidFuncionario: TIntegerField
      FieldName = 'idFuncionario'
      Origin = 'idFuncionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FuncionarioTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FuncionarioTabletipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 45
    end
    object FuncionarioTablesalario: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'salario'
      Origin = 'salario'
    end
    object FuncionarioTablecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 45
    end
    object FuncionarioTabletelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 45
    end
    object FuncionarioTablelogin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
      Size = 45
    end
    object FuncionarioTablesenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 45
    end
  end
  object DistribuidorTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    SQL.Strings = (
      'SELECT * FROM mydb.distribuidor WHERE idDistribuidor=:codigo')
    Left = 224
    Top = 149
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object DistribuidorTableidDistribuidor: TIntegerField
      FieldName = 'idDistribuidor'
      Origin = 'idDistribuidor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DistribuidorTabletelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 45
    end
    object DistribuidorTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object DistribuidorTableendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 45
    end
    object DistribuidorTablecidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 45
    end
    object DistribuidorTableuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object DistribuidorTabletipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object DS_Distribuidor: TDataSource
    DataSet = DistribuidorTable
    Left = 224
    Top = 200
  end
  object DS_Compra_Itens: TDataSource
    DataSet = Compra_produtosTable
    Left = 328
    Top = 200
  end
  object DS_Compra: TDataSource
    DataSet = CompraTable
    OnDataChange = DS_CompraDataChange
    Left = 440
    Top = 200
  end
  object DS_caixa: TDataSource
    DataSet = CaixaTable
    Left = 328
    Top = 312
  end
  object DS_Funcionario: TDataSource
    DataSet = FuncionarioTable
    Left = 432
    Top = 312
  end
  object Produtos_vendaTable: TFDQuery
    CachedUpdates = True
    Connection = MydbConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM mydb.produtos_venda WHERE idVenda=:venda')
    Left = 243
    Top = 16
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    object Produtos_vendaTablenomeproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeproduto'
      LookupDataSet = ProdutoTable
      LookupKeyFields = 'idItens'
      LookupResultField = 'nome'
      KeyFields = 'Produtos_idItens'
      Lookup = True
    end
    object Produtos_vendaTableprecoun: TFloatField
      FieldKind = fkLookup
      FieldName = 'precoun'
      LookupDataSet = ProdutoTable
      LookupKeyFields = 'idItens'
      LookupResultField = 'preco'
      KeyFields = 'Produtos_idItens'
      Lookup = True
    end
  end
  object DS_Venda_Itens: TDataSource
    DataSet = Produtos_vendaTable
    Left = 232
    Top = 64
  end
end
