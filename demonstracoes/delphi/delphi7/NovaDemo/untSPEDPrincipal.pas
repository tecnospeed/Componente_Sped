unit untSPEDPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, SpedClientX_TLB, StdCtrls, ExtCtrls, ComCtrls, DateUtils,
  Buttons;

type
  TfrmSpedPrincipal = class(TForm)
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtDirArquivo: TEdit;
    edtDirConfiguracao: TEdit;
    edtDirErro: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtCNPJ: TEdit;
    edtToken: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    edtDataIni: TDateTimePicker;
    edtDataFim: TDateTimePicker;
    edtNomeArquivo: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    edtCNPJEmissor: TEdit;
    GroupBox4: TGroupBox;
    edtProtocolo: TEdit;
    Panel4: TPanel;
    Panel3: TPanel;
    sbPreencherComp: TSpeedButton;
    sbIniciarApuracao: TSpeedButton;
    pcProcessos: TPageControl;
    tsApuracao: TTabSheet;
    gbRetornoApuracao: TGroupBox;
    mmApuracao: TMemo;
    sbGerarTX2: TSpeedButton;
    tsTX2: TTabSheet;
    GroupBox5: TGroupBox;
    mmTX2: TMemo;
    sbEnviar: TSpeedButton;
    tsRetornoEnvio: TTabSheet;
    GroupBox6: TGroupBox;
    mmRetornoEnvio: TMemo;
    sbGerarApuracao: TSpeedButton;
    GroupBox7: TGroupBox;
    mmGerarApuracao: TMemo;
    GroupBox8: TGroupBox;
    mmConsultaApuracao: TMemo;
    sbConsultarApuracao: TSpeedButton;
    sbLimpar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbPreencherCompClick(Sender: TObject);
    procedure sbIniciarApuracaoClick(Sender: TObject);
    procedure sbGerarTX2Click(Sender: TObject);
    procedure sbEnviarClick(Sender: TObject);
    procedure sbGerarApuracaoClick(Sender: TObject);
    procedure sbConsultarApuracaoClick(Sender: TObject);
    procedure sbLimparClick(Sender: TObject);
  private
    procedure CarregarIniSPED;
    procedure Limpar;
    { Private declarations }
  public
    { Public declarations }
    vSpedFiscal : TspdSpedClientX;
    vArquivoIni : TIniFile;
    vPreenchido : Boolean;
    vApurado    : Boolean;
    vTX2OK      : Boolean;
    vEnviado    : Boolean;
  end;

var
  frmSpedPrincipal: TfrmSpedPrincipal;

implementation

{$R *.dfm}

{
** ERROS **
===============================================================================
== Arquivo de configurações não encontrado
=> Verificar DiretorioConfiguracao do TspdSpedClientX se esta no padrão 'C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\'
===============================================================================
== Houve um problema na autenticação temporária
=> Validar Token e CNPJ da software house
=> Verificar situação de pagamento do cliente
===============================================================================
}

procedure TfrmSpedPrincipal.CarregarIniSPED;
begin
  edtCNPJ.Text         := vArquivoIni.ReadString('PRINCIPAL','CNPJSH','');
  edtTOKEN.Text        := vArquivoIni.ReadString('PRINCIPAL','TOKENSH','');
  edtCNPJEmissor.Text  := vArquivoIni.ReadString('PRINCIPAL','CNPJEMISSOR','');

  edtDirArquivo.Text      := vArquivoIni.ReadString('DIRETORIOS','ARQUIVO','');
  edtDirConfiguracao.Text := vArquivoIni.ReadString('DIRETORIOS','CONFIGURACAO','');
  edtDirErro.Text         := vArquivoIni.ReadString('DIRETORIOS','ERRO','');
end;

procedure TfrmSpedPrincipal.Limpar;
begin
    vPreenchido := False;
    vApurado    := False;
    vTX2OK      := False;
    vEnviado    := False;
