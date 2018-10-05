<%
	'Instanciando o componente no projeto: 
	Set Sped = Server.CreateObject("SpedClientX.spdSpedClientX")
	
	response.Write("Componente Sped Tecnospeed TI") %> <br> <br>  <%
	'-----------------------------------------------------------------------------------------------------------

	'>> 1- Configurando os Componente:
	
	Sped.DiretorioArquivo = "C:\IIS\DemoIis\Arquivos\"
	Sped.DiretorioErros = "C:\IIS\DemoIis\Arquivos\"
	Sped.DiretorioConfiguracao = "C:\IIS\DemoIis\Arquivos\"
	Sped.ConfigurarSoftwareHouse "CNPJ SH", "TOKEN SH"   'Criar conta no link: conta.tecnospeed.com.br
	
	response.Write("Componente  configurado") %> <br> <br>  <%
	'------------------------------------------------------------------------------------------------------------
	
	'2 - Iniciando a Apuração:

	Sped.NomeArquivo = "MeuSped123.txt"
	Sped.DataInicio = "01/01/2018"
	Sped.DataFim = "30/11/2018"
	Sped.CnpjEmissor = "10027258955"
	Set RetApuracao = Sped.IniciarApuracao()
	Protocolo = RetApuracao.Protocolo
	response.Write("INICIAR APURACAO") %> <br> <%
	response.Write("Mensagem: " & RetApuracao.Mensagem) %> <br> <%
	response.Write("Protocolo: " & RetApuracao.Protocolo) %> <br> <br> <br> <%
	'------------------------------------------------------------------------------------------------------------

	' 3 - Enviando Registro
	Response.Buffer = True
	Dim ArquivoTx2
	'-- Cria o Objeto de leitura:
	Set ArquivoTx2 = Server.CreateObject("Microsoft.XMLHTTP")
	' Abre a URL indicada no metodo GET:
	ArquivoTx2.Open "GET", "C:\IIS\DemoIis\ExRegistro0000.tx2", False
		
	'-- faz o Envio das Informações Requisitadas para o Servidor:
	ArquivoTx2.Send

	'-- Pega o Conteudo do TXT e coloca na Variável:
	ConteudoTX2 = ArquivoTx2.responseText
	
	'-- Limpa o 'cache' da Operação:
	Set xml = Nothing

	Set RetEnviaRegistro = Sped.EnviarRegistros(Protocolo, ConteudoTX2)
	response.Write("ENVIANDO REGISTRO") %> <br> <%
	response.Write("Mensagem: " & RetEnviaRegistro.Mensagem) %> <br> <%
	response.Write("Protocolo: " & RetEnviaRegistro.Protocolo) %> <br> <br> <br> <%
	'------------------------------------------------------------------------------------------------------------

	'4 - Gerando a Apuração;
	Set RetGerarApuracao = Sped.GerarApuracao(Protocolo)
	response.Write("GERANDO APURACAO") %> <br> <%
	response.Write("Mensagem: " & RetGerarApuracao.Mensagem) %> <br> <%
	response.Write("Protocolo: " & RetGerarApuracao.Protocolo) %> <br> <br> <br> <%
	'------------------------------------------------------------------------------------------------------------

	' 5 - Consultando Apuração;
	Set RetConsultarApuracao = Sped.ConsultarApuracao(Protocolo, Sped.DiretorioArquivo)
	response.Write("CONSULTANDO APURACAO") %> <br> <%
	response.Write("Mensagem: " & RetConsultarApuracao.Mensagem) %> <br> <%
	response.Write("Protocolo: " & RetConsultarApuracao.Protocolo) %> <br> <%
	response.Write("Nome do Arquivo: " & RetConsultarApuracao.NomeArquivo) %> <br> <%
	response.Write("Codigo: " & RetConsultarApuracao.Codigo) %> <br> <%

%> <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> <%	
%>

