unit Unit13;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule13 = class(TDataModule)
    MydbConnection: TFDConnection;
    ProdutosTable: TFDQuery;
    DataSource1: TDataSource;
    ProdutosTableidItens: TIntegerField;
    ProdutosTablenome: TStringField;
    ProdutosTablequantidade: TIntegerField;
    ProdutosTablepreco: TSingleField;
    ProdutosTablequantidademin: TIntegerField;
    ProdutosTablestatus: TStringField;
    ProdutosTabletipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule13: TDataModule13;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule13.DataModuleCreate(Sender: TObject);
begin
  ProdutosTable.Open();
end;

end.
