// *****************************************************************************
//
// unit:   uEnums
// Classe: TCEnums
//
// Data de cria��o  : 10/05/2019
// Autor            :
// Descri��o        : Classe contendo estrutura de Enum para todos Retornos
// da dll de integra��o Pay&Go
// *****************************************************************************/
unit uEnums;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.StrUtils, System.AnsiStrings,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Types, System.TypInfo;

type

  TCEnums = class

  private
    { }
  public

    const


    // ==========================================================================================
    // Defini��o da vers�o do aplicativo
    // ==========================================================================================

    PGWEBLIBTEST_VERSION = '2.0.1';
    PGWEBLIBTEST_AUTDEV = 'PRODO SISTEMA';
    PGWEBLIBTEST_AUTNAME = 'PRODO SISTEMA';
    PGWEBLIBTEST_AUTCAP = '15';
    PGWEBLIBTEST_AUTHTECHUSER = 'PRODOSISTEMA';

    // ==========================================================================================
    // C�digos de Confirma��o de Transa��o
    // ==========================================================================================
    PWCNF_CNF_AUTO = 289;
    // A transa��o foi confirmada pelo Ponto de Captura, sem interven��o do usu�rio.
    PWCNF_CNF_MANU_AUT = 12833;
    // A transa��o foi confirmada manualmente na Automa��o.*/
    PWCNF_REV_MANU_AUT = 12849;
    // A transa��o foi desfeita manualmente na Automa��o.*/
    PWCNF_REV_PRN_AUT = 78129;
    // A transa��o foi desfeita pela Automa��o, devido a uma falha na impress�o do comprovante (n�o fiscal). A priori, n�o usar. Falhas na impress�o n�o devem gerar desfazimento, deve ser solicitada a reimpress�o da transa��o.*/
    PWCNF_REV_DISP_AUT = 143665;
    // A transa��o foi desfeita pela Automa��o, devido a uma falha no mecanismo de libera��o da mercadoria.*/
    PWCNF_REV_COMM_AUT = 209201;
    // A transa��o foi desfeita pela Automa��o, devido a uma falha de comunica��o/integra��o com o ponto de captura (Cliente Muxx).*/
    PWCNF_REV_ABORT = 274737;
    // A transa��o n�o foi finalizada, foi interrompida durante a captura de dados.*/
    PWCNF_REV_OTHER_AUT = 471345;
    // A transa��o foi desfeita a pedido da Automa��o, por um outro motivo n�o previsto.*/
    PWCNF_REV_PWR_AUT = 536881;
    // A transa��o foi desfeita automaticamente pela Automa��o, devido a uma queda de energia (rein�cio abrupto do sistema).*/
    PWCNF_REV_FISC_AUT = 602417;
    // A transa��o foi desfeita automaticamente pela Automa��o, devido a uma falha de registro no sistema fiscal (impressora S@T, on-line, etc.).*/

    // =========================================================================================
    // Tipos de evento a serem ativados para monitora��o no PIN-pad
    // ==========================================================================================
    PWPPEVTIN_KEYS = 1; // Acionamento de teclas
    PWPPEVTIN_MAG = 2; // Passagem de cart�o magn�tico
    PWPPEVTIN_ICC = 4; // Inser��o de cart�o com chip.
    PWPPEVTIN_CTLS = 8; // Aproxima��o de um cart�o sem contato

    // ==========================================================================================
    // Tipos de evento retornados pelo PIN-pad
    // ==========================================================================================
    PWPPEVT_MAGSTRIPE = 1; // 01h Foi passado um cart�o magn�tico.
    PWPPEVT_ICC = 2; // 02h Foi detectada a presen�a de um cart�o com chip.
    PWPPEVT_CTLS = 3; // 03h Foi detectada a presen�a de um cart�o sem contato.
    PWPPEVT_KEYCONF = 17; // 11h Foi pressionada a tecla [OK].
    PWPPEVT_KEYBACKSP = 18; // 12h Foi pressionada a tecla [CORRIGE].
    PWPPEVT_KEYCANC = 19; // 13h Foi pressionada a tecla [CANCELA].
    PWPPEVT_KEYF1 = 33; // 21h Foi pressionada a tecla [F1].
    PWPPEVT_KEYF2 = 34; // 22h Foi pressionada a tecla [F2].
    PWPPEVT_KEYF3 = 35; // 23h Foi pressionada a tecla [F3].
    PWPPEVT_KEYF4 = 36; // 24h Foi pressionada a tecla [F4].

    // ==========================================================================================
    // N�mero maximo de itens em um menu de sele��o
    // ==========================================================================================
    PWMENU_MAXINTENS = 40;

    // ==========================================================================================
    // Tabela de C�digos de retorno das transa��es
    // ==========================================================================================
    PWOPER_NULL = 0; // Testa comunica��o com a infraestrutura do Pay&Go Web
    PWOPER_INSTALL = 1;
    // Registra o Ponto de Captura perante a infraestrutura do Pay&Go Web, para que seja autorizado a realizar transa��es
    PWOPER_PARAMUPD = 2;
    // Obt�m da infraestrutura do Pay&Go Web os par�metros de opera��o atualizados do Ponto de Captura.
    PWOPER_REPRINT = 16; // Obt�m o �ltimo comprovante gerado por uma transa��o
    PWOPER_RPTTRUNC = 17;
    // Obt�m um relat�rio sint�tico das transa��es realizadas desde a �ltima obten��o deste relat�rio
    PWOPER_RPTDETAIL = 18;
    // Relat�rio detalhado das transa��es realizadas na data informada, ou data atual.
    PWOPER_ADMIN = 32;
    // Acessa qualquer transa��o que n�o seja disponibilizada pelo comando PWOPER_SALE. Um menu � apresentado para o operador selecionar a transa��o desejada.
    PWOPER_SALE = 33;
    // (Venda) Realiza o pagamento de mercadorias e/ou servi�os vendidos pelo Estabelecimento ao Cliente (tipicamente, com cart�o de cr�dito/d�bito), transferindo fundos entre as respectivas contas.
    PWOPER_SALEVOID = 34;
    // (Cancelamento de venda) Cancela uma transa��o PWOPER_SALE, realizando a transfer�ncia de fundos inversa
    PWOPER_PREPAID = 35;
    // Realiza a aquisi��o de cr�ditos pr�-pagos (por exemplo, recarga de celular).
    PWOPER_CHECKINQ = 36; // Consulta a validade de um cheque papel
    PWOPER_RETBALINQ = 37;
    // Consulta o saldo/limite do Estabelecimento (tipicamente, limite de cr�dito para venda de cr�ditos pr�-pagos).
    PWOPER_CRDBALINQ = 38; // Consulta o saldo do cart�o do Cliente
    PWOPER_INITIALIZ = 39;
    // (Inicializa��o/abertura) Inicializa a opera��o junto ao Provedor e/ou obt�m/atualiza os par�metros de opera��o mantidos por este
    PWOPER_SETTLEMNT = 40;
    // (Fechamento/finaliza��o) Finaliza a opera��o junto ao Provedor
    PWOPER_PREAUTH = 41;
    // (Pr�-autoriza��o) Reserva o valor correspondente a uma venda no limite do cart�o de cr�dito de um Cliente, por�m sem efetivar a transfer�ncia de fundos.
    PWOPER_PREAUTVOID = 42;
    // (Cancelamento de pr�-autoriza��o) Cancela uma transa��o PWOPER_PREAUTH, liberando o valor reservado no limite do cart�o de cr�dito
    PWOPER_CASHWDRWL = 43;
    // (Saque) Registra a retirada de um valor em esp�cie pelo Cliente no Estabelecimento, para transfer�ncia de fundos nas respectivas contas
    PWOPER_LOCALMAINT = 44;
    // (Baixa t�cnica) Registra uma interven��o t�cnica no estabelecimento perante o Provedor.
    PWOPER_FINANCINQ = 45;
    // Consulta as taxas de financiamento referentes a uma poss�vel venda parcelada, sem efetivar a transfer�ncia de fundos ou impactar o limite de cr�dito do Cliente
    PWOPER_ADDRVERIF = 46; // Verifica junto ao Provedor o endere�o do Cliente
    PWOPER_SALEPRE = 47;
    // Efetiva uma pr�-autoriza��o (PWOPER_PREAUTH), previamente realizada, realizando a transfer�ncia de fundos entre as contas do Estabelecimento e do Cliente
    PWOPER_LOYCREDIT = 48;
    // Registra o ac�mulo de pontos pelo Cliente, a partir de um programa de fidelidade.
    PWOPER_LOYCREDVOID = 49; // Cancela uma transa��o PWOPER_LOYCREDIT
    PWOPER_LOYDEBIT = 50;
    // Registra o resgate de pontos/pr�mio pelo Cliente, a partir de um programa de fidelidade.
    PWOPER_LOYDEBVOID = 51; // Cancela uma transa��o PWOPER_LOYDEBIT
    PWOPER_VOID = 57;
    // Exibe um menu com os cancelamentos dispon�veis, caso s� exista um tipo, este � selecionado automaticamente
    PWOPER_VERSION = 252;
    // (Vers�o) Permite consultar a vers�o da biblioteca atualmente em uso.
    PWOPER_CONFIG = 253;
    // (Configura��o) Visualiza e altera os par�metros de opera��o locais da biblioteca
    PWOPER_MAINTENANCE = 254;
    // (Manuten��o) Apaga todas as configura��es do Ponto de Captura, devendo ser novamente realizada uma transa��o de Instala��o.

    // ==========================================================================================
    // Tipos de dados que podem ser informados pela Automa��o
    // ==========================================================================================
    PWINFO_OPERATION = 2;
    // Tipo de transa��o (PWOPER_xxx). Consultar os valores poss�veis na descri��o da fun��o PW_iNewTransac
    PWINFO_POSID = 17; // Identificador do Ponto de Captura.
    PWINFO_AUTNAME = 21; // Nome do aplicativo de Automa��o
    PWINFO_AUTVER = 22; // Vers�o do aplicativo de Automa��o
    PWINFO_AUTDEV = 23; // Empresa desenvolvedora do aplicativo de Automa��o.
    PWINFO_DESTTCPIP = 27;
    // Endere�o TCP/IP para comunica��o com a infraestrutura Pay&Go Web, no formato <endere�o IP>:<porta TCP> ou <nome do servidor>:<porta TCP>
    PWINFO_MERCHCNPJCPF = 28;
    // CNPJ (ou CPF) do Estabelecimento, sem formata��o. No caso de estarem sendo utilizadas afilia��es de mais de um estabelecimento, este dado pode ser adicionado pela automa��o para selecionar previamente o estabelecimento a ser utilizado para determinada transa��o. Caso este dado n�o seja informado, ser� solicitada a exibi��o de um menu para a escolha dentre os v�rios estabelecimentos dispon�veis.
    PWINFO_AUTCAP = 36;
    // Capacidades da Automa��o (soma dos valores abaixo): 1: funcionalidade de troco/saque; 2: funcionalidade de desconto; 4: valor fixo, sempre incluir; 8: impress�o das vias diferenciadas do comprovante para Cliente/Estabelecimento; 16: impress�o do cupom reduzido. 32: utiliza��o de saldo total do voucher para abatimento do valor da compra.
    PWINFO_TOTAMNT = 37;
    // Valor total da opera��o, considerando PWINFO_CURREXP (em centavos se igual a 2), incluindo desconto, saque, gorjeta, taxa de embarque, etc.
    PWINFO_CURRENCY = 38; // Moeda (padr�o ISO4217, 986 para o Real)
    PWINFO_CURREXP = 39; // Expoente da moeda (2 para centavos)
    PWINFO_FISCALREF = 40; // Identificador do documento fiscal
    PWINFO_CARDTYPE = 41;
    // Tipo de cart�o utilizado (PW_iGetResult), ou tipos de cart�o aceitos (soma dos valores abaixo, PW_iAddParam): 1: cr�dito 2: d�bito 4: voucher/PAT 8: outros
    PWINFO_PRODUCTNAME = 42;
    // Nome/tipo do produto utilizado, na nomenclatura do Provedor.
    PWINFO_DATETIME = 49;
    // Data e hora local da transa��o, no formato �AAAAMMDDhhmmss�
    PWINFO_REQNUM = 50; // Refer�ncia local da transa��o
    PWINFO_AUTHSYST = 53;
    // Nome do Provedor: �ELAVON�; �FILLIP�; �LIBERCARD�; �RV�; etc
    PWINFO_VIRTMERCH = 54; // Identificador do Estabelecimento
    PWINFO_AUTMERCHID = 56;
    // Identificador do estabelecimento para o Provedor (c�digo de afilia��o).
    PWINFO_PHONEFULLNO = 58;
    // N�mero do telefone, com o DDD (10 ou 11 d�gitos).
    PWINFO_FINTYPE = 59;
    // Modalidade de financiamento da transa��o: 1: � vista 2: parcelado pelo emissor 4: parcelado pelo estabelecimento 8: pr�-datado
    PWINFO_INSTALLMENTS = 60; // Quantidade de parcelas
    PWINFO_INSTALLMDATE = 61;
    // Data de vencimento do pr�-datado, ou da primeira parcela. Formato �DDMMAA
    PWINFO_PRODUCTID = 62;
    // Identifica��o do produto utilizado, de acordo com a nomenclatura do Provedor.
    PWINFO_RESULTMSG = 66;
    // Mensagem descrevendo o resultado final da transa��o, seja esta bem ou mal sucedida (conforme �4.3.Interface com o usu�rio�, p�gina 8
    PWINFO_CNFREQ = 67;
    // Necessidade de confirma��o: 0: n�o requer confirma��o; 1: requer confirma��o.
    PWINFO_AUTLOCREF = 68;
    // Refer�ncia da transa��o para a infraestrutura Pay&Go Web
    PWINFO_AUTEXTREF = 69;
    // Refer�ncia da transa��o para o Provedor (NSU host).
    PWINFO_AUTHCODE = 70; // C�digo de autoriza��o
    PWINFO_AUTRESPCODE = 71;
    // C�digo de resposta da transa��o (campo ISO8583:39)
    PWINFO_AUTDATETIME = 72;
    // Data/hora da transa��o para o Provedor, formato �AAAAMMDDhhmmss�.
    PWINFO_DISCOUNTAMT = 73;
    // Valor do desconto concedido pelo Provedor, considerando PWINFO_CURREXP, j� deduzido em PWINFO_TOTAMNT
    PWINFO_CASHBACKAMT = 74;
    // Valor do saque/troco, considerando PWINFO_CURREXP, j� inclu�do em PWINFO_TOTAMNT
    PWINFO_CARDNAME = 75; // Nome do cart�o ou do emissor do cart�o
    PWINFO_ONOFF = 76; // Modalidade da transa��o: 1: online 2: off-line
    PWINFO_BOARDINGTAX = 77;
    // Valor da taxa de embarque, considerando PWINFO_CURREXP, j� inclu�do em PWINFO_TOTAMNT
    PWINFO_TIPAMOUNT = 78;
    // Valor da taxa de servi�o (gorjeta), considerando PWINFO_CURREXP, j� inclu�do em PWINFO_TOTAMNT
    PWINFO_INSTALLM1AMT = 79;
    // Valor da entrada para um pagamento parcelado, considerando PWINFO_CURREXP, j� inclu�do em PWINFO_TOTAMNT
    PWINFO_INSTALLMAMNT = 80;
    // Valor da parcela, considerando PWINFO_CURREXP, j� inclu�do em PWINFO_TOTAMNT
    PWINFO_RCPTFULL = 82;
    // Comprovante para impress�o � Via completa. At� 40 colunas, quebras de linha identificadas pelo caractere 0Dh
    PWINFO_RCPTMERCH = 83;
    // Comprovante para impress�o � Via diferenciada para o Estabelecimento. At� 40 colunas, quebras de linha identificadas pelo caractere 0Dh.
    PWINFO_RCPTCHOLDER = 84;
    // Comprovante para impress�o � Via diferenciada para o Cliente. At� 40 colunas, quebras de linha identificadas pelo caractere 0Dh.
    PWINFO_RCPTCHSHORT = 85;
    // Comprovante para impress�o � Cupom reduzido (para o Cliente). At� 40 colunas, quebras de linha identificadas pelo caractere 0Dh
    PWINFO_TRNORIGDATE = 87;
    // Data da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��o (formato �DDMMAA�).
    PWINFO_TRNORIGNSU = 88;
    // NSU da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��
    PWINFO_SALDOVOUCHER = 89; // Saldo do cart�o voucher recebido do autorizador
    PWINFO_TRNORIGAMNT = 96;
    // Valor da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��o.
    PWINFO_TRNORIGAUTH = 98;
    // C�digo de autoriza��o da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��o
    PWINFO_LANGUAGE = 108;
    // Idioma a ser utilizado para a interface com o cliente: 0: Portugu�s 1: Ingl�s 2: Espanhol
    PWINFO_PROCESSMSG = 111;
    // Mensagem a ser exibida para o cliente durante o processamento da transa��o
    PWINFO_TRNORIGREQNUM = 114;
    // N�mero da solicita��o da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��o
    PWINFO_TRNORIGTIME = 115;
    // Hora da transa��o original, no caso de um cancelamento ou uma confirma��o de pr�-autoriza��o (formato �HHMMSS�).
    PWINFO_CNCDSPMSG = 116;
    // Mensagem a ser exibida para o operador no terminal no caso da transa��o ser abortada (cancelamento ou timeout).
    PWINFO_CNCPPMSG = 117;
    // Mensagem a ser exibida para o portador no PIN-pad no caso da transa��o ser abortada (cancelamento ou timeout).
    PWINFO_CARDENTMODE = 192;
    // Modo(s) de entrada do cart�o: 1: digitado 2: tarja magn�tica 4: chip com contato 16: fallback de chip para tarja 32: chip sem contato simulando tarja (cliente informa tipo efetivamente utilizado) 64: chip sem contato EMV (cliente informa tipo efetivamente utilizado) 256: fallback de tarja para digitado
    PWINFO_CARDFULLPAN = 193;
    // N�mero do cart�o completo, para transa��o digitada. Este dado n�o pode ser recuperado pela fun��o PW_iGetResult
    PWINFO_CARDEXPDATE = 194; // Data de vencimento do cart�o (formato �MMAA�).
    PWINFO_CARDPARCPAN = 200; // N�mero do cart�o, truncado ou mascarado
    PWINFO_CHOLDVERIF = 207;
    // Verifica��o do portador, soma dos seguintes valores: �1�: Assinatura do portador em papel. �2�: Senha verificada off-line. �4�: Senha off-line bloqueada no decorrer desta transa��o. �8�: Senha verificada online
    PWINFO_AID = 216; // Aplica��o do cart�o utilizada durante a transa��o
    PWINFO_BARCODENTMODE = 233;
    // Modo(s) de entrada do c�digo de barras: 1:  digitado; 2:  lido atrav�s de dispositivo eletr�nico.
    PWINFO_BARCODE = 234; // C�digo de barras completo, lido ou digitado
    PWINFO_MERCHADDDATA1 = 240;
    // Dados adicionais relevantes para a Automa��o (#1)
    PWINFO_MERCHADDDATA2 = 241;
    // Dados adicionais relevantes para a Automa��o (#2)
    PWINFO_MERCHADDDATA3 = 242;
    // Dados adicionais relevantes para a Automa��o (#3)
    PWINFO_MERCHADDDATA4 = 243;
    // Dados adicionais relevantes para a Automa��o (#4)
    PWINFO_RCPTPRN = 244;
    // Indica quais vias de comprovante devem ser impressas: 0: n�o h� comprovante 1: imprimir somente a via do Cliente 2: imprimir somente a via do Estabelecimento 3: imprimir ambas as vias do Cliente e do Estabelecimento
    PWINFO_AUTHMNGTUSER = 245;
    // Identificador do usu�rio autenticado com a senha do lojista
    PWINFO_AUTHTECHUSER = 246;
    // Identificador do usu�rio autenticado com a senha t�cnica.
    PWINFO_PAYMNTTYPE = 7969;
    // Modalidade de pagamento: 1: cart�o 2: dinheiro 3: cheque
    PWINFO_USINGPINPAD = 32513;
    // Indica se o ponto de captura faz ou n�o o uso de PIN-pad: 0: N�o utiliza PIN-pad; 1: Utiliza PIN-pad.
    PWINFO_PPCOMMPORT = 32514;
    // N�mero da porta serial � qual o PIN-pad est� conectado. O valor 0 (zero) indica uma busca autom�tica desta porta
    PWINFO_IDLEPROCTIME = 32516;
    // Pr�xima data e hor�rio em que a fun��o PW_iIdleProc deve ser chamada pela Automa��o. Formato �AAMMDDHHMMSS�
    PWINFO_PNDAUTHSYST = 32517;
    // Nome do provedor para o qual existe uma transa��o pendente.
    PWINFO_PNDVIRTMERCH = 32518;
    // Identificador do Estabelecimento para o qual existe uma transa��o pendente
    PWINFO_PNDREQNUM = 32519;
    // Refer�ncia local da transa��o que est� pendente.
    PWINFO_PNDAUTLOCREF = 32520;
    // Refer�ncia para a infraestrutura Pay&Go Web da transa��o que est� pendente.
    PWINFO_PNDAUTEXTREF = 32521;
    // Refer�ncia para o Provedor da transa��o que est� pendente
    PWINFO_LOCALINFO1 = 32522;
    // Texto exibido para um item de menu selecionado pelo usu�rio
    PWINFO_SERVERPND = 32523;
    // Indica se o ponto de captura possui alguma pend�ncia a ser resolvida com o Pay&Go Web: 0: n�o possui pend�ncia; 1: possui pend�ncia
    PWINFO_PPINFO = '0x7F15';
    // Informa��es do PIN-pad conectado, seguindo o padr�o posi��o/informa��o abaixo: 001-020 / Nome do fabricante do PIN-pad. 021-039 / Modelo/vers�o do hardware. 040 / Se o PIN-pad suporta cart�o com chip sem contato, este campo deve conter a letra �C�, caso contr�rio um espa�o em branco. 041-060 / Vers�o do software b�sico/firmware. 061-064 / Vers�o da especifica��o, no formato �V.VV�. 065-080 / Vers�o da aplica��o b�sica, no formato �VVV.VV AAMMDD� (com 3 espa�os � direita). 081-100 / N�mero de s�rie do PIN-pad (com espa�os � direita)
    PWINFO_DUEAMNT = '0xBF06';
    // Valor devido pelo usu�rio, considerando PWINFO_CURREXP, j� deduzido em PWINFO_TOTAMNT
    PWINFO_READJUSTEDAMNT = '0xBF09';
    // Valor total da transa��o reajustado, este campo ser� utilizado caso o autorizador, por alguma regra de neg�cio espec�fica dele, resolva alterar o valor total que foi solicitado para a transa��o
    PWINFO_CHOLDERNAME = '0x1F38';
    // Nome do portador do cart�o utilizado, o tamanho segue o mesmo padr�o da tag 5F20 EMV.
    PWINFO_CARDNAMESTD = 196;
    // Descri��o do produto bandeira padr�o relacionado ao BIN.

    // ===========================================================
    // Tabela de C�digos de Erro de Retorno da Biblioteca
    // ===========================================================
    PWRET_OK = 0; // Opera��o bem sucedida
    PWRET_FROMHOSTPENDTRN = -2599;
    // Existe uma transa��o pendente, � necess�rio confirmar ou desfazer essa transa��o atrav�s de PW_iConfirmation.
    PWRET_FROMHOSTPOSAUTHERR = -2598;
    // Falha de autentica��o do ponto de captura com a infraestrutura do Pay&Go Web.
    PWRET_FROMHOSTUSRAUTHERR = -2597; // Falha de autentica��o do usu�rio
    PWRET_FROMHOST = -2596;
    // Erro retornado pela infraestrutura do Pay&Go Web. Verificar a mensagem (PWINFO_RESULTMSG) para mais informa��es
    PWRET_TLVERR = -2595;
    // Falha de comunica��o com a infraestrutura do Pay&Go Web (codifica��o da mensagem).
    PWRET_SRVINVPARAM = -2594;
    // Falha de comunica��o com a infraestrutura do Pay&Go Web (par�metro inv�lido).
    PWRET_REQPARAM = -2593;
    // Falha de comunica��o com a infraestrutura do Pay&Go Web (falta par�metro obrigat�rio).
    PWRET_HOSTCONNUNK = -2592; // Erro interno da biblioteca (conex�o ao host).
    PWRET_INTERNALERR = -2591; // Erro interno da biblioteca
    PWRET_BLOCKED = -2590; // O ponto de captura foi bloqueado para uso
    PWRET_FROMHOSTTRNNFOUND = -2589;
    // A transa��o referenciada (cancelamento, confirma��o, etc.) n�o foi encontrada.
    PWRET_PARAMSFILEERR = -2588;
    // Inconsist�ncia dos par�metros de opera��o recebidos da infraestrutura do Pay&Go Web
    PWRET_NOCARDENTMODE = -2587;
    // O Ponto de Captura n�o tem a capacidade de efetuar a captura do cart�o atrav�s dos tipos de entrada especificados pelo Pay&Go Web
    PWRET_INVALIDVIRTMERCH = -2586;
    // Falha de comunica��o com a infraestrutura do Pay&Go Web (c�digo de afilia��o inv�lido).
    PWRET_HOSTTIMEOUT = -2585;
    // Falha de comunica��o com a infraestrutura do Pay&Go Web (tempo de resposta esgotado).
    PWRET_CONFIGREQUIRED = -2584;
    // Erro de configura��o. � necess�rio acionar a fun��o de configura��o.
    PWRET_HOSTCONNERR = -2583;
    // Falha de conex�o � infraestrutura do Pay&Go Web
    PWRET_HOSTCONNLOST = -2582;
    // A conex�o com a infraestrutura do Pay&Go Web foi interrompida
    PWRET_FILEERR = -2581;
    // Falha no acesso aos arquivos da biblioteca de integra��o
    PWRET_PINPADERR = -2580; // Falha de comunica��o com o PIN-pad (aplica��o).
    PWRET_MAGSTRIPEERR = -2579; // Formato de tarja magn�tica n�o reconhecido
    PWRET_PPCRYPTERR = -2578;
    // Falha de comunica��o com o PIN-pad (comunica��o segura).
    PWRET_SSLCERTERR = -2577; // Falha no certificado SSL
    PWRET_SSLNCONN = -2576; // Falha ao tentar estabelecer conex�o SSL
    PWRET_GPRSATTACHFAILED = -2575; // Falha no registro GPRS.
    PWRET_INVPARAM = -2499; // Par�metro inv�lido passado � fun��o
    PWRET_NOTINST = -2498;
    // Ponto de Captura n�o instalado. � necess�rio acionar a fun��o de Instala��o.
    PWRET_MOREDATA = -2497;
    // Ainda existem dados que precisam ser capturados para a transa��o poder ser realizada
    PWRET_NODATA = -2496; // A informa��o solicitada n�o est� dispon�vel.
    PWRET_DISPLAY = -2495;
    // A Automa��o deve apresentar uma mensagem para o operador
    PWRET_INVCALL = -2494; // Fun��o chamada no momento incorreto
    PWRET_NOTHING = -2493; // Nada a fazer, continuar o processamento
    PWRET_BUFOVFLW = -2492;
    // O tamanho da �rea de mem�ria informado � insuficiente.
    PWRET_CANCEL = -2491; // Opera��o cancelada pelo operador
    PWRET_TIMEOUT = -2490; // Tempo limite excedido para a��o do operador
    PWRET_PPNOTFOUND = -2489; // PIN-pad n�o encontrado na busca efetuada.
    PWRET_TRNNOTINIT = -2488; // N�o foi chamada a fun��o PW_iNewTransac
    PWRET_DLLNOTINIT = -2487; // N�o foi chamada a fun��o PW_iInit
    PWRET_FALLBACK = -2486;
    // Ocorreu um erro no cart�o magn�tico, passar a aceitar o cart�o digitado, caso j� n�o esteja sendo aceito
    PWRET_WRITERR = -2485; // Falha de grava��o no diret�rio de trabalho.
    PWRET_PPCOMERR = -2484; // Falha na comunica��o com o PIN-pad (protocolo).
    PWRET_NOMANDATORY = -2483;
    // Algum dos par�metros obrigat�rios n�o foi adicionado
    PWRET_INVALIDTRN = -2482;
    // A transa��o informada para confirma��o n�o existe ou j� foi confirmada anteriormente.
    PWRET_PPS_XXX = -2200; // Erros retornados pelo PIN-pad, conforme se��o 10.2

    // ==========================================================
    // Erros espec�ficos da biblioteca compartilhada de PIN-pad
    // ==========================================================
    PWRET_PPS_MAX = -2100;
    PWRET_PPS_MIN = PWRET_PPS_MAX - 100;

    // ==========================================================================================
    // Tipos utilizados na captura de dados dinamica
    // ==========================================================================================
    PWDAT_MENU = 1; // menu de op��es
    PWDAT_TYPED = 2; // entrada digitada
    PWDAT_CARDINF = 3; // dados de cart�o
    PWDAT_PPENTRY = 5; // entrada digitada no PIN-pad
    PWDAT_PPENCPIN = 6; // senha criptografada
    PWDAT_CARDOFF = 9; // processamento off-line de cart�o com chip
    PWDAT_CARDONL = 10; // processamento on-line de cart�o com chip
    PWDAT_PPCONF = 11; // confirma��o de informa��o no PIN-pad
    PWDAT_BARCODE = 12; // C�digo de barras, lido ou digitado
    PWDAT_PPREMCRD = 13; // Remo��o do cart�o do PIN-pad.
    PWDAT_PPGENCMD = 14; // comando propriet�rio da rede no PIN-pad.
    PWDAT_PPDATAPOSCNF = 16; // confirma��o positiva de dados no PIN-pad.
    PWDAT_USERAUTH = 17; // valida��o da senha.

    // ==========================================================================================
    // Tipos de opera��o, utilizados na fun��o PW_iGetOperations
    // ==========================================================================================
    PWOPTYPE_ADMIN = 1;
    // Opera��es administrativas (relat�rio, reimpress�o, etc).
    PWOPTYPE_SALE = 2; // Opera��es financeiras.

    // ==========================================================================================
    // Dados digitado pelo portador do cart�o no PIN-pad.
    // ==========================================================================================
    DIGITE_O_DDD = 1;
    REDIGITE_O_DDD = 2;
    DIGITE_O_TELEFONE = 3;
    REDIGITE_O_TELEFONE = 4;
    DIGITE_DDD_TELEFONE = 5;
    REDIGITE_DDD_TELEFONE = 6;
    DIGITE_O_CPF = 7;
    REDIGITE_O_CPF = 8;
    DIGITE_O_RG = 9;
    REDIGITE_O_RG = 10;
    DIGITE_OS_4_ULTIMOS_DIGITOS = 11;
    DIGITE_CODIGO_DE_SEGURANCA = 12;

    // ==========================================================================================
    // Tipos de Cart�es
    // ==========================================================================================
    naoDefinido = 0;
    credito = 1;
    debito = 2;
    voucher = 4;
    outros = 8;

    // ==========================================================================================
    // Tipos de Vendas
    // ==========================================================================================
    vNaoDefinido = 0;
    aVista = 1;
    parceladoEmissor = 2;
    parceladoEstabelecimento = 4;
    preDatado = 8;

    WInputH: Integer = 750;
    WInputV: Integer = 140;

    { }

    Constructor Create; // declara��o do metodo construtor

    Destructor Destroy; Override; // declara��o do metodo destrutor

    // Exemplos de Retorno do Nome da Constante;
    Function E_PWRET(PWRET: Integer): String;
    Function E_PWPPEVT(PWPPEVT: Integer): String;
    Function E_PWOPER(PWOPER: Integer): String;
    Function E_PWCardTypes(PWCardTypes: Integer): String;
    Function E_PWFinancingTypes(PWFinancingTypes: Integer): String;
    Function E_PWCNF(PWCNF: Integer): String;

  End;

