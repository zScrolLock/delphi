unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Label_nomeProd: TLabel;
    Label_numV: TLabel;
    Label3: TLabel;
    Label_total: TLabel;
    Label_valor: TLabel;
    Label_TItens: TLabel;
    Edit_qtde: TEdit;
    Edit_codProd: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Image2: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_codProdKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  cod_venda: integer;
  cod_prod: integer;
  total_item: real = 0;
  total_compra: real = 0;
  tItens: integer = 0;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit3, Unit4, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
begin
  with DataModule2 do begin
    DistribuidorTable.Close;
    DistribuidorTable.Params.ParamByName('codigo').AsInteger := StrToInt(Edit1.Text);
    DistribuidorTable.Open();

    Label2.Caption := DistribuidorTablenome.AsString;
  end;
end;

procedure TForm6.Edit_codProdKeyPress(Sender: TObject; var Key: Char);
begin
  with DataModule2 do begin
  if Key = #13 then begin
      if pos('x', Edit_codProd.Text) = 0 then begin
        cod_prod := StrToInt(Edit_codProd.Text);
        if (DataModule2.ProdutoTable.Locate('idItens', cod_prod,[loCaseInsensitive])) then begin
          Label_nomeProd.Caption := ProdutoTablenome.AsString;

          // -- Itens venda --
          Compra_produtosTable.Append;
          Compra_produtosTableCompra_idCompra.AsInteger := cod_venda;
          Compra_produtosTablevalortotal.AsFloat := ProdutoTablepreco.AsFloat;
          Compra_produtosTablequantidade.AsInteger := StrToInt(Edit_qtde.Text);
          Compra_produtosTableProdutos_idItens.AsInteger := StrToInt(Edit_codProd.Text);

          // -- Calculos de Valor --
          total_item := Compra_produtosTablequantidade.AsInteger * Compra_produtosTablevalortotal.AsFloat;
          Label_valor.Caption := Compra_produtosTablevalortotal.AsString;
          tItens := tItens + Compra_produtosTablequantidade.AsInteger;

          Compra_produtosTable.Post;
          Compra_produtosTable.ApplyUpdates(-1);
          Compra_produtosTable.CommitUpdates;

          total_compra := total_compra + total_item;
          Label_TItens.Caption := IntToStr(tItens);
          Label_total.Caption := formatfloat('0.00', total_compra);
          Edit_qtde.Text := '1';
          Edit_codProd.Text := '';

        end else begin
          showMessage('Código do Produto não existe');
        end;
      end else begin
         Edit_qtde.Text := copy(Edit_codProd.Text, 1, pos('x', Edit_codProd.Text) - 1);
         Edit_codProd.Text := '';
      end;
    end;
  end;
end;

procedure TForm6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then begin
      with DataModule2 do begin
        CompraTable.Open();
        CompraTable.Last;
        cod_venda := CompraTableidCompra.AsInteger;
        inc(cod_venda);
        Label8.Caption := IntToStr(CompraTableidCompra.AsInteger);

        CompraTable.Append;
        CompraTableidCompra.AsInteger := cod_venda;
        CompraTabledata.AsDateTime := Date();
        CompraTableDistribuidor_idDistribuidor.AsInteger := DistribuidorTableidDistribuidor.AsInteger;
        CompraTablevalortotal.AsFloat := 0;

        CompraTable.ApplyUpdates(-1);

        Label8.Caption := CompraTableidCompra.AsString;

        Edit_codProd.Enabled := true;
        Edit_codProd.SetFocus;
        Edit_qtde.Text:= '1';
    end;
  end;

  if Key = VK_F3 then
  begin
    with DataModule2 do begin
      Compra_produtosTable.Close;
      CompraTable.Close;

      total_compra := 0;
      total_item := 0;
      tItens := 0;

      Label_valor.Caption := '';
      Label_total.Caption := '00.00';
      Label_nomeProd.Caption := 'Nome do Produto';
      Label_TItens.Caption := '0';
      Edit_codProd.Text := '';
      Edit_qtde.Text := '';

      showMessage('Compra efetuada com sucesso');
    end;
  end;

  if Key = VK_F4 then
  begin
    DataModule2.Compra_produtosTable.Delete;
    total_compra:= 0;
    tItens:= 0;
    total_item:= 0;
    DataModule2.Compra_produtosTable.ApplyUpdates(0);
  end;

end;

procedure TForm6.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Datamodule2.Compra_produtosTable.close;
    close;
  end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  Label3.Caption := 'Nome do Funcionario: ' + DataModule2.FuncionarioTablenome.AsString + '  ID: ' + DataModule2.FuncionarioTableidFuncionario.AsString;
end;

end.
