unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm_venda = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Label_nomeProd: TLabel;
    Label_total: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit_codProd: TEdit;
    Edit_qtde: TEdit;
    Label1: TLabel;
    Label_TItens: TLabel;
    Label_valor: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Label_numV: TLabel;
    Label_funcionario: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
    procedure Edit_codProdKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_venda: TForm_venda;
  cod_venda: integer;
  cod_prod: integer;
  total_item: real = 0;
  total_compra: real = 0;
  tItens: integer = 0;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm_venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Datamodule2.Produtos_vendaTable.close;
    close;
  end;

end;

procedure TForm_venda.FormShow(Sender: TObject);
begin
  Label_funcionario.Caption := 'Nome do Funcionario: ' + DataModule2.FuncionarioTablenome.AsString + '  ID: ' + DataModule2.FuncionarioTableidFuncionario.AsString;
end;

procedure TForm_venda.Edit_codProdKeyPress(Sender: TObject; var Key: Char);
begin
  with DataModule2 do begin
    if Key = #13 then begin
      if pos('x', Edit_codProd.Text) = 0 then begin
        cod_prod := StrToInt(Edit_codProd.Text);
        if (DataModule2.ProdutoTable.Locate('idItens', cod_prod,[loCaseInsensitive])) then begin
          Label_nomeProd.Caption := ProdutoTablenome.AsString;

          // -- Itens venda --
          Produtos_vendaTable.Append;
          Produtos_vendaTableidVenda.AsInteger := cod_venda;
          Produtos_vendaTableProdutos_idItens.AsInteger := StrToInt(Edit_codProd.Text);
          Produtos_vendaTablepreco.AsFloat := ProdutoTablepreco.AsFloat;
          Produtos_vendaTablequantidade.AsInteger := StrToInt(Edit_qtde.Text);

          // -- Calculos de Valor --
          total_item := Produtos_vendaTablequantidade.AsInteger * Produtos_vendaTablepreco.AsFloat;
          Label_valor.Caption := ProdutoTablepreco.AsString;
          tItens := tItens + Produtos_vendaTablequantidade.AsInteger;

          Produtos_vendaTable.Post;
          Produtos_vendaTable.ApplyUpdates(-1);
          Produtos_vendaTable.CommitUpdates;

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

procedure TForm_venda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then begin
      with DataModule2 do begin
      // -- Venda --
      VendaTable.Open();
      VendaTable.Last;
      cod_venda := VendaTableidVenda.AsInteger;
      inc(cod_venda);
      Label_numV.Caption := IntToStr(VendaTableidVenda.AsInteger);

      // -- Append --
      VendaTable.Append;
      VendaTableidVenda.AsInteger := cod_venda;
      VendaTabledata.AsDateTime := Date();
      VendaTablevalortotal.AsFloat := 0;
      VendaTableFuncionario_idFuncionario.AsInteger := FuncionarioTableidFuncionario.AsInteger;

      VendaTable.ApplyUpdates(-1);

      Label_numV.Caption := VendaTableidVenda.AsString;

      Edit_codProd.Enabled := true;
      Edit_codProd.SetFocus;
      Edit_qtde.Text:= '1';
    end;
  end;

  if Key = VK_F3 then
  begin
    with DataModule2 do begin
      Produtos_vendaTable.Close;
      VendaTable.Close;

      total_compra := 0;
      total_item := 0;
      tItens := 0;

      Label_valor.Caption := '';
      Label_total.Caption := '00.00';
      Label_nomeProd.Caption := 'Nome do Produto';
      Label_TItens.Caption := '0';
      Edit_codProd.Text := '';
      Edit_qtde.Text := '';

      showMessage('Venda efetuada com sucesso');
    end;
  end;

  if Key = VK_F4 then
  begin
    DataModule2.Produtos_vendaTable.Delete;
    total_compra:= 0;
    tItens:= 0;
    total_item:= 0;
    DataModule2.Produtos_vendaTable.ApplyUpdates(0);
  end;
end;

procedure TForm_venda.Image2Click(Sender: TObject);
begin
  close;
end;

end.