var
  eCclasse: TCEnums;

implementation

constructor TCEnums.Create;
begin
  // metodo contrutor
end;

destructor TCEnums.Destroy;
begin
  // metodo destrutor
  inherited;
end;



// ========================================
// **** Exemplo de uso das constantes ****
// ========================================

// =========================================================
// Confirma��o de Transa��o
// =========================================================
Function TCEnums.E_PWCNF(PWCNF: Integer): String;
begin
  case PWCNF of
    PWCNF_CNF_AUTO:
      Result := 'PWCNF_CNF_AUTO';
    PWCNF_CNF_MANU_AUT:
      Result := 'PWCNF_CNF_MANU_AUT';
    PWCNF_REV_MANU_AUT:
      Result := 'PWCNF_REV_MANU_AUT';
    PWCNF_REV_PRN_AUT:
      Result := 'PWCNF_REV_PRN_AUT';
    PWCNF_REV_DISP_AUT:
      Result := 'PWCNF_REV_DISP_AUT';
    PWCNF_REV_COMM_AUT:
      Result := 'PWCNF_REV_COMM_AUT';
    PWCNF_REV_ABORT:
      Result := 'PWCNF_REV_ABORT';
    PWCNF_REV_OTHER_AUT:
      Result := 'PWCNF_REV_OTHER_AUT';
    PWCNF_REV_PWR_AUT:
      Result := 'PWCNF_REV_PWR_AUT';
    PWCNF_REV_FISC_AUT:
      Result := 'PWCNF_REV_FISC_AUT';
  end;
