program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form_1},
  Unit3 in 'Unit3.pas' {Form_info},
  Unit4 in 'Unit4.pas' {Form_regras},
  Unit5 in 'Unit5.pas' {DataModule5: TDataModule},
  Unit6 in 'Unit6.pas' {Form_registro},
  Unit7 in 'Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_1, Form_1);
  Application.CreateForm(TForm_info, Form_info);
  Application.CreateForm(TForm_regras, Form_regras);
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TForm_registro, Form_registro);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
