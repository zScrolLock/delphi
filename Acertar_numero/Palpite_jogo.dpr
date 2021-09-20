program Palpite_jogo;

uses
  Vcl.Forms,
  Palpite in 'Palpite.pas' {Tela},
  info in 'info.pas' {form_info};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTela, Tela);
  Application.CreateForm(Tform_info, form_info);
  Application.Run;
end.