end;

// =========================================================
// Tipos de Vendas
// =========================================================
Function TCEnums.E_PWFinancingTypes(PWFinancingTypes: Integer): String;
begin
  case PWFinancingTypes of
    vNaoDefinido:
      Result := 'vNaoDefinido';
    aVista:
      Result := 'aVista';
    parceladoEmissor:
      Result := 'parceladoEmissor';
    parceladoEstabelecimento:
      Result := 'parceladoEstabelecimento';
    preDatado:
      Result := 'preDatado';
  end;
end;

// =========================================================
// Tipos de Cart�es
// =========================================================
Function TCEnums.E_PWCardTypes(PWCardTypes: Integer): String;
begin
  case PWCardTypes of
    naoDefinido:
      Result := 'naoDefinido';
    credito:
      Result := 'credito';
    debito:
      Result := 'debito';
    voucher:
      Result := 'voucher';
    outros:
      Result := 'outros';
  end;
end;

// =========================================================
// Retorno das Transa��es
// =========================================================
Function TCEnums.E_PWOPER(PWOPER: Integer): String;
begin

  case PWOPER of

    PWOPER_NULL:
      Result := 'PWOPER_NULL';
    PWOPER_INSTALL:
      Result := 'PWOPER_INSTALL';
    PWOPER_PARAMUPD:
      Result := 'PWOPER_PARAMUPD';
    PWOPER_REPRINT:
      Result := 'PWOPER_REPRINT';
    PWOPER_RPTTRUNC:
      Result := 'PWOPER_RPTTRUNC';
    PWOPER_RPTDETAIL:
      Result := 'PWOPER_RPTDETAIL';
    PWOPER_ADMIN:
      Result := 'PWOPER_ADMIN';
    PWOPER_SALE:
      Result := 'PWOPER_SALE';
    PWOPER_SALEVOID:
      Result := 'PWOPER_SALEVOID';
    PWOPER_PREPAID:
      Result := 'PWOPER_PREPAID';
    PWOPER_CHECKINQ:
      Result := 'PWOPER_CHECKINQ';
    PWOPER_RETBALINQ:
      Result := 'PWOPER_RETBALINQ';
    PWOPER_CRDBALINQ:
      Result := 'PWOPER_CRDBALINQ';
    PWOPER_INITIALIZ:
      Result := 'PWOPER_INITIALIZ';
    PWOPER_SETTLEMNT:
      Result := 'PWOPER_SETTLEMNT';
    PWOPER_PREAUTH:
      Result := 'PWOPER_PREAUTH';
    PWOPER_PREAUTVOID:
      Result := 'PWOPER_PREAUTVOID';
    PWOPER_CASHWDRWL:
      Result := 'PWOPER_CASHWDRWL';
    PWOPER_LOCALMAINT:
      Result := 'PWOPER_LOCALMAINT';
    PWOPER_FINANCINQ:
      Result := 'PWOPER_FINANCINQ';
    PWOPER_ADDRVERIF:
      Result := 'PWOPER_ADDRVERIF';
    PWOPER_SALEPRE:
      Result := 'PWOPER_SALEPRE';
    PWOPER_LOYCREDIT:
      Result := 'PWOPER_LOYCREDIT';
    PWOPER_LOYCREDVOID:
      Result := 'PWOPER_LOYCREDVOID';
    PWOPER_LOYDEBIT:
      Result := 'PWOPER_LOYDEBIT';
    PWOPER_LOYDEBVOID:
      Result := 'PWOPER_LOYDEBVOID';
    PWOPER_VOID:
      Result := 'PWOPER_VOID';
    PWOPER_VERSION:
      Result := 'PWOPER_VERSION';
    PWOPER_CONFIG:
      Result := 'PWOPER_CONFIG';
    PWOPER_MAINTENANCE:
      Result := 'PWOPER_MAINTENANCE';

  end;

