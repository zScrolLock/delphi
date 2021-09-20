program Project_forca;

uses
  Vcl.Forms,
  jogo_forca in 'jogo_forca.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
