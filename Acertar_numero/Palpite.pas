unit Palpite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TTela = class(TForm)
    Label_pense: TLabel;
    Label_chance: TLabel;
    Iniciar_Button: TButton;
    Label_palpite: TLabel;
    Edit_palpite: TEdit;
    confere_Button: TButton;
    Image1: TImage;
    Label_achou: TLabel;
    Label_quase: TLabel;
    finalizar_Button: TButton;
    Label_tentativa: TLabel;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Informaes1: TMenuItem;
    procedure Iniciar_ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure confere_ButtonClick(Sender: TObject);
    procedure finalizar_ButtonClick(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tela: TTela;
  num_sorteado:Integer;
  erro:Integer;
  achou:boolean;

implementation

{$R *.dfm}

uses info;

procedure TTela.confere_ButtonClick(Sender: TObject);
var
  num:Integer;

begin
  achou:= false;
  num:= StrToInt(Edit_palpite.Text);
  Edit_palpite.Text:= '';

  if num=num_sorteado then begin
    achou:= true;
    finalizar_Button.Visible:= true;
    Label_quase.Caption:= 'Você Acertou !!!';
    Label_achou.Visible:= true;
    Label_achou.Caption:= Label_achou.Caption + IntToStr(num_sorteado);
    Edit_palpite.Enabled:= false;
    confere_Button.Enabled:= false;
  end;

  if (num+3=num_sorteado) or (num-3=num_sorteado) then begin
    Label_quase.Visible:= true;
    Label_quase.Caption:= Label_quase.Caption + ' ';
  end;

  if (num+5=num_sorteado) or (num-5=num_sorteado) then begin
    Label_quase.Visible:= true;
    Label_quase.Caption:= Label_quase.Caption + ' ';
  end;

  if (num+10=num_sorteado) or (num-10=num_sorteado) then begin
    Label_quase.Visible:= true;
    Label_quase.Caption:= Label_quase.Caption + ' ';
  end;

  if (not achou) then begin
    inc(erro);
      if erro=5 then begin
        finalizar_Button.Visible:= true;
        Label_achou.Visible:= true;
        Label_achou.Caption:= Label_achou.Caption + IntToStr(num_sorteado);
        Label_quase.Visible:= true;
        Label_quase.Caption:= 'Você perdeu !!!';
        Edit_palpite.Enabled:= false;
        confere_Button.Enabled:= false;
      end;
    Label_tentativa.Caption:= Label_tentativa.Caption + IntToStr(erro);
  end;
end;

procedure TTela.finalizar_ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TTela.FormCreate(Sender: TObject);
begin
  finalizar_Button.Visible:= false;
  Label_achou.Visible:= false;
  Label_quase.Visible:= false;
  Edit_palpite.Enabled:= false;
  confere_Button.Enabled:= false;
  Label_achou.Caption:= Label_achou.Caption + IntToStr(num_sorteado);
end;

procedure TTela.Informaes1Click(Sender: TObject);
begin
  form_info.showModal;
end;

procedure TTela.Iniciar_ButtonClick(Sender: TObject);
begin
  randomize;
  num_sorteado:= random(49)+1;
  Edit_palpite.Enabled:= true;
  confere_Button.Enabled:= true;
  Edit_palpite.Text:= '';

  //Teste para conferir se o numero esta sendo randomizado
  //confere_Button.Caption:= IntToStr(num_sorteado);

  erro:= 0;
end;

end.
