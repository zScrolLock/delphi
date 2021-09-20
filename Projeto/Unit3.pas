unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TForm_produtos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_produtos: TForm_produtos;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm_produtos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //F2, F3, F4...etc
  if key=VK_F2 then begin
    DataModule2.ProdutoTable.Append;
  end;

  if key=VK_F3 then begin
    DataModule2.ProdutoTablequantidademin.AsInteger := 3;
    DataModule2.ProdutoTablestatus.AsString := 'DISPONIVEL';

    if RadioButton1.Checked then begin
      DataModule2.ProdutoTabletipo.AsString := 'ALIMENTICIO';
    end;
    if RadioButton2.Checked then begin
       DataModule2.ProdutoTabletipo.AsString := 'EMBALAGENS';
    end;
    if RadioButton3.Checked then begin
      DataModule2.ProdutoTabletipo.AsString := 'GERAL';
    end;

    DataModule2.ProdutoTable.ApplyUpdates(-1);
    DataModule2.ProdutoTable.CommitUpdates;
    DataModule2.ProdutoTable.Refresh;
  end;

  if key=VK_F4 then begin
    DataModule2.ProdutoTable.Delete;
    DataModule2.ProdutoTable.ApplyUpdates(-1);
    DataModule2.ProdutoTable.CommitUpdates;
    DataModule2.ProdutoTable.Refresh;
  end;
end;

procedure TForm_produtos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    close;
  end;
end;

procedure TForm_produtos.Image1Click(Sender: TObject);
begin
  close;
end;

end.
