program Project1;

uses
  Vcl.Forms,
  bingo_principal in 'bingo_principal.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form_friboi},
  Unit3 in 'Unit3.pas' {Form_antartica},
  Unit4 in 'Unit4.pas' {Form_yoki},
  Unit5 in 'Unit5.pas' {Form_skol},
  Unit6 in 'Unit6.pas' {Form_Info};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_friboi, Form_friboi);
  Application.CreateForm(TForm_antartica, Form_antartica);
  Application.CreateForm(TForm_yoki, Form_yoki);
  Application.CreateForm(TForm_skol, Form_skol);
  Application.CreateForm(TForm_Info, Form_Info);
  Application.Run;
end.
