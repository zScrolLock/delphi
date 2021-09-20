unit jogo_forca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Forca_img: TImage;
    Boneco_img: TImage;
    Label_procuradas: TLabel;
    Label_selecao: TLabel;
    Palavra_edit: TEdit;
    Procurar_Button: TButton;
    Label_Digitadas: TLabel;
    Label_palavra: TLabel;
    aviso: TLabel;
    Iniciar_Button: TButton;
    Finalizar_Button: TButton;
    procedure FormShow(Sender: TObject);
    procedure Iniciar_ButtonClick(Sender: TObject);
    procedure Procurar_ButtonClick(Sender: TObject);
    procedure Finalizar_ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
    coord = record
      x:integer;
      y:integer;
    end;

var
  Form1: TForm1;
  palavras:array[1..10] of string;
  sorteada:string;
  erro:integer;
  posicao:array[1..5] of coord;

implementation

{$R *.dfm}

procedure TForm1.Finalizar_ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Label_palavra.Caption:='';
  aviso.Visible:=false;
  Label_Digitadas.Caption:='';
  Procurar_Button.Enabled:= false;
  Palavra_edit.Enabled:= false;

  palavras[1]:='AMARELO';
  palavras[2]:='AZUL';
  palavras[3]:='VERMELHO';
  palavras[4]:='PRETO';
  palavras[5]:='BRANCO';
  palavras[6]:='LILAS';
  palavras[7]:='ROXO';
  palavras[8]:='CINZA';
  palavras[9]:='VERDE';
  palavras[10]:='PRATA';

  posicao[1].x:= 672;
  posicao[1].y:= 232;

  posicao[2].x:= 536;
  posicao[2].y:= 232;

  posicao[3].x:= 376;
  posicao[3].y:= 232;

  posicao[4].x:= 168;
  posicao[4].y:= 208;

  posicao[5].x:= 168;
  posicao[5].y:= 120;

end;

procedure TForm1.Iniciar_ButtonClick(Sender: TObject);
begin
  randomize;
  sorteada:= palavras[random(9)+1];
  Label_palavra.Caption:= StringOfChar('*', sorteada.Length);
  Label_Digitadas.Caption:= '';
  aviso.Visible:= false;
  aviso.Caption:='Voce morreu... !!!';
  Iniciar_Button.Caption:= sorteada;

  Boneco_img.Left:= 736;
  Boneco_img.Top:= 232;

  Palavra_edit.Enabled:= true;
  Palavra_edit.SetFocus;
  Palavra_edit.SelectAll;

  Procurar_Button.Enabled:= true;

  erro:=0;
end;

procedure TForm1.Procurar_ButtonClick(Sender: TObject);
var
  p:string;
  l:string;
  d:string;
  achou:boolean;
  I: Integer;

begin
  achou:= false;
  p:= Label_Palavra.Caption;
  l:= Palavra_edit.Text;
  d:= Label_Digitadas.Caption;

  if (pos(l,d)=0) and (pos('*',p)<>0) then begin

   for I := 1 to sorteada.Length do begin
        if sorteada[i] = Palavra_edit.Text then begin
           p[i]:= l[1];
           achou:= true;
        end;
   end;
   Label_palavra.Caption:= p;
   Palavra_edit.SetFocus;
   Palavra_edit.SelectAll;
   Label_Digitadas.Caption:= Label_Digitadas.Caption + Palavra_edit.Text + ' ';

  end;

  if (not achou) and (pos(l,d)=0) then begin
    inc(erro);
    Boneco_img.Top:= posicao[erro].y;
    Boneco_img.Left:= posicao[erro].x;

      if erro=5 then begin
        Palavra_edit.Enabled:= false;
        Procurar_Button.Enabled:= false;
        aviso.Visible:= true;
      end;
  end;

  if pos('*',p)=0 then begin
    Palavra_edit.Enabled:= false;
    Procurar_Button.Enabled:=false;
    aviso.Caption:= 'Parabens.. voce ganhou';
    aviso.Visible:= true;
  end;



end;

end.