end;

procedure TfrmSpedPrincipal.FormCreate(Sender: TObject);
begin
  vSpedFiscal              := TspdSpedClientX.Create(nil);
  vArquivoIni              := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));

  frmSpedPrincipal.Caption := 'Demonstração SpedFiscal - TecnoSpeed';
end;

procedure TfrmSpedPrincipal.FormShow(Sender: TObject);
begin
  edtDataIni.DateTime := StartOfTheMonth(Date);
  edtDataFim.DateTime := EndOfTheMonth(Date);

  CarregarIniSPED;
end;

procedure TfrmSpedPrincipal.sbPreencherCompClick(Sender: TObject);
begin
  vPreenchido := False;
  try
    vSpedFiscal.ConfigurarSoftwareHouse(edtCNPJ.Text, edtTOKEN.Text); //PRIMEIRO PASSO DO COMPONENTE
    vSpedFiscal.NomeArquivo           := edtNomeArquivo.Text + '.txt';
    vSpedFiscal.DataInicio            := DateToStr(edtDataIni.Date);
    vSpedFiscal.DataFim               := DateToStr(edtDataFim.Date);
    vSpedFiscal.CnpjEmissor           := edtCNPJEmissor.Text;
    vSpedFiscal.DiretorioArquivo      := edtDirArquivo.Text;
    vSpedFiscal.DiretorioConfiguracao := edtDirConfiguracao.Text;

    ShowMessage('Configurado com sucesso.');

    vPreenchido := True;
  except
    on e : exception do
     showmessage('Ocorreu o seguinte erro: '+ e.message);
  end;
end;

procedure TfrmSpedPrincipal.sbIniciarApuracaoClick(Sender: TObject);
var
  vApuracao: IspdApuracao;
  vRetApuracao: IspdRetIniciarApuracao;
begin
  vApurado := False;
  try
    if not vPreenchido then
    begin
      ShowMessage('Favor preencher componente primeiro.');
      Exit;
    end;

    vRetApuracao := vSpedFiscal.IniciarApuracao();

    edtProtocolo.Text := vRetApuracao.Protocolo;

    mmApuracao.Lines.Clear;
    mmApuracao.Lines.Add('   Protocolo: ' + vRetApuracao.Protocolo);
    mmApuracao.Lines.Add('   Mensagem: ' + vRetApuracao.Mensagem);
    
    ShowMessage('Apurado com sucesso.');
    vApurado := True;
    pcProcessos.ActivePage := tsApuracao;
  except
    on e : exception do
     showmessage('Ocorreu o seguinte erro: '+ e.message);
  end;
end;

procedure TfrmSpedPrincipal.sbGerarTX2Click(Sender: TObject);
begin
  try
    mmTX2.Lines.Clear;
    mmTX2.Lines.Add('INCLUIR0000');
    mmTX2.Lines.Add('COD_VER_1=012');
    mmTX2.Lines.Add('COD_FIN_2=0');
    mmTX2.Lines.Add('DT_INI_3='+FormatDateTime('ddmmyyyy',edtDataIni.DateTime));
    mmTX2.Lines.Add('DT_FIN_4='+FormatDateTime('ddmmyyyy',edtDataFim.DateTime));
    mmTX2.Lines.Add('NOME_5=TECNOSPEED SA');
    mmTX2.Lines.Add('CNPJ_6=08187168000160');
    mmTX2.Lines.Add('CPF_7=');
    mmTX2.Lines.Add('UF_8=PR');
    mmTX2.Lines.Add('IE_9=9044016688');
    mmTX2.Lines.Add('COD_MUN_10=4314902');
    mmTX2.Lines.Add('IM_11=');
    mmTX2.Lines.Add('SUFRAMA_12=');
    mmTX2.Lines.Add('IND_PERFIL_13=A');
    mmTX2.Lines.Add('IND_ATIV_14=1');
    mmTX2.Lines.Add('SALVAR0000');

    pcProcessos.ActivePage := tsTX2;
  finally
    vTX2OK := True;
  end;
