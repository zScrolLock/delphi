program Projeto_calculadora;

uses
  Vcl.Forms,
  Calc_Luis_Augusto in 'Calc_Luis_Augusto.pas' {Calculadora},
  Vcl.Themes,
  Vcl.Styles,
  Unit1 in 'Unit1.pas' {Info};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalculadora, Calculadora);
  Application.CreateForm(TInfo, Info);
  Application.Run;
end.
