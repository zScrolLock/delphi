unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Informaes1: TMenuItem;
    Regras1: TMenuItem;
    Button1: TButton;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
    procedure Regras1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit7;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form_1.showModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form7.showModal;
end;

procedure TForm1.Informaes1Click(Sender: TObject);
begin
  Form_info.ShowModal;
end;

procedure TForm1.Regras1Click(Sender: TObject);
begin
  Form_regras.ShowModal;
end;

end.
