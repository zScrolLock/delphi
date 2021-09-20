unit Unit9;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule9 = class(TDataModule)
    MydbConnection: TFDConnection;
    Produtos_vendaTable: TFDQuery;
    DataSource1: TDataSource;
    VendaTable: TFDQuery;
    DataSource2: TDataSource;
    Produtos_vendaTableidVenda: TIntegerField;
    Produtos_vendaTablequantidade: TIntegerField;
    Produtos_vendaTablepreco: TSingleField;
    Produtos_vendaTableProdutos_idItens: TIntegerField;
    VendaTableidVenda: TIntegerField;
    VendaTabledata: TDateField;
    VendaTablevalortotal: TSingleField;
    VendaTableFuncionario_idFuncionario: TIntegerField;
    ProdutosTable: TFDQuery;
    DataSource3: TDataSource;
    ProdutosTableidItens: TIntegerField;
    ProdutosTablenome: TStringField;
    ProdutosTablequantidade: TIntegerField;
    ProdutosTablepreco: TSingleField;
    ProdutosTablequantidademin: TIntegerField;
    ProdutosTablestatus: TStringField;
    ProdutosTabletipo: TStringField;
    Produtos_vendaTablenomeprod: TStringField;
    Produtos_vendaTabletotal_venda: TFloatField;
    Compra_produtosTable: TFDQuery;
    CompraTable: TFDQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Compra_produtosTableCompra_idCompra: TIntegerField;
    Compra_produtosTablequantidade: TIntegerField;
    Compra_produtosTablevalortotal: TSingleField;
    Compra_produtosTableProdutos_idItens: TIntegerField;
    CompraTableidCompra: TIntegerField;
    CompraTableDistribuidor_idDistribuidor: TIntegerField;
    CompraTabledata: TDateField;
    CompraTablevalortotal: TSingleField;
    Compra_produtosTablenomeproduto: TStringField;
    Compra_produtosTablevalorcompra: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule9: TDataModule9;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule9.DataModuleCreate(Sender: TObject);
begin
  VendaTable.Open();
  Produtos_vendaTable.Open();
end;

end.
