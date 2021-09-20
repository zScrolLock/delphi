unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDataModule2 = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    MydbConnection: TFDConnection;
    ProdutoTable: TFDQuery;
    DS_Produtos: TDataSource;
    DS_Venda2: TDataSource;
    VendaTable: TFDQuery;
    ProdutoTableidItens: TIntegerField;
    ProdutoTablenome: TStringField;
    ProdutoTablequantidade: TIntegerField;
    ProdutoTablepreco: TSingleField;
    ProdutoTablequantidademin: TIntegerField;
    ProdutoTablestatus: TStringField;
    ProdutoTabletipo: TStringField;
    VendaTableidVenda: TIntegerField;
    VendaTabledata: TDateField;
    VendaTablevalortotal: TSingleField;
    VendaTableFuncionario_idFuncionario: TIntegerField;
    CaixaTable: TFDQuery;
    CompraTable: TFDQuery;
    Compra_produtosTable: TFDQuery;
    FuncionarioTable: TFDQuery;
    DistribuidorTable: TFDQuery;
    DS_Distribuidor: TDataSource;
    DS_Compra_Itens: TDataSource;
    DS_Compra: TDataSource;
    DS_caixa: TDataSource;
    DS_Funcionario: TDataSource;
    DistribuidorTableidDistribuidor: TIntegerField;
    DistribuidorTabletelefone: TStringField;
    DistribuidorTablenome: TStringField;
    DistribuidorTableendereco: TStringField;
    DistribuidorTablecidade: TStringField;
    DistribuidorTableuf: TStringField;
    DistribuidorTabletipo: TStringField;
    Compra_produtosTableCompra_idCompra: TIntegerField;
    Compra_produtosTablequantidade: TIntegerField;
    Compra_produtosTablevalortotal: TSingleField;
    Compra_produtosTableProdutos_idItens: TIntegerField;
    CompraTableidCompra: TIntegerField;
    CompraTableDistribuidor_idDistribuidor: TIntegerField;
    CompraTabledata: TDateField;
    CompraTablevalortotal: TSingleField;
    CaixaTabledataCaixa: TDateTimeField;
    CaixaTablevalorabertura: TSingleField;
    CaixaTablevalorfechamento: TSingleField;
    CaixaTableCompra_idCompra: TIntegerField;
    CaixaTableVenda_idVenda: TIntegerField;
    FuncionarioTableidFuncionario: TIntegerField;
    FuncionarioTablenome: TStringField;
    FuncionarioTabletipo: TStringField;
    FuncionarioTablesalario: TSingleField;
    FuncionarioTablecpf: TStringField;
    FuncionarioTabletelefone: TStringField;
    FuncionarioTablelogin: TStringField;
    FuncionarioTablesenha: TStringField;
    Produtos_vendaTable: TFDQuery;
    DS_Venda_Itens: TDataSource;
    Produtos_vendaTableidVenda: TIntegerField;
    Produtos_vendaTablequantidade: TIntegerField;
    Produtos_vendaTablepreco: TSingleField;
    Produtos_vendaTableProdutos_idItens: TIntegerField;
    Produtos_vendaTablenomeproduto: TStringField;
    Produtos_vendaTableprecoun: TFloatField;
    CaixaTablestatus: TStringField;
    Compra_produtosTablenomeproduto: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DS_CompraDataChange(Sender: TObject; Field: TField);
    procedure DS_Venda2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit3, Unit1, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  ProdutoTable.Open();
  CompraTable.Open();
  VendaTable.Open();
  Produtos_vendaTable.Open();
  Compra_produtosTable.Open();
  DistribuidorTable.Open();
  CaixaTable.Open();
end;

procedure TDataModule2.DS_CompraDataChange(Sender: TObject; Field: TField);
begin
    Compra_ProdutosTable.Close;
    Compra_ProdutosTable.Params.ParamByName('compra').AsInteger := CompraTableidCompra.AsInteger;
    Compra_ProdutosTable.Open;
end;

procedure TDataModule2.DS_Venda2DataChange(Sender: TObject; Field: TField);
begin
  Produtos_vendaTable.Close;
  Produtos_vendaTable.Params.ParamByName('venda').AsInteger := VendaTableidVenda.AsInteger;
  Produtos_vendaTable.Open;
end;

end.
