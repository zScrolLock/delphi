unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm_distribuidor = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_distribuidor: TForm_distribuidor;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm_distribuidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_F2 then begin
    DataModule2.DistribuidorTable.Append;
  end;

  if key=VK_F3 then begin

    if RadioButton1.Checked then begin
      DataModule2.DistribuidorTabletipo.AsString := 'ALIMENTICIO';
    end;
    if RadioButton2.Checked then begin
       DataModule2.DistribuidorTabletipo.AsString := 'EMBALAGENS';
    end;
    if RadioButton3.Checked then begin
      DataModule2.DistribuidorTabletipo.AsString := 'GERAL';
    end;

    DataModule2.DistribuidorTable.ApplyUpdates(0);
  end;

  if key=VK_F4 then begin
    DataModule2.DistribuidorTable.Delete;
    DataModule2.DistribuidorTable.ApplyUpdates(0);
  end;
end;


procedure TForm_distribuidor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    close;
  end;
end;

end.
