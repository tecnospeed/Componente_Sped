program DemoSpedFiscal;

uses
  Vcl.Forms,
  uDemoSpedFiscal in 'uDemoSpedFiscal.pas' {Form1},
  DemoSpedFiscal_TLB in 'DemoSpedFiscal_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
