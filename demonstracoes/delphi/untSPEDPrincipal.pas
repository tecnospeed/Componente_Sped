unit untSPEDPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, SpedClientX_TLB, StdCtrls, ExtCtrls, ComCtrls, DateUtils,
  Buttons, FileCtrl;

type
  TfrmSpedPrincipal = class(TForm)
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edtDirArquivo: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    edtCNPJEmissor: TEdit;
    GroupBox4: TGroupBox;
    edtProtocolo: TEdit;
    edtDataIni: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    edtDataFim: TDateTimePicker;
    Label7: TLabel;
    edtNomeArquivo: TEdit;
    edtCNPJ: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtToken: TEdit;
    pcProcessos: TPageControl;
    tsApuracao: TTabSheet;
    gbRetornoApuracao: TGroupBox;
    mmApuracao: TMemo;
    GroupBox7: TGroupBox;
    mmGerarApuracao: TMemo;
    GroupBox8: TGroupBox;
    mmConsultaApuracao: TMemo;
    tsTX2: TTabSheet;
    GroupBox5: TGroupBox;
    mmTX2: TMemo;
    tsRetornoEnvio: TTabSheet;
    GroupBox6: TGroupBox;
    mmRetornoEnvio: TMemo;
    Panel3: TPanel;
    sbPreencherComp: TSpeedButton;
    sbIniciarApuracao: TSpeedButton;
    sbGerarTX2: TSpeedButton;
    sbEnviar: TSpeedButton;
    sbGerarApuracao: TSpeedButton;
    sbConsultarApuracao: TSpeedButton;
    Label5: TLabel;
    edtDirRetorno: TEdit;
    btnDirConfig: TButton;
    btnDirRetorno: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbPreencherCompClick(Sender: TObject);
    procedure sbIniciarApuracaoClick(Sender: TObject);
    procedure sbGerarTX2Click(Sender: TObject);
    procedure sbEnviarClick(Sender: TObject);
    procedure sbGerarApuracaoClick(Sender: TObject);
    procedure sbConsultarApuracaoClick(Sender: TObject);
    procedure sbLimparClick(Sender: TObject);
    procedure btnDirConfigClick(Sender: TObject);
    procedure btnDirRetornoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure Limpar;
    { Private declarations }
  public
    { Public declarations }
    vSpedFiscal : TspdSpedClientX;
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


procedure TfrmSpedPrincipal.Limpar;
begin
end;

procedure TfrmSpedPrincipal.FormCreate(Sender: TObject);
var
  dirRetorno : String;
begin
  vSpedFiscal              := TspdSpedClientX.Create(nil);

  frmSpedPrincipal.Caption := 'Demonstração SpedFiscal - TecnoSpeed';

  dirRetorno               := ExtractFileDir(ExtractFilePath(Application.ExeName)) + '\Retorno\';

  if not DirectoryExists(dirRetorno) then
    ForceDirectories(dirRetorno);
  edtDirRetorno.text  := dirRetorno;
end;

procedure TfrmSpedPrincipal.FormShow(Sender: TObject);
begin
  edtDataIni.DateTime := StartOfTheMonth(Date - 30);
  edtDataFim.DateTime := EndOfTheMonth(Date - 30);

  edtNomeArquivo.Text := FormatDateTime('yyyy-mm',edtDataIni.DateTime) + '_SPED-FISCAL';
end;

procedure TfrmSpedPrincipal.sbPreencherCompClick(Sender: TObject);
begin
  try
    vSpedFiscal.ConfigurarSoftwareHouse(edtCNPJ.Text, edtTOKEN.Text); //PRIMEIRO PASSO DO COMPONENTE
    vSpedFiscal.NomeArquivo           := edtNomeArquivo.Text + '.txt';
    vSpedFiscal.DataInicio            := DateToStr(edtDataIni.Date);
    vSpedFiscal.DataFim               := DateToStr(edtDataFim.Date);
    vSpedFiscal.CnpjEmissor           := edtCNPJEmissor.Text;
    vSpedFiscal.DiretorioArquivo      := edtDirRetorno.Text;
    vSpedFiscal.DiretorioConfiguracao := edtDirArquivo.Text;

    ShowMessage('Componente Configurado com sucesso.');

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
  try
    vRetApuracao := vSpedFiscal.IniciarApuracao();

    edtProtocolo.Text := vRetApuracao.Protocolo;

    mmApuracao.Lines.Clear;
    mmApuracao.Lines.Add('   Protocolo: ' + vRetApuracao.Protocolo);
    mmApuracao.Lines.Add('   Mensagem: ' + vRetApuracao.Mensagem);

    ShowMessage('Criada uma nova Apuração com sucesso, e preenchido no campo protocolo.');
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
  end;
end;

procedure TfrmSpedPrincipal.sbEnviarClick(Sender: TObject);
var
  vRetEnvioRegistro: IspdRetEnviarRegistros;
begin
  try

    vRetEnvioRegistro := vSpedFiscal.EnviarRegistros(edtProtocolo.Text, mmTX2.Text);

    mmRetornoEnvio.Lines.Clear;
    mmRetornoEnvio.Lines.Add('   Protocolo: ' + vRetEnvioRegistro.Protocolo);
    mmRetornoEnvio.Lines.Add('   Mensagem: ' + vRetEnvioRegistro.Mensagem);

    ShowMessage('Registros adicionados a apuração.');
    pcProcessos.ActivePage := tsRetornoEnvio;

    mmTX2.Clear;
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

    vRetGerarApuracao := vSpedFiscal.GerarApuracao(edtProtocolo.Text);
    mmGerarApuracao.Lines.Clear;
    mmGerarApuracao.Lines.Add('   Protocolo: ' + vRetGerarApuracao.Protocolo);
    mmGerarApuracao.Lines.Add('   Mensagem: ' + vRetGerarApuracao.Mensagem);

    ShowMessage('Iniciado o processamento da apuração, consulte a apuração para fazer o download do arquivo e dos erros.');
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
end;

procedure TfrmSpedPrincipal.btnDirConfigClick(Sender: TObject);
var
  selDir : string;
begin
  selDir := edtDirArquivo.Text;
  if SelectDirectory(selDir, [], 0) then
    edtDirArquivo.Text := selDir + '\';
end;

procedure TfrmSpedPrincipal.btnDirRetornoClick(Sender: TObject);
var
  selDir : string;
begin
  selDir := edtDirRetorno.Text;
  if SelectDirectory(selDir, [], 0) then
    edtDirRetorno.Text := selDir + '\';
end;

procedure TfrmSpedPrincipal.Button1Click(Sender: TObject);
begin
  Limpar;
  mmApuracao.Lines.Clear;
  mmTX2.Lines.Clear;
  mmRetornoEnvio.Lines.Clear;
  mmGerarApuracao.Lines.Clear;
  mmConsultaApuracao.Lines.Clear;
end;

end.
