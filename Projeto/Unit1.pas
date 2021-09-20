unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Carrinho_1: TImage;
    Image1: TImage;
    Panel3: TPanel;
    Button1: TButton;
    Label2: TLabel;
    Edit_user: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Button3: TButton;
    Label_logado: TLabel;
    Edit_password: TMaskEdit;
    Label_logout: TLabel;
    Button2: TButton;
    Label_teste: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button4: TButton;
    Button5: TButton;
    Label6: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label_logoutClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit2, Unit6, Unit5, Unit7, Unit10, Unit8, Unit9, Unit12;

function verifica(usuario: String; senha: String; tipo: String):boolean;
begin
  with DataModule2 do begin
    FuncionarioTable.Close;
    FuncionarioTable.Params.ParamByName('login').AsString := usuario;
    FuncionarioTable.Params.ParamByName('senha').AsString := senha;
    FuncionarioTable.Params.ParamByName('tipo').AsString := tipo;
    FuncionarioTable.Open();

    if FuncionarioTable.FindFirst then begin
      result:= true;
    end else begin
      result:= false;
    end;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form_produtos.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RadioButton1.Checked then begin
        if verifica(Edit_user.Text,Edit_password.Text, 'GERENTE') then begin
          Button1.Enabled:= true;
          Button3.Enabled:= true;
          Button4.Enabled:= true;
          Button5.Enabled:= true;
          Button6.Enabled := true;
          Button7.Enabled := true;
          Button8.Enabled := true;

          Label_logado.Caption:= 'Logado';
          Label_logado.Font.Color:= clLime;
          Edit_user.Text:= '';
          Edit_password.Text:= '';
          Button2.Enabled:= false;
          Edit_user.Enabled:= false;
          Edit_password.Enabled:= false;

          Label_logout.Visible:= true;
          Label_logout.Enabled:= true;
          Label_teste.Font.Color:= clLime;
          Label_teste.Caption := 'Gerente: ' + DataModule2.FuncionarioTablenome.AsString;
        end else begin
          showMessage('Dados incorretos');
          Edit_user.SetFocus;
        end;
      end else
      if RadioButton2.Checked then begin
        if verifica(Edit_user.Text,Edit_password.Text, 'FUNCIONARIO') then begin
          Button1.Enabled:= false;
          Button3.Enabled:= true;
          Button4.Enabled:= false;
          Button5.Enabled:= false;
          Button6.Enabled := false;
          Button7.Enabled := false;
          Button8.Enabled := true;

          Label_logado.Caption:= 'Logado';
          Label_logado.Font.Color:= clLime;
          Edit_user.Text:= '';
          Edit_password.Text:= '';
          Button2.Enabled:= false;
          Edit_user.Enabled:= false;
          Edit_password.Enabled:= false;

          Label_logout.Visible:= true;
          Label_logout.Enabled:= true;
          Label_teste.Font.Color:= clLime;
          Label_teste.Caption := 'Funcionario: ' + DataModule2.FuncionarioTablenome.AsString;
        end else begin
          showMessage('Dados incorretos');
          Edit_user.SetFocus;
        end;
      end else begin
        ShowMessage('Selecione o tipo de usuario');
      end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Form_venda.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form_distribuidor.ShowModal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form6.showModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  with DataModule2 do begin
    CaixaTable.Last;
    CaixaTable.Edit;
    CaixaTablestatus.AsString := 'FECHADO';
    CaixaTable.Post;
    CaixaTable.ApplyUpdates(-1);
    CaixaTable.CommitUpdates;
    CaixaTable.Refresh;
    ShowMessage('O Caixa foi Fechado');
  end;
  Form1.Close;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form10.ShowModal;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Form12.QuickRep1.Preview;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1.Enabled:= false;
  Button3.Enabled:= false;
  Button5.Enabled := false;
  Button4.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;
  Button8.Enabled := false;
  Label_logout.Enabled:= false;
  Label_logout.Visible:= false;

  DataModule2.CaixaTable.Last;
  Label6.Caption := 'Saldo do Caixa: ' + DataModule2.CaixaTablevalorfechamento.AsString;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_RETURN then begin
      if RadioButton1.Checked then begin
        if verifica(Edit_user.Text,Edit_password.Text, 'GERENTE') then begin
          Button1.Enabled:= true;
          Button3.Enabled:= true;
          Button5.Enabled := true;
          Button4.Enabled := true;
          Button6.Enabled := true;
          Button7.Enabled := true;
          Button8.Enabled := true;

          Label_logado.Caption:= 'Logado';
          Label_logado.Font.Color:= clLime;
          Edit_user.Text:= '';
          Edit_password.Text:= '';
          Button2.Enabled:= false;
          Edit_user.Enabled:= false;
          Edit_password.Enabled:= false;
          Label_logout.Visible:= true;
          Label_logout.Enabled:= true;
          Label_teste.Font.Color:= clLime;
          Label_teste.Caption := 'Gerente: ' + DataModule2.FuncionarioTablenome.AsString;
        end else begin
          showMessage('Dados incorretos');
          Edit_user.SetFocus;
        end;
      end;

      if RadioButton2.Checked then begin
        if verifica(Edit_user.Text,Edit_password.Text, 'FUNCIONARIO') then begin
          Button1.Enabled:= true;
          Button3.Enabled:= true;
          Button5.Enabled := true;
          Button4.Enabled := true;
          Button6.Enabled := false;
          Button7.Enabled := false;
          Button8.Enabled := true;

          Label_logado.Caption:= 'Logado';
          Label_logado.Font.Color:= clLime;
          Edit_user.Text:= '';
          Edit_password.Text:= '';
          Button2.Enabled:= false;
          Edit_user.Enabled:= false;
          Edit_password.Enabled:= false;
          Label_logout.Visible:= true;
          Label_logout.Enabled:= true;
          Label_teste.Font.Color:= clLime;
          Label_teste.Caption := 'Funcionario: ' + DataModule2.FuncionarioTablenome.AsString;
        end else begin
          showMessage('Dados incorretos');
          Edit_user.SetFocus;
        end;
      end;

      if not RadioButton1.Checked or not RadioButton2.Checked then begin
        ShowMessage('Selecione o tipo de usuario');
      end;
    end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#27 then begin
    close;
  end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Label_logoutClick(Sender: TObject);
begin
  Button1.Enabled:= false;
  Button3.Enabled:= false;
  Button5.Enabled := false;
  Button4.Enabled := false;
  Button2.Enabled:= true;
  Button6.Enabled := false;
  Button7.Enabled := false;
  Button8.Enabled := false;
  Label_logado.Caption:= 'Não Logado';
  Label_logado.Font.Color:= clRed;
  Edit_user.Text:= '';
  Edit_password.Text:= '';
  Edit_user.Enabled:= true;
  Edit_password.Enabled:= true;
  Label_logout.Enabled:= false;
  Label_logout.Visible:= false;
  Label_teste.Caption:= 'Usuario';
end;

end.
