unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm7.Button1Click(Sender: TObject);
begin
  with DataModule2 do begin
    CaixaTable.Append;

    CaixaTabledataCaixa.AsDateTime := Date();
    CaixaTablevalorabertura.AsFloat := StrToFloat(Edit1.Text);
    CaixaTablevalorfechamento.AsFloat := StrToFloat(Edit1.Text);
    CaixaTablestatus.AsString := 'ABERTO';

    DataModule2.CaixaTable.ApplyUpdates(-1);
    DataModule2.CaixaTable.CommitUpdates;
    DataModule2.CaixaTable.Refresh;
    Form1.ShowModal;
    close;
  end;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  with DataModule2 do begin
  CaixaTable.Last;

    if CaixaTablestatus.AsString = 'ABERTO' then begin
      Form1.ShowModal;
      Form7.close;
    end;
  end;
end;

end.
