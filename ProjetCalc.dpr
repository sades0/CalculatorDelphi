program ProjetCalc;

uses
  Vcl.Forms,
  Calculadora in 'Calculadora.pas' {TCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTCalculadora, TCalculadora);
  Application.Run;
end.
