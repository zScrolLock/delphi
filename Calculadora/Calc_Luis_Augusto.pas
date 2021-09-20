unit Calc_Luis_Augusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TCalculadora = class(TForm)
    Tela: TEdit;
    Button_CE: TButton;
    Button_MR: TButton;
    Button_MPlus: TButton;
    Button_Multiplication: TButton;
    Button_Minus_Plus: TButton;
    Button_MMinus: TButton;
    Button_Division: TButton;
    Button_Minus: TButton;
    Button_Two: TButton;
    Button_One: TButton;
    Button_Nine: TButton;
    Button_Six: TButton;
    Button_Five: TButton;
    Button_Four: TButton;
    Button_Seven: TButton;
    Button_Eight: TButton;
    Button_Plus: TButton;
    Button_Three: TButton;
    Button_Zero: TButton;
    Button_Percent: TButton;
    Button_Equals: TButton;
    Button_C: TButton;
    Button_Comma: TButton;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Informaes1: TMenuItem;
    procedure Button_OneClick(Sender: TObject);
    procedure Button_PlusClick(Sender: TObject);
    procedure Button_EqualsClick(Sender: TObject);
    procedure Button_CClick(Sender: TObject);
    procedure Button_CommaClick(Sender: TObject);
    procedure Button_CEClick(Sender: TObject);
    procedure Button_MPlusClick(Sender: TObject);
    procedure Button_MMinusClick(Sender: TObject);
    procedure Button_MRClick(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
    procedure Button_Minus_PlusClick(Sender: TObject);
    procedure Button_PercentClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;
  memoria:real;
  operacao:string;
  delete:boolean;
  ponto:string;
  porcentagem:real;

implementation

{$R *.dfm}

uses Unit1;

procedure TCalculadora.Button_CClick(Sender: TObject);
begin
  memoria:= 0;
  tela.Text:= '0';
end;

procedure TCalculadora.Button_CEClick(Sender: TObject);
begin
  tela.Text:='';
end;

procedure TCalculadora.Button_CommaClick(Sender: TObject);
var
  num:string;
begin
  num:= tela.Text;
    if pos(',', num)=0 then begin
      ponto:=',';
    end;
end;

procedure TCalculadora.Button_EqualsClick(Sender: TObject);
var
  resultado:real;
  total: real;
begin
  resultado:= StrToFloat(tela.Text);

  if operacao='+' then begin
      total := memoria + resultado;
  end;
  if operacao='-' then begin
      total := memoria - resultado;
  end;
  if operacao='X' then begin
      total := memoria * resultado;
  end;
  if operacao='/' then begin
      total := memoria / resultado;
  end;
    tela.Text:=FloatToStr(total);

end;

procedure TCalculadora.Button_Minus_PlusClick(Sender: TObject);
var
  valortela:real;
begin
  valortela:= StrToFloat(tela.Text);
  valortela:= valortela * (-1);
  tela.Text:= FloatToStr(valortela);
end;

procedure TCalculadora.Button_MMinusClick(Sender: TObject);
var
  valortela:real;
begin
  valortela:= StrToFloat(tela.Text);
  memoria:= memoria - valortela;
end;

procedure TCalculadora.Button_MPlusClick(Sender: TObject);
var
  valortela:real;
begin
  valortela:= StrToFloat(tela.Text);
  memoria:= memoria + valortela;
end;

procedure TCalculadora.Button_MRClick(Sender: TObject);
begin
  tela.Text:= FloatToStr(memoria);
end;

procedure TCalculadora.Button_OneClick(Sender: TObject);
//Sender quem ativou o evento
var num:string;
//Definicao de variavel seguida com seu tipo
begin

  if tela.Text='0' then
    tela.Text:='';

  if delete then begin
    tela.Text :='';
    delete:= false;
  end;

  num:= (sender as TButton).Caption;
  tela.text:= tela.Text + ponto + num;
    if ponto=',' then
      ponto:='';
end;

procedure TCalculadora.Button_PercentClick(Sender: TObject);

begin

  if operacao='+' then begin
      porcentagem:= StrToFloat(tela.Text);
      porcentagem:= porcentagem/100;
      porcentagem:= porcentagem * memoria;
      tela.Text:= FloatToStr(porcentagem + memoria);
  end;

  if operacao='-' then begin
      porcentagem:= StrToFloat(tela.Text);
      porcentagem:= porcentagem/100;
      porcentagem:= porcentagem * memoria;
      tela.Text:= FloatToStr(porcentagem - memoria);

  end;

  if operacao='X' then begin
      porcentagem:= StrToFloat(tela.Text);
      porcentagem:= porcentagem/100;
      porcentagem:= porcentagem * memoria;
      tela.Text:= FloatToStr(porcentagem * memoria);

  end;

  if operacao='/' then begin
      porcentagem:= StrToFloat(tela.Text);
      porcentagem:= porcentagem/100;
      porcentagem:= porcentagem * memoria;
      tela.Text:= FloatToStr(porcentagem / memoria);

  end;



end;

procedure TCalculadora.Button_PlusClick(Sender: TObject);
begin
  delete:= true;
  memoria:= StrToFloat(tela.Text);
  operacao:= (sender as TButton).Caption;
end;

procedure TCalculadora.Informaes1Click(Sender: TObject);
begin
  info.ShowModal;
end;



end.
