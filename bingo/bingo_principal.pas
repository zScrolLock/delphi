unit bingo_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape70: TShape;
    Shape71: TShape;
    Shape72: TShape;
    Shape73: TShape;
    Shape74: TShape;
    Shape75: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Button1: TButton;
    Shape76: TShape;
    Label_Atual: TLabel;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Informaes1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bolinhas: array[1..75] of TShape;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm1.Button1Click(Sender: TObject);
var
  x: integer;
begin
    randomize;
    x:=random(75)+1;
    bolinhas[x].Brush.Color:= clRed;
    Label_Atual.Caption:= IntToStr(x);
      if x = 50 then begin
        Form_skol.ShowModal;
      end;

      if x = 36 then begin
        Form_yoki.ShowModal;
      end;

      if x = 70 then begin
        Form_antartica.ShowModal;
      end;

      if x = 15 then begin
        Form_friboi.ShowModal;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Button1.Enabled:= true;
  Button1.Visible:= true;
  Button2.Visible:= false;
  Button2.Enabled:= false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1.Enabled:= false;
  Button1.Visible:= false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  bolinhas[1]:=Shape1;
  bolinhas[2]:=Shape2;
  bolinhas[3]:=Shape3;
  bolinhas[4]:=Shape4;
  bolinhas[5]:=Shape5;
  bolinhas[6]:=Shape6;
  bolinhas[7]:=Shape7;
  bolinhas[8]:=Shape8;
  bolinhas[9]:=Shape9;
  bolinhas[10]:=Shape10;
  bolinhas[11]:=Shape11;
  bolinhas[12]:=Shape12;
  bolinhas[13]:=Shape13;
  bolinhas[14]:=Shape14;
  bolinhas[15]:=Shape15;
  bolinhas[16]:=Shape16;
  bolinhas[17]:=Shape17;
  bolinhas[18]:=Shape18;
  bolinhas[19]:=Shape19;
  bolinhas[20]:=Shape20;
  bolinhas[21]:=Shape21;
  bolinhas[22]:=Shape22;
  bolinhas[23]:=Shape23;
  bolinhas[24]:=Shape24;
  bolinhas[25]:=Shape25;
  bolinhas[26]:=Shape26;
  bolinhas[27]:=Shape27;
  bolinhas[28]:=Shape28;
  bolinhas[29]:=Shape29;
  bolinhas[30]:=Shape30;
  bolinhas[31]:=Shape31;
  bolinhas[32]:=Shape32;
  bolinhas[33]:=Shape33;
  bolinhas[34]:=Shape34;
  bolinhas[35]:=Shape35;
  bolinhas[36]:=Shape36;
  bolinhas[37]:=Shape37;
  bolinhas[38]:=Shape38;
  bolinhas[39]:=Shape39;
  bolinhas[40]:=Shape40;
  bolinhas[41]:=Shape41;
  bolinhas[42]:=Shape42;
  bolinhas[43]:=Shape43;
  bolinhas[44]:=Shape44;
  bolinhas[45]:=Shape45;
  bolinhas[46]:=Shape46;
  bolinhas[47]:=Shape47;
  bolinhas[48]:=Shape48;
  bolinhas[49]:=Shape49;
  bolinhas[50]:=Shape50;
  bolinhas[51]:=Shape51;
  bolinhas[52]:=Shape52;
  bolinhas[53]:=Shape53;
  bolinhas[54]:=Shape54;
  bolinhas[55]:=Shape55;
  bolinhas[56]:=Shape56;
  bolinhas[57]:=Shape57;
  bolinhas[58]:=Shape58;
  bolinhas[59]:=Shape59;
  bolinhas[60]:=Shape60;
  bolinhas[61]:=Shape61;
  bolinhas[62]:=Shape62;
  bolinhas[63]:=Shape63;
  bolinhas[64]:=Shape64;
  bolinhas[65]:=Shape65;
  bolinhas[66]:=Shape66;
  bolinhas[67]:=Shape67;
  bolinhas[68]:=Shape68;
  bolinhas[69]:=Shape69;
  bolinhas[70]:=Shape70;
  bolinhas[71]:=Shape71;
  bolinhas[72]:=Shape72;
  bolinhas[73]:=Shape73;
  bolinhas[74]:=Shape74;
  bolinhas[75]:=Shape75;

end;

procedure TForm1.Informaes1Click(Sender: TObject);
begin
  Form_Info.showModal;
end;

end.
