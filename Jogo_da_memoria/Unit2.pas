unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TForm_1 = class(TForm)
    GridPanel1: TGridPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type click = record
       clicado:timage;
       tag:integer;
  end;

var
  Form_1: TForm_1;
  figuras:array[1..20] of string;
  imagens:array[1..20] of timage;
  clicado:array[1..20] of click;
  indice:integer;
  inicio: tdatetime;
  tempoA:string;

implementation

{$R *.dfm}

uses Unit5, Unit6;

procedure atribuir;
var x,conta,posicao:integer;
    clinha,dezena:string;
    i:integer;
begin
    randomize;
    clinha:='';
    conta:= 0;
    while true do begin
      x:=random(20)+1;
      if pos(formatFloat('00',x),clinha)=0 then begin
        clinha:=clinha+formatfloat('00',x)+' ';
        inc(conta);
      end;
      if conta>= 20 then
        break;

    end;

    clinha:= trim(clinha);

    posicao:= 1;
    for i := 1 to 20 do begin
      dezena:=copy(clinha,posicao,2);
      imagens[i].Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\im' + dezena[2] + '.png');
      imagens[i].Tag:= StrToInt(dezena[2]);
      imagens[i].Enabled:= true;
      inc(posicao,3);
    end;
    indice:=0;
end;

procedure TForm_1.Button1Click(Sender: TObject);
begin
  atribuir;
  label1.Visible:=true;
  timer1.Enabled:=true;
  timer2.Enabled:=true;
  inicio:=time;
  button1.Enabled:= false;
  indice:= 0;
end;

procedure TForm_1.Button2Click(Sender: TObject);
begin
  Button1.Enabled:= true;
  close;
end;

procedure TForm_1.FormShow(Sender: TObject);
var
  i:integer;
  contador:integer;
begin
  label1.Visible:= false;
  contador:= 0;
  for i := 0 to ComponentCount-1 do begin
    if (Components[i] is timage) then begin
      inc(contador);
      (Components[i] as timage).Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\figX.png');
      (Components[i] as timage).Transparent:= true;
      (Components[i] as timage).OnClick:= Image1Click;
      (Components[i] as timage).Stretch:= true;
      (Components[i] as timage).Enabled:= false;
      imagens[contador]:=(Components[i] as timage);
    end;
      indice:=0;
  end;
end;

function acabou():boolean;
var volta:boolean;
    i:integer;
begin
  volta:= false;
  for I := 1 to 20 do begin
    if imagens[i].Visible then
      volta:= true;
  end;
    result:= volta;
end;

procedure TForm_1.Image1Click(Sender: TObject);
var x:integer;
    cnome:string;
  i: Integer;
begin
  inc(indice);
  if indice=3 then
     indice:= 1;

  x:=(sender as timage).Tag;
  cnome:='E:\Projetos RAD Studio\Jogo_da_memoria\imagens\im' + IntToStr(x) + '.png';
  (sender as timage).Picture.LoadFromFile(cnome);

  clicado[indice].clicado:=(sender as timage);
  clicado[indice].tag:=x;
  application.ProcessMessages;

  if indice=2 then begin
    if clicado[1].tag=clicado[2].tag then begin
        sleep(2000);
        clicado[1].clicado.Visible:= false;
        clicado[2].clicado.Visible:= false;
    end else begin
        sleep(2000);
        clicado[1].clicado.Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\figX.png');
        clicado[2].clicado.Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\figX.png');
    end;
  end;

  if not acabou() then begin
    timer2.Enabled:= false;
    tempoA:= TimeToStr(time-inicio);
    //Abrir unit para gravar dados
    Form_registro.ShowModal;

    for i := 1 to 20 do begin
      imagens[i].Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\figX.png');
      imagens[i].Visible:= true;
      imagens[i].Enabled:= false;
    end;
  end;

end;

procedure TForm_1.Timer1Timer(Sender: TObject);
var i:integer;
begin
  timer1.Enabled:=false;
  for i := 1 to 20 do begin
    imagens[i].Picture.LoadFromFile('E:\Projetos RAD Studio\Jogo_da_memoria\imagens\figX.png');
  end;
end;

procedure TForm_1.Timer2Timer(Sender: TObject);
begin
  label1.Caption:= 'Tempo: ' + TimeToStr(time-inicio);
end;

end.
