program DemonstracaoSPED;

uses
  Forms,
  untSPEDPrincipal in 'untSPEDPrincipal.pas' {frmSpedPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSpedPrincipal, frmSpedPrincipal);
  Application.Run;
end.
