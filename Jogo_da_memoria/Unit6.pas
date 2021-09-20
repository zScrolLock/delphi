unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm_registro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    procedure DBEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_registro: TForm_registro;

implementation

{$R *.dfm}

uses Unit5, Unit2;



procedure TForm_registro.DBEdit2Change(Sender: TObject);
begin
  DBEdit2.Text:= Unit2.tempoA;
end;

end.