end;

procedure TfrmSpedPrincipal.sbEnviarClick(Sender: TObject);
var
  vRetEnvioRegistro: IspdRetEnviarRegistros;
begin
  try
    if vEnviado then
    begin
      ShowMessage('TX2 já enviado.');
      Exit;
    end;

    if not vApurado then
    begin
      ShowMessage('Favor iniciar apuração para o envio.');
      Exit;
    end;

    if not vTX2OK then
    begin
      ShowMessage('Favor gerar o TX2 para envio.');
      Exit;
    end;

    vRetEnvioRegistro := vSpedFiscal.EnviarRegistros(edtProtocolo.Text, mmTX2.Text);

    mmRetornoEnvio.Lines.Clear;
    mmRetornoEnvio.Lines.Add('   Protocolo: ' + vRetEnvioRegistro.Protocolo);
    mmRetornoEnvio.Lines.Add('   Mensagem: ' + vRetEnvioRegistro.Mensagem);

    ShowMessage('Enviado com sucesso.');
    vEnviado := True;
    pcProcessos.ActivePage := tsRetornoEnvio;
  except
    on e : exception do
     showmessage('Ocorreu o seguinte erro: '+ e.message);
  end;
end;

procedure TfrmSpedPrincipal.sbGerarApuracaoClick(Sender: TObject);
var
  vRetGerarApuracao: IspdRetGerarApuracao;
begin
  try
    if not vEnviado then
    begin
      ShowMessage('Favor fazer o envio.');
      Exit;
    end;

    vRetGerarApuracao := vSpedFiscal.GerarApuracao(edtProtocolo.Text);
    mmGerarApuracao.Lines.Clear;
    mmGerarApuracao.Lines.Add('   Protocolo: ' + vRetGerarApuracao.Protocolo);
    mmGerarApuracao.Lines.Add('   Mensagem: ' + vRetGerarApuracao.Mensagem);

    ShowMessage('Apuração gerada com sucesso.');
    pcProcessos.ActivePage := tsApuracao;
  except
    on e : exception do
     showmessage('Ocorreu o seguinte erro: '+ e.message);
  end;
end;

procedure TfrmSpedPrincipal.sbConsultarApuracaoClick(Sender: TObject);
var
  vRetConsultarApuracao: IspdRetConsultarApuracao;
begin
  try
    if not vEnviado then
    begin
      ShowMessage('Favor fazer o envio.');
      Exit;
    end;

    vRetConsultarApuracao := vSpedFiscal.ConsultarApuracao(edtProtocolo.Text, vSpedFiscal.DiretorioArquivo);
    mmConsultaApuracao.Lines.Clear;
    mmConsultaApuracao.Lines.Add('   Protocolo: ' + vRetConsultarApuracao.Protocolo);
    mmConsultaApuracao.Lines.Add('   Mensagem: ' + vRetConsultarApuracao.Mensagem);
    mmConsultaApuracao.Lines.Add('   Nome do Arquivo: ' + vRetConsultarApuracao.NomeArquivo);
    mmConsultaApuracao.Lines.Add('   Código: ' + vRetConsultarApuracao.Codigo);

    ShowMessage('Apuração consultada com sucesso.');
    pcProcessos.ActivePage := tsApuracao;
  except
    on e : exception do
     showmessage('Ocorreu o seguinte erro: '+ e.message);
  end;

end;

procedure TfrmSpedPrincipal.sbLimparClick(Sender: TObject);
begin
  Limpar;
  mmApuracao.Lines.Clear;
  mmTX2.Lines.Clear;
  mmRetornoEnvio.Lines.Clear;
  mmGerarApuracao.Lines.Clear;
  mmConsultaApuracao.Lines.Clear;

  CarregarIniSPED; 
end;

end.
