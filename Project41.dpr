program Project41;

uses
  Vcl.Forms,
  Python_teste in 'Python_teste.pas' {frmPython};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPython, frmPython);
  Application.Run;
end.