end;

// =========================================================
// Retorna Constante de retorno de evento PIn-Pad
// =========================================================
Function TCEnums.E_PWPPEVT(PWPPEVT: Integer): String;
begin
  case PWPPEVT of

    PWPPEVT_MAGSTRIPE:
      Result := 'PWPPEVT_MAGSTRIPE';
    PWPPEVT_ICC:
      Result := 'PWPPEVT_ICC';
    PWPPEVT_CTLS:
      Result := 'PWPPEVT_CTLS';
    PWPPEVT_KEYCONF:
      Result := 'PWPPEVT_KEYCONF';
    PWPPEVT_KEYBACKSP:
      Result := 'PWPPEVT_KEYBACKSP';
    PWPPEVT_KEYCANC:
      Result := 'PWPPEVT_KEYCANC';
    PWPPEVT_KEYF1:
      Result := 'PWPPEVT_KEYF1';
    PWPPEVT_KEYF2:
      Result := 'PWPPEVT_KEYF2';
    PWPPEVT_KEYF3:
      Result := 'PWPPEVT_KEYF3';
    PWPPEVT_KEYF4:
      Result := 'PWPPEVT_KEYF4';

  end;

end;

// =================================================================
// Retorno da Biblioteca
// =================================================================
Function TCEnums.E_PWRET(PWRET: Integer): string;
begin

  case PWRET of

    PWRET_OK:
      Result := 'PWRET_OK';
    PWRET_FROMHOSTPENDTRN:
      Result := 'PWRET_FROMHOSTPENDTRN';
    PWRET_FROMHOSTPOSAUTHERR:
      Result := 'PWRET_FROMHOSTPOSAUTHERR';
    PWRET_FROMHOSTUSRAUTHERR:
      Result := 'PWRET_FROMHOSTUSRAUTHERR';
    PWRET_FROMHOST:
      Result := 'PWRET_FROMHOST';
    PWRET_TLVERR:
      Result := 'PWRET_TLVERR';
    PWRET_SRVINVPARAM:
      Result := 'PWRET_SRVINVPARAM';
    PWRET_REQPARAM:
      Result := 'PWRET_REQPARAM';
    PWRET_HOSTCONNUNK:
      Result := 'PWRET_HOSTCONNUNK';
    PWRET_INTERNALERR:
      Result := 'PWRET_INTERNALERR';
    PWRET_BLOCKED:
      Result := 'PWRET_BLOCKED';
    PWRET_FROMHOSTTRNNFOUND:
      Result := 'PWRET_FROMHOSTTRNNFOUND';
    PWRET_PARAMSFILEERR:
      Result := 'PWRET_PARAMSFILEERR';
    PWRET_NOCARDENTMODE:
      Result := 'PWRET_NOCARDENTMODE';
    PWRET_INVALIDVIRTMERCH:
      Result := 'PWRET_INVALIDVIRTMERCH';
    PWRET_HOSTTIMEOUT:
      Result := 'PWRET_HOSTTIMEOUT';
    PWRET_CONFIGREQUIRED:
      Result := 'PWRET_CONFIGREQUIRED';
    PWRET_HOSTCONNERR:
      Result := 'PWRET_HOSTCONNERR';
    PWRET_HOSTCONNLOST:
      Result := 'PWRET_HOSTCONNLOST';
    PWRET_FILEERR:
      Result := 'PWRET_FILEERR';
    PWRET_PINPADERR:
      Result := 'PWRET_PINPADERR';
    PWRET_MAGSTRIPEERR:
      Result := 'PWRET_MAGSTRIPEERR';
    PWRET_PPCRYPTERR:
      Result := 'PWRET_PPCRYPTERR';
    PWRET_SSLCERTERR:
      Result := 'PWRET_SSLCERTERR';
    PWRET_SSLNCONN:
      Result := 'PWRET_SSLNCONN';
    PWRET_GPRSATTACHFAILED:
      Result := 'PWRET_GPRSATTACHFAILED';
    PWRET_INVPARAM:
      Result := 'PWRET_INVPARAM';
    PWRET_NOTINST:
      Result := 'PWRET_NOTINST';
    PWRET_MOREDATA:
      Result := 'PWRET_MOREDATA';
    PWRET_NODATA:
      Result := 'PWRET_NODATA';
    PWRET_DISPLAY:
      Result := 'PWRET_DISPLAY';
    PWRET_INVCALL:
      Result := 'PWRET_INVCALL';
    PWRET_NOTHING:
      Result := 'PWRET_NOTHING';
    PWRET_BUFOVFLW:
      Result := 'PWRET_BUFOVFLW';
    PWRET_CANCEL:
      Result := 'PWRET_CANCEL';
    PWRET_TIMEOUT:
      Result := 'PWRET_TIMEOUT';
    PWRET_PPNOTFOUND:
      Result := 'PWRET_PPNOTFOUND';
    PWRET_TRNNOTINIT:
      Result := 'PWRET_TRNNOTINIT';
    PWRET_DLLNOTINIT:
      Result := 'PWRET_DLLNOTINIT';
    PWRET_FALLBACK:
      Result := 'PWRET_FALLBACK';
    PWRET_WRITERR:
      Result := 'PWRET_WRITERR';
    PWRET_PPCOMERR:
      Result := 'PWRET_PPCOMERR';
    PWRET_NOMANDATORY:
      Result := 'PWRET_NOMANDATORY';
    PWRET_INVALIDTRN:
      Result := 'PWRET_INVALIDTRN';
    PWRET_PPS_XXX:
      Result := 'PWRET_PPS_XXX';

  end;

end;

end.
