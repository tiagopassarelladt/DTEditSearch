program Demo;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
