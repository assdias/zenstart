// ************************************************************************************
{
  unit:   PGWLib
  Classe: TPGWLib

  Data de cria��o  : 20/05/2019
  Autor            :
  Descri��o        : Classe contendo Todos os Metodos de Operabilidade
}
// ************************************************************************************
unit uPGWLib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.StrUtils, System.AnsiStrings,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Types, System.TypInfo, uEnums, uLib;

Type

  // ========================================================
  // Record que descreve cada membro da estrutura PW_GetData:
  // ========================================================
  TPW_GetData = record
    wIdentificador: Word;
    bTipoDeDado: Byte;
    szPrompt: Array [0 .. 83] of AnsiChar;
    bNumOpcoesMenu: Byte;
    vszTextoMenu: Array [0 .. 39] of Array [0 .. 40] of AnsiChar;
    vszValorMenu: Array [0 .. 39] of Array [0 .. 255] of AnsiChar;
    szMascaraDeCaptura: Array [0 .. 40] of AnsiChar;
    bTiposEntradaPermitidos: Byte;
    bTamanhoMinimo: Byte;
    bTamanhoMaximo: Byte;
    ulValorMinimo: UInt32;
    ulValorMaximo: UInt32;
    bOcultarDadosDigitados: Byte;
    bValidacaoDado: Byte;
    bAceitaNulo: Byte;
    szValorInicial: Array [0 .. 40] of AnsiChar;
    bTeclasDeAtalho: Byte;
    szMsgValidacao: Array [0 .. 83] of AnsiChar;
    szMsgConfirmacao: Array [0 .. 83] of AnsiChar;
    szMsgDadoMaior: Array [0 .. 83] of AnsiChar;
    szMsgDadoMenor: Array [0 .. 83] of AnsiChar;
    bCapturarDataVencCartao: Byte;
    ulTipoEntradaCartao: UInt32;
    bItemInicial: Byte;
    bNumeroCapturas: Byte;
    szMsgPrevia: Array [0 .. 83] of AnsiChar;
    bTipoEntradaCodigoBarras: Byte;
    bOmiteMsgAlerta: Byte;
    bIniciaPelaEsquerda: Byte;
    bNotificarCancelamento: Byte;
    bAlinhaPelaDireita: Byte;
  end;

  PW_GetData = Array [0 .. 10] of TPW_GetData;

  // Retorno de GetResult
  TPZ_GetData = record
    pszDataxx: Array [0 .. 10000] of AnsiChar;
  end;

  PSZ_GetData = Array [0 .. 0] of TPZ_GetData;

  //
  CPT_GetDado = record
    pszData: Array [0 .. 32] of AnsiChar;
  end;

  PSZ_GetDado = Array [0 .. 0] of CPT_GetDado;

  // Tempor�rio
  TPZ_GetDisplay = record
    szDspMsg: Array [0 .. 127] of AnsiChar;
    szAux: Array [0 .. 1023] of AnsiChar;
    szMsgPinPad: Array [0 .. 33] of AnsiChar;
  end;

  PSZ_GetDisplay = Array [0 .. 10] of TPZ_GetDisplay;

  // ====================================================================
  // Estrutura para armazenamento de dados para Tipos de Opera��o
  // ====================================================================
  TPW_Operations = record
    bOperType: Byte;
    szText: Array [0 .. 21] of char;
    szValue: Array [0 .. 21] of char;
  end;

  PW_Operations = Array [0 .. 9] of TPW_Operations;

  // ====================================================================
  // Estrutura para armazenamento de dados para confirma��o de transa��o
  // ====================================================================
  TConfirmaData = record
    szReqNum: Array [0 .. 10] of AnsiChar;
    szExtRef: Array [0 .. 50] of AnsiChar;
    szLocRef: Array [0 .. 50] of AnsiChar;
    szVirtMerch: Array [0 .. 18] of AnsiChar;
    szAuthSyst: Array [0 .. 20] of AnsiChar;
  end;

  ConfirmaData = Array [0 .. 0] of TConfirmaData;

  TPGWLib = class
  private
    // private
    { private declarations }
  protected
    { protected declarations }
  public

    constructor Create;
    Destructor Destroy; Override; // declara��o do metodo destrutor

    procedure GetVersao;

    function Aguardando: string;

    function Count: Integer;

    function Init(caminho: string): Integer;

    function TestaInit(iparam: Integer): Integer;

    function Instalacao: Integer;

    function venda: Integer;

    function iExecGetData(vstGetData: PW_GetData; iNumParam: Integer): Integer;

    function ConfirmaTrasacao: Integer;

    function ConfirmaTrasacaoAA: Integer;

    function GetParamConfirma: Integer;

    function GetParamPendenteConfirma: Integer;

    function PrintReturnDescription(iReturnCode: Integer;
      pszDspMsg: string): Integer;

    function PrintResultParams: Integer;

    function pszGetInfoDescription(wIdentificador: Integer): string;

    function Cancelamento: Integer;

    function Reimpressao: Integer;

    function Relatorios: Integer;

    function Admin: Integer;

    function MandaMemo(Descr: string): Integer;

    function CapturaPinPad(nome: string; identificador: Byte; min: Byte;
      max: Byte): Integer;

    function TesteAA: Integer;

    function TestaLoop: Integer;

    Function PORTADOR(PWDADO: string): Integer;

    Function OPERACAO(PWOPER: string): Integer;

  end;

Const

  // Informa��es Auxiliares para testes
  PWINFO_AUTHMNGTUSER = '314159';
  PWINFO_POSID = '60376';
  PWINFO_MERCHCNPJCPF = '20726059000179';
  PWINFO_DESTTCPIP = 'app.tpgw.ntk.com.br:17502';
  PWINFO_USINGPINPAD = '1';
  PWINFO_PPCOMMPORT = '0';

  // =====================================================================================*/
  // Fun��o Auxiliar
  // =====================================================================================*/
function tbKeyIsDown(const Key: Integer): Boolean;

// =====================================================================================*/
// Parametros que devem ser informados obrigatoriamente a cada transa��o
// =====================================================================================*/
procedure AddMandatoryParams;

// ========================================================================================================================================
{ Esta fun��o � utilizada para inicializar a biblioteca, e retorna imediatamente.
  Deve ser garantido que uma chamada dela retorne PWRET_OK antes de chamar qualquer outra fun��o.

  Entradas:
  pszWorkingDir Diret�rio de trabalho (caminho completo, com final nulo) para uso exclusivo do Pay&Go Web

  Sa�das: Nenhuma.

  Retorno: PWRET_OK .................................. Opera��o bem sucedida.
  PWRET_WRITERR ....................... Falha de grava��o no diret�rio informado.
  PWRET_INVCALL ......................... J� foi efetuada uma chamada � fun��o PW_iInit ap�s o carregamento da biblioteca.
  Outro ..................................Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 78 do Manual).
  Uma mensagem de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// ============================================================================================================================================
function PW_iInit(pszWorkingDir: AnsiString): SmallInt; StdCall;
  External 'PGWebLib.dll';

// =============================================================================================================================================
{ Esta fun��o deve ser chamada para iniciar uma nova transa��o atrav�s do Pay&Go Web, e retorna imediatamente.

  Entradas:
  iOper Tipo de transa��o a ser realizada (PWOPER_xxx, conforme tabela).

  Sa�das: Nenhuma

  Retorno:
  PWRET_OK .................................. Transa��o inicializada.
  PWRET_DLLNOTINIT ................... N�o foi executado PW_iInit.
  PWRET_NOTINST ........................ � necess�rio efetuar uma transa��o de Instala��o.
  Outro ................................ Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 78 Manual).
  Uma mensagem de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// ==============================================================================================================================================
function PW_iNewTransac(iOper: Byte): SmallInt; StdCall;
  External 'PGWebLib.dll';

// =============================================================================================================================================
{ Esta fun��o � utilizada para alimentar a biblioteca com as informa��es da transa��o a ser realizada,
  e retorna imediatamente. Estas informa��es podem ser:
  - Pr�-fixadas na Automa��o;
  - Capturadas do operador pela Automa��o antes do acionamento do Pay&Go Web;
  - Capturadas do operador ap�s solicita��o pelo Pay&Go Web (retorno PW_MOREDATA por PW_iExecTransac).


  Entradas:
  wParam Identificador do par�metro (PWINFO_xxx, ver lista completa em �9. Dicion�rio de dados�, p�gina 72).
  pszValue Valor do par�metro (string ASCII com final nulo).

  Sa�das: Nenhuma

  Retorno:
  PWRET_OK .................................. Parametro Acrescentado com sucesso.
  PWRET_INVPARAM .................... O valor do par�metro � inv�lido
  PWRET_DLLNOTINIT ................... N�o foi executado PW_iInit
  PWRET_TRNNOTINIT .................. N�o foi executado PW_iNewTransac (ver p�gina 14).
  PWRET_NOTINST ........................ � necess�rio efetuar uma transa��o de Instala��o
  Outro ........................................... Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 78). Uma
  mensagem de erro pode ser obtida atrav�s da fun��o PW_iGetResult
  (PWINFO_RESULTMSG).
}
// ==============================================================================================================================================
function PW_iAddParam(wParam: SmallInt; szValue: AnsiString): Int16; StdCall;
  External 'PGWebLib.dll';

// =============================================================================================================================================
{ Esta fun��o tenta realizar uma transa��o atrav�s do Pay&Go Web, utilizando os par�metros
  previamente definidos atrav�s de PW_iAddParam. Caso algum dado adicional precise ser informado,
  o retorno ser� PWRET_MOREDATA e o par�metro pvstParam retornar� informa��es dos dados que
  ainda devem ser capturados.

  Esta fun��o, por se comunicar com a infraestrutura Pay&Go Web, pode demorar alguns segundos
  para retornar.


  Entradas:
  piNumParam Quantidade m�xima de dados que podem ser capturados de uma vez, caso o retorno
  seja PW_MOREDATA. (Deve refletir o tamanho da �rea de mem�ria apontada por
  pvstParam.) Valor sugerido: 9.

  Sa�das:
  pvstParam  Lista e caracter�sticas dos dados que precisam ser informados para executar a transa��o.
  Consultar �8.Captura de dados� (p�gina 65) para a descri��o da estrutura
  e instru��es para a captura de dados adicionais. piNumParam Quantidade de dados adicionais que precisam ser capturados
  (quantidade de ocorr�ncias preenchidas em pvstParam

  Retorno:
  PWRET_OK .................................. Transa��o realizada com sucesso. Os resultados da transa��o devem ser obtidos atrav�s da fun��o PW_iGetResult.
  PWRET_NOTHING ....................... Nada a fazer, fazer as valida��es locais necess�rias e chamar a fun��o PW_iExecTransac novamente.
  PWRET_MOREDATA ................... Mais dados s�o requeridos para executar a transa��o.
  PWRET_DLLNOTINIT ................... N�o foi executado PW_iInit.
  PWRET_TRNNOTINIT .................. N�o foi executado PW_iNewTransac (ver p�gina 14).
  PWRET_NOTINST ........................ � necess�rio efetuar uma transa��o de Instala��o.
  PWRET_NOMANDATORY ........... Algum dos par�metros obrigat�rios n�o foi adicionado (ver p�gina 17).
  Outro ........................................... Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 78 Manual).
  Uma mensagem de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =============================================================================================================================================
function PW_iExecTransac(var pvstParam: PW_GetData; piNumParam: pointer): Int16;
  stdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iGetResult

  Descricao  :  Esta fun��o pode ser chamada para obter informa��es que resultaram da transa��o efetuada,
  independentemente de ter sido bem ou mal sucedida, e retorna imediatamente.

  Entradas   :  iInfo:	   C�digo da informa��o solicitada sendo requisitada (PWINFO_xxx, ver lista completa
  em �9. Dicion�rio de dados�, p�gina 36).
  ulDataSize:	Tamanho (em bytes) da �rea de mem�ria apontada por pszData. Prever um tamanho maior
  que o m�ximo previsto para o dado solicitado.


  Saidas     :  pszData:	   Valor da informa��o solicitada (string ASCII com terminador nulo).

  Retorno    :  PWRET_OK	         Sucesso. pszData cont�m o valor solicitado.
  PWRET_NODATA	   A informa��o solicitada n�o est� dispon�vel.
  PWRET_BUFOVFLW 	O valor da informa��o solicitada n�o cabe em pszData.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_TRNNOTINIT	N�o foi executado PW_iNewTransac (ver p�gina 10).
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iGetResult(iInfo: Int16; var pszData: PSZ_GetData;
  ulDataSize: UInt32): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================
{
  Funcao     :  PW_iConfirmation

  Descricao  :  Esta fun��o informa ao Pay&Go Web o status final da transa��o em curso (confirmada ou desfeita).
  Consultar �7. Confirma��o de transa��o� (p�gina 28) para informa��es adicionais.

  Entradas   :  ulStatus:   	Resultado da transa��o (PWCNF_xxx, ver lista abaixo).
  pszReqNum:  	Refer�ncia local da transa��o, obtida atrav�s de PW_iGetResult (PWINFO_REQNUM).
  pszLocRef:  	Refer�ncia da transa��o para a infraestrutura Pay&Go Web, obtida atrav�s de PW_iGetResult (PWINFO_AUTLOCREF).
  pszExtRef:  	Refer�ncia da transa��o para o Provedor, obtida atrav�s de PW_iGetResult (PWINFO_AUTEXTREF).
  pszVirtMerch:	Identificador do Estabelecimento, obtido atrav�s de PW_iGetResult (PWINFO_VIRTMERCH).
  pszAuthSyst:   Nome do Provedor, obtido atrav�s de PW_iGetResult (PWINFO_AUTHSYST).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         O status da transa��o foi atualizado com sucesso.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================
function PW_iConfirmation(ulResult: UInt32; pszReqNum: AnsiString;
  pszLocRef: AnsiString; pszExtRef: AnsiString; pszVirtMerch: AnsiString;
  pszAuthSyst: AnsiString): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iIdleProc

  Descricao  :  Para o correto funcionamento do sistema, a biblioteca do Pay&Go Web precisa de tempos em tempos
  executar tarefas autom�ticas enquanto n�o est� realizando nenhuma transa��o a pedido da Automa��o.

  Entradas   :  n�o h�.

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Opera��o realizada com �xito.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iIdleProc(): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================
{
  Funcao     :  PW_iGetOperations

  Descricao  :  Esta fun��o pode ser chamada para obter quais opera��es o Pay&Go WEB disponibiliza no momento,
  sejam elas administrativas, de venda ou ambas.

  Entradas   :              bOperType	      Soma dos tipos de opera��o a serem inclu�dos na estrutura de
  retorno (PWOPTYPE_xxx).
  piNumOperations	N�mero m�ximo de opera��es que pode ser retornado. (Deve refletir
  o tamanho da �rea de mem�ria apontada por pvstOperations).

  Sa�das     :              piNumOperations	N�mero de opera��es dispon�veis no Pay&Go WEB.
  vstOperations	   Lista das opera��es dispon�veis e suas caracter�sticas.


  Retorno    :  PWRET_OK	         Opera��o realizada com �xito.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================
function PW_iGetOperations(bOperType: Byte; var vstOperatios: PW_Operations;
  piNumOperations: Int16): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPAbort

  Descricao  :  Esta fun��o pode ser utilizada pela Automa��o para interromper uma captura de dados no PIN-pad
  em curso, e retorna imediatamente.

  Entradas   :  n�o h�.

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Opera��o interrompida com sucesso.
  PWRET_PPCOMERR	   Falha na comunica��o com o PIN-pad.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPAbort(): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPEventLoop

  Descricao  :  Esta fun��o dever� ser chamada em �loop� at� que seja retornado PWRET_OK (ou um erro fatal). Nesse
  �loop�, caso o retorno seja PWRET_DISPLAY o ponto de captura dever� atualizar o �display� com as
  mensagens recebidas da biblioteca.

  Entradas   :  ulDisplaySize	Tamanho (em bytes) da �rea de mem�ria apontada por pszDisplay.
  Tamanho m�nimo recomendado: 100 bytes.

  Saidas     :  pszDisplay	   Caso o retorno da fun��o seja PWRET_DISPLAY, cont�m uma mensagem de texto
  (string ASCII com terminal nulo) a ser apresentada pela Automa��o na interface com
  o usu�rio principal. Para o formato desta mensagem, consultar �4.3.Interface com o
  usu�rio�, p�gina 8.

  Retorno    :  PWRET_NOTHING	   Nada a fazer, continuar aguardando o processamento do PIN-pad.
  PWRET_DISPLAY	   Apresentar a mensagem recebida em pszDisplay e continuar aguardando o processamento do PIN-pad.
  PWRET_OK	         Captura de dados realizada com �xito, prosseguir com a transa��o.
  PWRET_CANCEL	   A opera��o foi cancelada pelo Cliente no PIN-pad (tecla [CANCEL]).
  PWRET_TIMEOUT	   O Cliente n�o realizou a captura no tempo limite.
  PWRET_FALLBACK	   Ocorreu um erro na leitura do cart�o, passar a aceitar a digita��o do n�mero do cart�o, caso j� n�o esteja aceitando.
  PWRET_PPCOMERR	   Falha na comunica��o com o PIN-pad.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_INVCALL	   N�o h� captura de dados no PIN-pad em curso.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPEventLoop(var pszDisplay; ulDisplaySize: UInt32): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPGetCard

  Descricao  :  Esta fun��o � utilizada para realizar a leitura de um cart�o (magn�tico, com chip com contato,
  ou sem contato) no PIN-pad.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPGetCard(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPGetPIN

  Descricao  :  Esta fun��o � utilizada para realizar a captura no PIN-pad da senha (ou outro dado criptografado)
  do Cliente.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPGetPIN(uiIndex: UInt16): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPGetData

  Descricao  :  Esta fun��o � utilizada para fazer a captura no PIN-pad de um dado n�o sens�vel do Cliente..

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  nao ha.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPGetData(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPGoOnChip

  Descricao  :  Esta fun��o � utilizada para realizar o processamento off-line (antes da comunica��o com o Provedor)
  de um cart�o com chip no PIN-pad.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPGoOnChip(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPFinishChip

  Descricao  :  Esta fun��o � utilizada para finalizar o processamento on-line (ap�s comunica��o com o Provedor)
  de um cart�o com chip no PIN-pad.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPFinishChip(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPConfirmData

  Descricao  :  Esta fun��o � utilizada para obter do Cliente a confirma��o de uma informa��o no PIN-pad.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPConfirmData(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPRemoveCard

  Descricao  :  Esta fun��o � utilizada para fazer uma remo��o de cart�o do PIN-pad.

  Entradas   :  n�o h�.

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_INVPARAM	   O valor de uiIndex informado n�o corresponde a uma captura de dados deste tipo.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPRemoveCard(): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPDisplay

  Descricao  :  Esta fun��o � utilizada para apresentar uma mensagem no PIN-pad

  Entradas   :  pszMsg   Mensagem a ser apresentada no PIN-pad. O caractere �\r� (0Dh) indica uma quebra de linha.

  Saidas     :  n�o h�.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPDisplay(pszMsg: AnsiString): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPWaitEvent

  Descricao  :  Esta fun��o � utilizada para aguardar a ocorr�ncia de um evento no PIN-pad.

  Entradas   :  n�o h�.

  Saidas     :  pulEvent	         Evento ocorrido.

  Retorno    :  PWRET_OK	         Captura iniciada com sucesso, chamar PW_iPPEventLoop para obter o resultado.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
function PW_iPPWaitEvent(var pulEvent: UInt32): Int16; StdCall;
  External 'PGWebLib.dll';
// function PW_iPPWaitEvent(pulEvent:UInt32):Int16; StdCall; External 'PGWebLib.dll';

// ===========================================================================*\
{ Funcao   : PW_iPPGenericCMD

  Descricao  :  Realiza comando gen�rico de PIN-pad.

  Entradas   :  uiIndex	�ndice (iniciado em 0) do dado solicitado na �ltima execu��o de PW_iExecTransac
  (�ndice do dado no vetor pvstParam).

  Saidas     :  N�o h�.

  Retorno    :  PWRET_xxx.
}
// ===========================================================================*/
function PW_iPPGenericCMD(uiIndex: UInt16): Int16; StdCall;
  External 'PGWebLib.dll';

// ===========================================================================*\
{ Funcao     : PW_iTransactionInquiry

  Descricao  :  Esta fun��o � utilizada para realizar uma consulta de transa��es
  efetuadas por um ponto de captura junto ao Pay&Go WEB.

  Entradas   :  pszXmlRequest	Arquivo de entrada no formato XML, contendo as informa��es
  necess�rias para fazer a consulta pretendida.
  ulXmlResponseLen Tamanho da string pszXmlResponse.

  Saidas     :  pszXmlResponse	Arquivo de sa�da no formato XML, contendo o resultado da consulta
  efetuada, o arquivo de sa�da tem todos os elementos do arquivo de entrada.

  Retorno    :  PWRET_xxx.
}
// ===========================================================================*/
function PW_iTransactionInquiry(const pszXmlRequest: char; pszXmlResponse: char;
  ulXmlResponseLen: UInt32): Int16; StdCall; External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iGetUserData

  Descricao  :  Esta fun��o � utilizada para obter um dado digitado pelo portador do cart�o no PIN-pad.

  Entradas   :  uiMessageId : Identificador da mensagem a ser exibida como prompt para a captura.
  bMinLen     : Tamanho m�nimo do dado a ser digitado.
  bMaxLen     : Tamanho m�ximo do dado a ser digitado.
  iToutSec    : Tempo limite para a digita��o do dado em segundos.

  Sa�das     :  pszData     : Dado digitado pelo portador do cart�o no PIN-pad.

  Retorno    :  PWRET_OK	         Opera��o realizada com �xito.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  PWRET_CANCEL	   A opera��o foi cancelada pelo Cliente no PIN-pad (tecla [CANCEL]).
  PWRET_TIMEOUT	   O Cliente n�o realizou a captura no tempo limite.
  PWRET_PPCOMERR	   Falha na comunica��o com o PIN-pad.
  PWRET_INVCALL	   N�o � poss�vel capturar dados em um PIN-pad n�o ABECS.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40). Uma mensagem
  de erro pode ser obtida atrav�s da fun��o PW_iGetResult (PWINFO_RESULTMSG).
}
// =========================================================================================================*/
// PW_iPPGetUserData(Uint16 uiMessageId, Byte bMinLen, Byte bMaxLen, Int16 iToutSec, char *pszData);
function PW_iPPGetUserData(uiMessageId: UInt16; bMinLen: Byte; bMaxLen: Byte;
  iToutSec: Int16; var pszData: PSZ_GetDado): Int16; StdCall;
  External 'PGWebLib.dll';

// =========================================================================================================*\
{ Funcao     :  PW_iPPGetPINBlock

  Descricao  :  Esta fun��o � utilizada para obter o PIN block gerado a partir de um dado digitado pelo usu�rio no PIN-pad.

  Entradas   :  bKeyID	      : �ndice da Master Key (para chave PayGo, utilizar o �ndice �12�).
  pszWorkingKey	: Sequ�ncia 32 caracteres utilizados para a gera��o do PIN block (dois valores iguais digitados pelo usu�rio com duas pszWorkingKey diferentes ir�o gerar dois PIN block diferentes.
  bMinLen	      : Tamanho m�nimo do dado a ser digitado (a partir de 4).
  bMaxLen     	: Tamanho m�ximo do dado a ser digitado.
  iToutSec    	: Tempo limite para a digita��o do dado em segundos.
  pszPrompt	   : Mensagem de 32 caracteres (2 linhas com 16 colunas) para apresenta��o no momento do pedido do dado do usu�rio.


  Sa�das     :  pszData        : PIN block gerado com base nos dados fornecidos na fun��o combinados com o dado digitado pelo usu�rio no PIN-pad.

  Retorno    :  PWRET_OK	         Opera��o realizada com �xito.
  PWRET_DLLNOTINIT	N�o foi executado PW_iInit.
  PWRET_NOTINST	   � necess�rio efetuar uma transa��o de Instala��o.
  PWRET_CANCEL	   A opera��o foi cancelada pelo Cliente no PIN-pad (tecla [CANCEL]).
  PWRET_TIMEOUT	   O Cliente n�o realizou a captura no tempo limite.
  PWRET_PPCOMERR	   Falha na comunica��o com o PIN-pad.
  Outro	            Outro erro de execu��o (ver �10. C�digos de retorno�, p�gina 40).
}
// =========================================================================================================*/
function PW_iPPGetPINBlock(bKeyID: Byte; pszWorkingKey: AnsiString;
  bMinLen: Byte; bMaxLen: Byte; iToutSec: Int16; pszPrompt: AnsiString;
  var pszData: PSZ_GetDado): Int16; StdCall; External 'PGWebLib.dll';

implementation

uses uTEF_Adm, uLib02, Udados, uFormaPagamento;

var

  mRCancelado: Integer;

  gfAutoAtendimento: Boolean;

  xpszData: Array [0 .. 20] of char;
  iRetorno: SmallInt;
  vGetdataArray: PW_GetData;
  vstGetData: PW_GetData;
  vGetpszData: PSZ_GetData;
  vGetpszErro: PSZ_GetData;

  vGetpszDado: PSZ_GetDado;

  vGetMsg: PSZ_GetDisplay;

  vGetpszDisplay: PSZ_GetDisplay;
  xNumParam: Int16;
  xSzValue: AnsiString;
  pvstParam: PW_GetData;

  gstConfirmData: ConfirmaData;

  iNumParam: Int16;
  iRet: Int16;

  PWEnums: TCEnums;

  txt: string;

  Y: Integer;

  // ============================================================================
  {
    Busca Parametros para confirma��o automatica da Ultima Transa��o de Venda.
  }
  // ============================================================================
function TPGWLib.GetParamConfirma: Integer;
var
  I: Integer;

begin

  iRetorno := PW_iGetResult(PWEnums.PWINFO_REQNUM, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szReqNum) do
  begin
    gstConfirmData[0].szReqNum[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_AUTEXTREF, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szExtRef) do
  begin
    gstConfirmData[0].szExtRef[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_AUTLOCREF, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szLocRef) do
  begin
    gstConfirmData[0].szLocRef[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_VIRTMERCH, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szVirtMerch) do
  begin
    gstConfirmData[0].szVirtMerch[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_AUTHSYST, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szAuthSyst) do
  begin
    gstConfirmData[0].szAuthSyst[I] := vGetpszData[0].pszDataxx[I];
  end;

  Result := iRetorno;

end;

// ============================================================================
{
  Busca Parametros para confirma��o automatica da Ultima Transa��o de Venda.
}
// ============================================================================
function TPGWLib.GetParamPendenteConfirma: Integer;
var
  I: Integer;

begin

  iRetorno := PW_iGetResult(PWEnums.PWINFO_PNDREQNUM, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szReqNum) do
  begin
    gstConfirmData[0].szReqNum[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_PNDAUTEXTREF, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szExtRef) do
  begin
    gstConfirmData[0].szExtRef[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_PNDAUTLOCREF, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szLocRef) do
  begin
    gstConfirmData[0].szLocRef[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_PNDVIRTMERCH, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szVirtMerch) do
  begin
    gstConfirmData[0].szVirtMerch[I] := vGetpszData[0].pszDataxx[I];
  end;

  iRetorno := PW_iGetResult(PWEnums.PWINFO_PNDAUTHSYST, vGetpszData,
    SizeOf(vGetpszData));
  for I := 0 to SizeOf(gstConfirmData[0].szAuthSyst) do
  begin
    gstConfirmData[0].szAuthSyst[I] := vGetpszData[0].pszDataxx[I];
  end;

  Result := iRetorno;

end;

procedure TPGWLib.GetVersao();
var
  iparam: Int16;
  Volta: String;
  vRetorno: Integer;
  winfo: Integer;
  wvolta: PChar;
  wxyvolta: string;
  xNumParam: Integer;
  Wretornaerro: PSZ_GetData;
  iRetErro: Integer;
begin

  xNumParam := 10;

  AddMandatoryParams();

  // Nova Transa��o para PWOPER_VERSION
  iRet := PW_iNewTransac(PWEnums.PWOPER_VERSION);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  MandaMemo(' ');
  MandaMemo('PWOPER_VERSION - AGUARDE ....');

  // Executa Transa��o
  vRetorno := PW_iExecTransac(vGetdataArray, @xNumParam);

  // Captura Informa��o
  iRet := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
    SizeOf(vGetpszData));

  MandaMemo(' ');
  MandaMemo('Vers�o da DLL : ' + vGetpszData[0].pszDataxx);

  // PrintResultParams();

end;

// =====================================================================================
{
  Administrativo
}
// =====================================================================================
function TPGWLib.Admin: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;
begin

  I := 0;

  iRet := PW_iNewTransac(PWEnums.PWOPER_ADMIN);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);
    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> 0) then
      begin
        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
      end;

      Break;

    end;

  end;

  // Busca necessidade de Confirma��o.
  iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
    SizeOf(vGetpszData));
  Volta := vGetpszData[0].pszDataxx;
  if (Volta = '1') then
  begin
    MandaMemo(' PWINFO_CNFREQ = 1');
    MandaMemo(' ');
    MandaMemo('� Necess�rio Confirmar esta Transa��o !');
    MandaMemo(' ');

    // Metodo confirma a transa��o
    ConfirmaTrasacao();

  end;

  PrintResultParams();

end;

// =====================================================================================
{
  Cancela uma Transa��o de Venda
}
// =====================================================================================
function TPGWLib.Cancelamento: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;

begin

  I := 0;

  iRet := PW_iNewTransac(PWEnums.PWOPER_SALEVOID);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);
    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> PWEnums.PWRET_OK) then
      begin
        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      if iRet <> PWEnums.PWRET_OK then
      begin

        MandaMemo('Erro : ...' + IntToStr(iRet));
        MandaMemo(' ');

        Break;

      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
      end;

      // Busca necessidade de Confirma��o.
      iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      if (Volta = '1') then
      begin
        MandaMemo(' PWINFO_CNFREQ = 1');
        MandaMemo(' ');
        MandaMemo('� Necess�rio Confirmar esta Transa��o !');
        MandaMemo(' ');

        // Metodo confirma a transa��o
        ConfirmaTrasacao();

      end;

      Break;

    end;

  end;

  PrintResultParams();

end;

function TPGWLib.CapturaPinPad(nome: string; identificador: Byte;
  min, max: Byte): Integer;
var
  teste: string;
  codigo: Byte;
  Volta: String;
  iRetErro: Integer;
  iRetValor: Integer;
  szWorkingKey: AnsiString;
  szPrompt: AnsiString;
begin

  // Dois valores diferentes ir�o gerar PIN blocks diferentes, mesmo que a senha digitada seja a mesma
  szWorkingKey := '12345678901234567890123456789012';
  // Mensagem sempre de 32 caracteres (2 linhas com 16 colunas)
  // para apresenta��o no momento do pedido do dado do usu�rio (chr(13) para quebra de linha).
  szPrompt := 'TESTE DE CAPTURA' + chr(13) + 'DE PIN BLOCK:   ';

  if (min < 1) then
  begin
    ShowMessage('Informar Tamanho Minimo V�lido');
    Result := 1;
    Exit;
  end;

  if (max < 1) then
  begin
    ShowMessage('Informar Tamanho Maximo V�lido');
    Result := 1;
    Exit;
  end;


  // Escolha efetuada

  // PW_iPPGetUserData
  { if (TelCaptura.RadioButton1.Checked = True) then
    begin
    if (nome = '') then
    begin
    ShowMessage('Escolha Mensagem V�lida');
    Result := 1;
    Exit;
    end;

    // Busca  valor da constante escolhida
    iRetValor := PORTADOR(nome);

    iRet := PW_iPPGetUserData(iRetValor,min,max,30,vGetpszDado);
    end; }

  // PW_iPPGetPINBlock
  { if (TelCaptura.RadioButton2.Checked = True) then
    begin
    if (min < 4) then
    begin
    ShowMessage('Informar Tamanho Minimo de 4 Caracteres');
    Result := 1;
    Exit;
    end;
    iRet := PW_iPPGetPINBlock(12, szWorkingKey, min, max, 30, szPrompt, vGetpszDado);
    end; }

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  { if (TelCaptura.RadioButton1.Checked = True) then
    begin
    // PW_iPPGetUserData
    TelCaptura.Label4.Visible := True;
    TelCaptura.Label4.Caption := 'Retorno de ' + nome + ' :' + vGetpszDado
    [0].pszData;
    end;

    if (TelCaptura.RadioButton2.Checked = True) then
    begin
    // PW_iPPGetPINBlock
    TelCaptura.Label4.Visible := True;
    TelCaptura.Label4.Caption := 'Retorno PW_iPPGetPINBlock: ' + vGetpszDado
    [0].pszData;
    end; }


  // Busca Todos os codigos e seus conteudos
  // PrintResultParams();


  // iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData, SizeOf(vGetpszData));
  // Volta := vGetpszData[0].pszDataxx;

end;

// =====================================================================================
{
  Funcao     :  ConfirmaTransacao

  Descricao  : Esta fun��o informa ao Pay&Go Web o status final da transa��o
  em curso (confirmada ou desfeita).Confirma��o de transa��o�
}
// =====================================================================================*/
function TPGWLib.ConfirmaTrasacao: Integer;
var
  strTagNFCe: String;
  strTagOP: AnsiString;
  falta: string;
  iRet: Integer;
  iRetorno: Integer;
  iRetErro: Integer;
  ulStatus: Integer;
  Menu: Byte;
  Volta: String;
  winfo: Integer;
  I: Integer;
  iRetI: Integer;
  Cont: string;
  tamanho: Integer;
  passou: Integer;
  testeNum: Array [0 .. 10] of char;
  WretornaConf: PSZ_GetData;
begin

  {

    Descri��o das Confirma��es:

    ' 1 - PWCNF_CNF_AUT         A transa��o foi confirmada pelo Ponto de Captura, sem interven��o do usu�rio '
    ' 2 - PWCNF_CNF_MANU_AUT    A transa��o foi confirmada manualmente na Automa��o
    ' 3 - PWCNF_REV_MANU_AUT    A transa��o foi desfeita manualmente na Automa��o
    ' 4 - PWCNF_REV_PRN_AU      A transa��o foi desfeita pela Automa��o, devido a uma falha na impress�o
    do comprovante (n�o fiscal). A priori, n�o usar.
    Falhas na impress�o n�o devem gerar desfazimento,
    deve ser solicitada a reimpress�o da transa�� '
    ' 5 - PWCNF_REV_DISP_AUT    A transa��o foi desfeita pela Automa��o, devido a uma falha no
    mecanismo de libera��o da mercadoria
    ' 6 - PWCNF_REV_COMM_AUT    A transa��o foi desfeita pela Automa��o, devido a uma falha de
    comunica��o/integra��o com o ponto de captura (Cliente Pay&Go Web'
    ' 7 - PWCNF_REV_ABORT       A transa��o n�o foi finalizada, foi interrompida durante a captura de dados'
    ' 8 - PWCNF_REV_OTHER_AUT   A transa��o foi desfeita a pedido da Automa��o, por um outro motivo n�o previsto.
    ' 9 - PWCNF_REV_PWR_AUT     A transa��o foi desfeita automaticamente pela Automa��o,
    devido a uma queda de energia (rein�cio abrupto do sistema).
    '10 - PWCNF_REV_FISC_AUT    A transa��o foi desfeita automaticamente pela Automa��o,
    devido a uma falha de registro no sistema fiscal (impressora S@T, on-line, etc.).
  }

  falta := ' 1 - PWCNF_CNF_AUT       ' + chr(13) + ' 2 - PWCNF_CNF_MANU_AUT  ' +
    chr(13) + ' 3 - PWCNF_REV_MANU_AUT  ' + chr(13) +
    ' 4 - PWCNF_REV_PRN_AU    ' + chr(13) + ' 5 - PWCNF_REV_DISP_AUT  ' +
    chr(13) + ' 6 - PWCNF_REV_COMM_AUT  ' + chr(13) +
    ' 7 - PWCNF_REV_ABORT     ' + chr(13) + ' 8 - PWCNF_REV_OTHER_AUT ' +
    chr(13) + ' 9 - PWCNF_REV_PWR_AUT   ' + chr(13) +
    '10 - PWCNF_REV_FISC_AUT  ' + chr(13);

  strTagNFCe := '';

  while (X < 5) do
  begin

    strTagNFCe := vInputBox('Escolha Confirma��o: ', falta, '', PWEnums.WInputH,
      PWEnums.WInputV);

    if (strTagNFCe = 'CANCELA') then
    begin
      mRCancelado := 1;
      Result := 1;
      Exit;
    end
    else
    begin
      mRCancelado := 0;
    end;

    try
      Menu := StrToInt(strTagNFCe);
    Except
      ShowMessage('Escolha uma op��o V�lida');
      Continue;
    end;

    case Menu of

      1:
        begin
          ulStatus := PWEnums.PWCNF_CNF_AUTO;
          Break;
        end;

      2:
        begin
          ulStatus := PWEnums.PWCNF_CNF_MANU_AUT;
          Break;
        end;
      3:
        begin
          ulStatus := PWEnums.PWCNF_REV_MANU_AUT;
          Break;
        end;
      4:
        begin
          ulStatus := PWEnums.PWCNF_REV_DISP_AUT;
          Break;
        end;

      5:
        begin
          ulStatus := PWEnums.PWCNF_REV_DISP_AUT;
          Break;
        end;

      6:
        begin
          ulStatus := PWEnums.PWCNF_REV_COMM_AUT;
          Break;
        end;

      7:
        begin
          ulStatus := PWEnums.PWCNF_REV_ABORT;
          Break;
        end;

      8:
        begin
          ulStatus := PWEnums.PWCNF_REV_OTHER_AUT;
          Break;
        end;

      9:
        begin
          ulStatus := PWEnums.PWCNF_REV_PWR_AUT;
          Break;
        end;

      10:
        begin
          ulStatus := PWEnums.PWCNF_REV_FISC_AUT;
          Break;
        end;
    else
      begin
        ShowMessage('Op��o Inv�lida');
        Continue;
      end;

    end;

  end;

  falta := '0 - Confirmar Ultima Transa��o ' + chr(13) +
    '1 - Informar Dados Manualmente ';

  while (X < 5) do
  begin

    strTagNFCe := vInputBox('Escolha Op��o: ', falta, '', PWEnums.WInputH,
      PWEnums.WInputV);

    if (strTagNFCe = 'CANCELA') then
    begin
      mRCancelado := 1;
      Result := 1;
      Exit;
    end
    else
    begin
      mRCancelado := 0;
    end;

    try
      iRetErro := StrToInt(strTagNFCe);
    Except
      ShowMessage('Escolha uma op��o V�lida');
      Continue;
    end;

    if (StrToInt(strTagNFCe) = 0) or (StrToInt(strTagNFCe) = 1) then
    begin
      Break;
    end
    else
    begin
      ShowMessage('Op��o Invalida');
      Continue
    end;

  end;

  if (strTagNFCe = '1') then
  begin

    falta := '';

    strTagOP := vInputBox('Digite valor de PWINFO_REQNUM: ', falta, '',
      PWEnums.WInputH, PWEnums.WInputV);
    StrLCopy(@gstConfirmData[0].szReqNum, PChar(strTagOP),
      SizeOf(gstConfirmData[0].szReqNum)); // 11

    strTagOP := vInputBox('Digite valor de PWINFO_AUTLOCREF: ', falta, '',
      PWEnums.WInputH, PWEnums.WInputV);
    StrLCopy(@gstConfirmData[0].szLocRef, PChar(strTagOP),
      SizeOf(gstConfirmData[0].szLocRef)); // 11

    strTagOP := vInputBox('Digite valor de PWINFO_AUTEXTREF: ', falta, '',
      PWEnums.WInputH, PWEnums.WInputV);
    StrLCopy(@gstConfirmData[0].szExtRef, PChar(strTagOP),
      SizeOf(gstConfirmData[0].szExtRef)); // 50

    strTagOP := vInputBox('Digite valor de PWINFO_VIRTMERCH: ', falta, '',
      PWEnums.WInputH, PWEnums.WInputV);
    StrLCopy(@gstConfirmData[0].szVirtMerch, PChar(strTagOP),
      SizeOf(gstConfirmData[0].szVirtMerch)); // 18

    strTagOP := vInputBox('Digite valor de PWINFO_AUTHSYST: ', falta, '',
      PWEnums.WInputH, PWEnums.WInputV);
    StrLCopy(@gstConfirmData[0].szAuthSyst, PChar(strTagOP),
      SizeOf(gstConfirmData[0].szAuthSyst)); // 20

  end
  else
  begin
    // Busca Parametros para Confirma��o da Transa��o
    // GetParamConfirma();
  end;

  // Executa Confirma��o
  iRet := PW_iConfirmation(ulStatus, gstConfirmData[0].szReqNum,
    gstConfirmData[0].szLocRef, gstConfirmData[0].szExtRef,
    gstConfirmData[0].szVirtMerch, gstConfirmData[0].szAuthSyst);

  if (iRet <> PWEnums.PWRET_OK) then
  begin

    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetorno := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;

      MandaMemo(Volta);
      MandaMemo(' ');
    end;

    // verifica se foi feito instala��o
    if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetorno := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;

      MandaMemo(Volta);
      MandaMemo(' ');
    end;

    ShowMessage('Outros Erros: ' + IntToStr(iRet));

    // Verificar Outros erros

    Exit;

  end;

  if (strTagNFCe = 'CANCELA') then
  begin
    mRCancelado := 1;
    Result := 1;
    Exit;
  end
  else
  begin
    mRCancelado := 0;
  end;





  // PrintResultParams();

  iRetorno := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, WretornaConf,
    SizeOf(WretornaConf));
  Volta := WretornaConf[0].pszDataxx;

  MandaMemo(Volta);
  MandaMemo(' ');

  if (iRet = PWEnums.PWRET_OK) then
  begin
    MandaMemo('CONFIRMA��O OK');
    MandaMemo(' ');
  end;

end;

// =====================================================================================
{
  Funcao     :  ConfirmaTransacaoAA
  Confirma��o Automatica para AutoAtendimento

  Descricao  : Esta fun��o informa ao Pay&Go Web o status final da transa��o
  em curso (confirmada ou desfeita).Confirma��o de transa��o�
}
// =====================================================================================*/
function TPGWLib.ConfirmaTrasacaoAA: Integer;
var
  ulStatus: Integer; //
  WretornaConf: PSZ_GetData;
begin

  ulStatus := PWEnums.PWCNF_CNF_AUTO;

  // Executa Confirma��o
  iRet := PW_iConfirmation(ulStatus, gstConfirmData[0].szReqNum,
    gstConfirmData[0].szLocRef, gstConfirmData[0].szExtRef,
    gstConfirmData[0].szVirtMerch, gstConfirmData[0].szAuthSyst);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    MandaMemo('Erro ao Confirmar Transa��o !!');
    MandaMemo(' ');
  end
  else
  begin
    MandaMemo('CONFIRMA��O OK');
    MandaMemo(' ');
  end;

  // PrintResultParams();

end;

function TPGWLib.Count: Integer;
begin

end;

constructor TPGWLib.Create;
begin

  inherited Create;
  PWEnums := TCEnums.Create;

end;

destructor TPGWLib.Destroy;
begin
  inherited;
end;

// =====================================================================================
{
  Funcao     :  AddMandatoryParams

  Descricao  :  Esta fun��o adiciona os par�metros obrigat�rios de toda mensagem para o
  Pay&Go Web.
}
// =====================================================================================*/
procedure AddMandatoryParams;
begin

  PW_iAddParam(PWEnums.PWINFO_AUTDEV, PWEnums.PGWEBLIBTEST_AUTDEV);
  PW_iAddParam(PWEnums.PWINFO_AUTVER, PWEnums.PGWEBLIBTEST_VERSION);
  PW_iAddParam(PWEnums.PWINFO_AUTNAME, PWEnums.PGWEBLIBTEST_AUTNAME);
  PW_iAddParam(PWEnums.PWINFO_AUTCAP, PWEnums.PGWEBLIBTEST_AUTCAP);
  PW_iAddParam(PWEnums.PWINFO_AUTHTECHUSER, PWEnums.PGWEBLIBTEST_AUTHTECHUSER);

end;

// =====================================================================================*\
{
  function  :  Init

  Descricao  :  Captura os dados neces�rios e executa PW_iInit.

  Sugest�o de Pasta C:\PAYGO (Deve ser Criada)
  "." Gera as Pastas de Dados e Log no Raiz da Aplica��o.

}
// =====================================================================================*/
function TPGWLib.Init(caminho: string): Integer;
var
  strTagNFCe: string;
  Volta: String;
  iRet: Integer;
  iparam: Int16;
  iretornar: Integer;
begin

  strTagNFCe := caminho;

  iretornar := PW_iInit(strTagNFCe);

  MandaMemo(' ');
  PrintReturnDescription(iretornar, '');

  if (iretornar = PWEnums.PWRET_WRITERR) then
  begin
    iRet := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
      SizeOf(vGetpszData));
    Volta := vGetpszData[0].pszDataxx;
    frmFechavenda.pnTEF.Caption := Volta;
    // ssageBox(PChar(Volta),'Erro',mb_OK+mb_IconInformation);
    // MandaMemo(Volta);

  end;

  PrintResultParams();

end;

// =====================================================================================*\
{
  function  :  Instalacao

  Descricao  :  Instala��o de um Ponto de Captura.

}
// =====================================================================================*/
function TPGWLib.Instalacao: Integer;
var
  szAux: char;
  strTagNFCe: string;
  StrValorTagNFCe: AnsiString;
  msg: AnsiString;
  pszData: char;
  iparam: Int16;
  Volta: String;
  xxxparam: SmallInt;
  I: Integer;
  comando: array [0 .. 39] of char;
  winfo: Integer;
  falta: string;
  iRet: Integer;
  iRetErro: Integer;
begin

  // ===============================================
  // Nova Transa��o - Instala��o
  // ===============================================
  iRet := PW_iNewTransac(PWEnums.PWOPER_INSTALL);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);

    MandaMemo(' ');
    PrintReturnDescription(iRet, '');

    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      MandaMemo('Numero de Parametros Ausentes: ' + IntToStr(xNumParam));

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> 0) then
      begin
        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
        // ShowMessage('Parametros Atuais');
      end;

      iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      if (Volta = '1') then
      begin
        MandaMemo(' PWINFO_CNFREQ = 1');
        MandaMemo(' ');
        MandaMemo('� Necess�rio Confirmar esta Transa��o !');
        MandaMemo(' ');
      end;

      Break;

    end;

  end;

  PrintResultParams();

end;

function TPGWLib.MandaMemo(Descr: string): Integer;
begin

  // TPrincipal.Memo1.Font.Size := 10;
  // TPrincipal.Memo1.Font.Name := 'Default';

   if (frmTEF_Adm.Memo1.Visible = False) then
    begin
    frmTEF_Adm.Memo1.Visible := True;
    end;
    frmTEF_Adm.Memo1.Lines.Add(Descr);

    Result := 0;

end;

// =====================================================================================
{
  Reimpress�o
}
// ======================================================================================
function TPGWLib.Reimpressao: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;
begin

  I := 0;

  iRet := PW_iNewTransac(PWEnums.PWOPER_REPRINT);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);

    MandaMemo(' ');
    PrintReturnDescription(iRet, '');

    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      MandaMemo('Numero de Parametros Ausentes: ' + IntToStr(xNumParam));

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> 0) then
      begin
        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
      end;

      // Busca Todos os codigos e seus conteudos
      PrintResultParams();


      // Retorna o recibo Via do Estabelecimento
      // iRet := PW_iGetResult(PWEnums.PWINFO_RCPTMERCH , vGetpszErro, SizeOf(vGetpszData));
      // Volta := vGetpszErro[0].pszDataxx;

      // Retorna o recibo Via do Cliente
      // iRet := PW_iGetResult(PWEnums.PWINFO_RCPTCHOLDER , vGetpszErro, SizeOf(vGetpszData));
      // Volta := vGetpszErro[0].pszDataxx;

      Break;

    end;

  end;

end;

// =====================================================================================
{
  Relat�rios
}
// ======================================================================================
function TPGWLib.Relatorios: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;
begin

  I := 0;

  iRet := PW_iNewTransac(PWEnums.PWOPER_RPTDETAIL);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);
    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> 0) then
      begin
        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      // Esta Op��o N�o precisa de Confirma��o, mas caso exista uma transa��o pendente
      // vai armazenar informa��es para executar uma confirma��o no Menu.
      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end;

      Break;

    end;

  end;

  // Busca Todos os codigos e seus conteudos
  PrintResultParams();

end;

// =====================================================================================
{
  Fun��o Auxiliar. "n�o esta sendo usada no momento"
}
// ======================================================================================
function tbKeyIsDown(const Key: Integer): Boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

// =====================================================================================*\
{
  function  :  TestaInit

  Descricao  :  Verifica se PW_iInit j� foi executado.

  Entradas   :  Resultado da Opera��o

  Saidas     :  nao ha.

  Retorno    :  C�digo de resultado da opera��o.

}
// =====================================================================================*/
function TPGWLib.TestaInit(iparam: Integer): Integer;
var
  Volta: String;
  iRet: Integer;
begin

  if (iparam = PWEnums.PWRET_DLLNOTINIT) then
  begin
    iRet := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
      SizeOf(vGetpszData));
    Volta := vGetpszData[0].pszDataxx;

    MandaMemo(Volta);
    MandaMemo(' ');

    Result := iparam;
  end
  else
  begin
    Result := PWEnums.PWRET_OK;
  end;

end;


// ==========================================================
// Fun��o apenas para teste
// ==========================================================

function TPGWLib.TestaLoop: Integer;
var
  I: Integer;
  wtecla: Integer;
  Key: Integer;
begin

  while I < 1000 do
  begin
    if GetAsyncKeyState(VK_SPACE) <> 0 then
    begin
      ShowMessage('A Tecla ESPA�O foi pressionada.');
    end
    else if GetAsyncKeyState(VK_ESCAPE) <> 0 then
    begin
      ShowMessage('Tecla ESC foi pressionada.');
    end
    else if GetAsyncKeyState(VK_RBUTTON) <> 0 then
    begin
      ShowMessage('O Bot�o DIREITO do mouse foi pressionado.');
    end
    else if GetAsyncKeyState(Ord('A')) <> 0 then
    begin
      ShowMessage('A tecla "A" pressionada.');
    end;

    I := I + 1;
    sleep(500);

  end;

end;

// ========================================================
{
  Fun��o que Executa Opera��o  de
  Auto Atendimento
}
// ========================================================
function TPGWLib.TesteAA: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;
  ulEvent: UInt32;
  szDspMsg: PSZ_GetData;
begin

  gfAutoAtendimento := True;

  ulEvent := 0;

  I := 0;

  while I < 10 do
  begin

    MandaMemo('AGUARDANDO CARTAO PARA INICIAR OPERACAO!!!');
    MandaMemo(' ');

    // iRet := PW_iPPDisplay('Valor da Mercadoria = R$ 1,00');
    iRet := PW_iPPDisplay('INSIRA OU PASSE    O CARTAO');
    if (iRet <> PWEnums.PWRET_OK) then
    begin
      MandaMemo('Erro em PW_iPPDisplay =  ' + IntToStr(iRet));
      MandaMemo(' ');
      Exit;
    end;

    while I < 10 do
    begin
      iRet := PW_iPPEventLoop(szDspMsg, SizeOf(szDspMsg));
      if (iRet = PWEnums.PWRET_DISPLAY) then
      begin
        MandaMemo(szDspMsg[0].pszDataxx);
        MandaMemo(' ');
      end;

      if (iRet = PWEnums.PWRET_TIMEOUT) then
      begin
        Result := iRet;
        Exit;
      end;

      if (iRet = PWEnums.PWRET_OK) then
      begin
        Break;
      end;

      sleep(1000);

      Aguardando();

    end;

    // Aguarda o cart�o do cliente
    iRet := PW_iPPWaitEvent(ulEvent);
    if (iRet <> PWEnums.PWRET_OK) then
    begin
      MandaMemo('Erro em PPWaitEvent = ' + IntToStr(iRet));
      MandaMemo(' ');
      Exit;
    end;

    while I < 10 do
    begin
      iRet := PW_iPPEventLoop(szDspMsg, SizeOf(szDspMsg));
      if (iRet = PWEnums.PWRET_DISPLAY) then
      begin
        MandaMemo(szDspMsg[0].pszDataxx);
        MandaMemo(' ');
      end;

      if (iRet = PWEnums.PWRET_TIMEOUT) then
      begin
        Result := iRet;
        Exit;
      end;

      if (iRet = PWEnums.PWRET_OK) then
      begin
        Break;
      end;

      sleep(500);

      Aguardando();

      // Verifica se Teclou <ESC>
      if GetAsyncKeyState(VK_ESCAPE) <> 0 then
      begin
        iRetErro := PW_iPPAbort();
        MandaMemo(' ');
        MandaMemo('TRANSA��O ABORTADA PELA APLICA��O');
        mRCancelado := 1;
        Result := 1;
        Exit;
        Break;
      end
      else
      begin
        mRCancelado := 0;
      end;

    end;

    // PWPPEVT_ICC        - Foi detectada a presen�a de um cart�o com chip
    // PWPPEVT_MAGSTRIPE  - Foi passado um cart�o magn�tico
    // PWPPEVT_CTLS       - Foi detectada a presen�a de um cart�o sem contato
    if ((ulEvent = PWEnums.PWPPEVT_ICC) or (ulEvent = PWEnums.PWPPEVT_MAGSTRIPE)
      or (ulEvent = PWEnums.PWPPEVT_CTLS)) then
    begin
      Break;
    end;

  end;

  // Exibe mensagem processando no PIN-pad
  iRet := PW_iPPDisplay('PROCESSANDO...');
  if (iRet <> PWEnums.PWRET_OK) then
  begin
    MandaMemo('Erro em PW_iPPDisplay =  ' + IntToStr(iRet));
    MandaMemo(' ');
    Exit;
  end;

  while I < 10 do
  begin
    iRet := PW_iPPEventLoop(szDspMsg, SizeOf(szDspMsg));
    if (iRet = PWEnums.PWRET_DISPLAY) then
    begin
      MandaMemo(szDspMsg[0].pszDataxx);
      MandaMemo(' ');
    end;

    if (iRet = PWEnums.PWRET_TIMEOUT) then
    begin
      Result := iRet;
      Exit;
    end;

    if (iRet = PWEnums.PWRET_OK) then
    begin
      Break;
    end;

    sleep(1000);

    Aguardando();

  end;


  // Inicializa a transa��o de venda

  iRet := PW_iNewTransac(PWEnums.PWOPER_SALE);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    MandaMemo('Erro PW_iNewTransac: ' + IntToStr(iRet));
    MandaMemo(' ');
  end;

  // Parametros obrigat�rios
  AddMandatoryParams;

  // Adiciona Valor Para Testar Opera��o;
  PW_iAddParam(PWEnums.PWINFO_TOTAMNT, '100');
  PW_iAddParam(PWEnums.PWINFO_CARDTYPE, '1');
  PW_iAddParam(PWEnums.PWINFO_CARDTYPE, '1');

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin

    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      MandaMemo('Processando...');
      MandaMemo('');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);

    MandaMemo(' ');
    PrintReturnDescription(iRet, '');

    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      MandaMemo('Numero de Parametros Ausentes: ' + IntToStr(xNumParam));

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna
      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> PWEnums.PWRET_OK) then
      begin
        iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
          SizeOf(vGetpszData));
        Volta := vGetpszData[0].pszDataxx;
        if (Volta = '1') then
        begin
          MandaMemo(' PWINFO_CNFREQ = 1');
          MandaMemo(' ');
          MandaMemo('Erro: ' + IntToStr(iRetErro) +
            ' , � Necess�rio Confirmar esta Transa��o !');
          MandaMemo(' ');

          // Metodo confirma a transa��o
          ConfirmaTrasacao();
        end;

        Exit;
      end
      else
      begin
        // I := I+1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        // I := I+1;
        Continue;
      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
      end;

      iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      if (Volta = '1') then
      begin
        MandaMemo(' PWINFO_CNFREQ = 1');
        MandaMemo(' ');
        MandaMemo('Confirmando Transa��o ...');
        MandaMemo(' ');

        // Metodo confirma a transa��o Automaticamente
        ConfirmaTrasacaoAA();

      end;

      Break;

    end;

  end;

  PrintResultParams();

  gfAutoAtendimento := False;

end;

// ========================================================
{

  Executa Nova Transa�ao de Venda  PWEnums.PWOPER_SALE

}
// ========================================================
function TPGWLib.venda: Integer;
var
  iparam: Integer;
  Volta: String;
  iRet: Integer;
  iRetI: Integer;
  iRetErro: Integer;
  strNome: String;
  I: Integer;
  xloop: Integer;
  voltaA: AnsiChar;

begin

  // Verifica se n�o esta Marcado para Auto Atendimento
  if (gfAutoAtendimento = True) then
  begin
    gfAutoAtendimento := False;
  end;

  I := 0;

  iRet := PW_iNewTransac(PWEnums.PWOPER_SALE);

  if (iRet <> PWEnums.PWRET_OK) then
  begin
    // Verifica se Foi inicializada a biblioteca
    if (iRet = PWEnums.PWRET_DLLNOTINIT) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      frmFechavenda.pnTEF.Caption := Volta;
    end
    // verifica se foi feito instala��o
    else if (iRet = PWEnums.PWRET_NOTINST) then
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end
    // Outro Erro
    else
    begin
      iRetErro := PW_iGetResult(PWEnums.PWINFO_RESULTMSG, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      MandaMemo(Volta);
    end;

    Exit;

  end;

  AddMandatoryParams; // Parametros obrigat�rios

  // =====================================================
  // Loop Para Capturar Dados e executar Transa��o
  // =====================================================
  while I < 100 do
  begin


    // Coloca o valor 10 (tamanho da estrutura de entrada) no par�metro iNumParam
    xNumParam := 10;

    // Tenta executar a transa��o
    if (iRet <> PWEnums.PWRET_NOTHING) then
    begin
      // ShowMessage('Processando...');
    end;

    iRet := PW_iExecTransac(vGetdataArray, @xNumParam);

    frmFechavenda.pnTEF.Caption := ' ';
    PrintReturnDescription(iRet, '');

    if (iRet = PWEnums.PWRET_MOREDATA) then
    begin

      frmFechavenda.pnTEF.Caption := 'Numero de Parametros Ausentes: ' +
        IntToStr(xNumParam);

      // Tenta capturar os dados faltantes, caso ocorra algum erro retorna

      iRetErro := iExecGetData(vGetdataArray, xNumParam);
      if (iRetErro <> PWEnums.PWRET_OK) then
      begin
        if (mRCancelado = 1) then
        begin
          frmFechavenda.pnTEF.Caption := ' ';;
          frmFechavenda.pnTEF.Caption := 'CANCELADO PELA APLICA��O !!';
        end;

        iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
          SizeOf(vGetpszData));
        Volta := vGetpszData[0].pszDataxx;
        if (Volta = '1') then
        begin
//     MandaMemo(' PWINFO_CNFREQ = 1');
//          MandaMemo(' ');
          MandaMemo('� Necess�rio Confirmar esta Transa��o !');
//          MandaMemo(' ');

          // Metodo confirma a transa��o
          ConfirmaTrasacao();

        end;

        // Busca Todos os codigos e seus conteudos
        PrintResultParams();

        Exit;
      end
      else
      begin
        I := I + 1;
        Continue;
      end;

    end
    else
    begin

      if (iRet = PWEnums.PWRET_NOTHING) then
      begin
        I := I + 1;
        Continue;
      end;

      if (iRet = PWEnums.PWRET_FROMHOSTPENDTRN) then
      begin
        // Busca Parametros da Transa��o Pendente
        GetParamPendenteConfirma();
      end
      else
      begin
        // Busca Parametros da Transa��o Atual
        GetParamConfirma();
      end;

      iRet := PW_iGetResult(PWEnums.PWINFO_CNFREQ, vGetpszData,
        SizeOf(vGetpszData));
      Volta := vGetpszData[0].pszDataxx;
      if (Volta = '1') then
      begin
        MandaMemo(' PWINFO_CNFREQ = 1');
        MandaMemo(' ');
        MandaMemo('� Necess�rio Confirmar esta Transa��o !');
        MandaMemo(' ');

        // Metodo confirma a transa��o
        ConfirmaTrasacao();

      end;

      // Busca Todos os codigos e seus conteudos
      PrintResultParams();

      Break;

    end;

  end;

end;

// =====================================================================================*\
{ Funcao     :  iExecGetData

  Descricao  :  Esta fun��o obt�m dos usu�rios os dados requisitado pelo Pay&Go Web.

  Entradas   :  vstGetData  :  Vetor com as informa��es dos dados a serem obtidos.
  iNumParam   :  N�mero de dados a serem obtidos.

  Saidas     :  nao ha.

  Retorno    :  C�digo de resultado da opera��o.
}
// =====================================================================================*/
function TPGWLib.iExecGetData(vstGetData: PW_GetData;
  iNumParam: Integer): Integer;
var
  I: Integer;
  strTagNFCe: string;
  falta: string;
  iRet: Integer;
  iRetByte: Byte;
  iRetErro: Integer;
  Volta: String;
  strNome: string;
  xloop: Integer;
  ulEvent: UInt32;
  X: Integer;
  iRetStr: string;
  wTipoDado: Integer;
  iKey: Int16;
begin

  strNome := '';
  strTagNFCe := '';

  ulEvent := 0;
  I := 0;

  // ==========================================================
  // Loop Para Capturar e Adicionar dados solicitados pela DLL.
  // Enquanto houverem dados para capturar
  // ==========================================================
  while I < iNumParam do

  begin

    // Imprime na tela qual informa��o est� sendo capturada
    iRetStr := pszGetInfoDescription(vstGetData[I].wIdentificador);
    MandaMemo('dado a Capturar: ' + iRetStr + ' ' +
      IntToStr(vstGetData[I].wIdentificador));

    case (vstGetData[I].bTipoDeDado) of


      // Dados de Menu

      PWEnums.PWDAT_MENU:

        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: MENU - ' + IntToStr(iRetByte));
          MandaMemo(vstGetData[I].szPrompt);

          // Caso o modo autoatendimento esteja ativado, faz o menu no PIN-pad
          if (gfAutoAtendimento = True) then
          begin
            if (vstGetData[I].bNumOpcoesMenu > 2) then
            begin
              MandaMemo('MUITAS OP��ES! MENU NAO PODE SER FEITO NO PINPAD!!!');
              // Result := 999;
              // Exit;
            end
            else
            begin
              MandaMemo('EXECUTANDO MENU NO PINPAD');
            end;

            // falta := '<F1> - ' + vstGetData[I].vszTextoMenu[0] + chr(13) + '<F2> - ' + vstGetData[I].vszTextoMenu[1] + chr(13) + '<F3> - ' + vstGetData[I].vszTextoMenu[2];
            falta := '<F1> - ' + vstGetData[I].vszTextoMenu[0] + chr(13) +
              '<F2> - ' + vstGetData[I].vszTextoMenu[1];

            while I < 10 do
            begin

              // Exibe a mensagem no PIN-pad
              iRet := PW_iPPDisplay(falta);
              if (iRet <> PWEnums.PWRET_OK) then
              begin
                MandaMemo('Erro em PW_iPPDisplay =  ' + IntToStr(iRet));
                MandaMemo(' ');
                Result := iRet;
                Exit;
              end;

              while I < 10 do
              begin
                iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
                if (iRet = PWEnums.PWRET_DISPLAY) then
                begin
                  MandaMemo(vGetpszDisplay[0].szDspMsg);
                  MandaMemo(' ');
                end;

                if (iRet = PWEnums.PWRET_TIMEOUT) then
                begin
                  Result := iRet;
                  Exit;
                end;

                if (iRet = PWEnums.PWRET_OK) then
                begin
                  Break;
                end;

                sleep(1000);

                Aguardando();

              end;

              // Aguarda a sele��o da op��o pelo cliente
              ulEvent := PWEnums.PWPPEVTIN_KEYS;
              iRet := PW_iPPWaitEvent(ulEvent);
              if (iRet <> PWEnums.PWRET_OK) then
              begin
                MandaMemo('Erro em PPWaitEvent ' + IntToStr(iRet));
                Result := iRet;
                Exit;
              end;

              while I < 10 do
              begin

                iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
                if (iRet = PWEnums.PWRET_DISPLAY) then
                begin
                  MandaMemo(vGetpszDisplay[0].szDspMsg);
                  MandaMemo(' ');
                end;

                if (iRet = PWEnums.PWRET_TIMEOUT) then
                begin
                  Result := iRet;
                  Exit;
                end;

                if (iRet = PWEnums.PWRET_OK) then
                begin
                  Break;
                end;

                sleep(1000);

                Aguardando();

              end;

              if (ulEvent = PWEnums.PWPPEVT_KEYF1) then
              begin
                iKey := 48;
                Break;
              end
              else if (ulEvent = PWEnums.PWPPEVT_KEYF2) then
              begin
                iKey := 49;
                Break;
              end
              else if (ulEvent = PWEnums.PWPPEVT_KEYCANC) then
              begin
                iRet := PW_iPPDisplay('    OPERACAO        CANCELADA   ');
                if (iRet <> PWEnums.PWRET_OK) then
                begin
                  MandaMemo('Erro em PW_iPPDisplay =  ' + IntToStr(iRet));
                  MandaMemo(' ');
                  Result := iRet;
                  Exit;
                end;

                while I < 10 do
                begin

                  iRet := PW_iPPEventLoop(vGetpszDisplay,
                    SizeOf(vGetpszDisplay));
                  if (iRet = PWEnums.PWRET_DISPLAY) then
                  begin
                    MandaMemo(vGetpszDisplay[0].szDspMsg);
                    MandaMemo(' ');
                  end;

                  if (iRet = PWEnums.PWRET_TIMEOUT) then
                  begin
                    Result := iRet;
                    Exit;
                  end;

                  if (iRet = PWEnums.PWRET_OK) then
                  begin
                    Result := PWEnums.PWRET_CANCEL;
                    Exit;
                  end;

                  sleep(1000);

                  Aguardando();

                end;

              end

              else

              begin

                iRet := PW_iPPDisplay('   UTILIZE AS   TECLAS F1 OU F2');
                if (iRet <> PWEnums.PWRET_OK) then
                begin
                  MandaMemo('Erro em PW_iPPDisplay =  ' + IntToStr(iRet));
                  MandaMemo(' ');
                  Result := iRet;
                  Exit;
                end;

                while I < 10 do
                begin

                  iRet := PW_iPPEventLoop(vGetpszDisplay,
                    SizeOf(vGetpszDisplay));
                  if (iRet = PWEnums.PWRET_DISPLAY) then
                  begin
                    MandaMemo(vGetpszDisplay[0].szDspMsg);
                    MandaMemo(' ');
                  end;

                  if (iRet = PWEnums.PWRET_TIMEOUT) then
                  begin
                    Result := iRet;
                    Exit;
                  end;

                  if (iRet = PWEnums.PWRET_OK) then
                  begin
                    Result := iRet;
                    Exit;
                  end;

                  sleep(100);

                  Aguardando();

                end;

              end;

            end;

          end

          else

          begin

            falta := vstGetData[I].szPrompt + chr(13);
            falta := falta + ' ' + chr(13);

            X := 0;

            while (X < vstGetData[I].bNumOpcoesMenu) do
            begin

              falta := falta + IntToStr(X) + ' - ' + vstGetData[I].vszTextoMenu
                [X] + chr(13);

              X := X + 1;
            end;

            X := 0;

            strNome := '';

            while (X < 5) do
            begin
              strNome := vInputBox('Selecione Op��o', falta, '',
                PWEnums.WInputH, PWEnums.WInputV);

              try
                if (strNome = 'CANCELA') then
                begin
                  Break;
                end;

                iRetErro := StrToInt(strNome);
              Except
                ShowMessage('Escolha uma op��o V�lida');
                Continue;
              end;

              if (StrToInt(strNome) > (vstGetData[I].bNumOpcoesMenu - 1)) then
              begin
                ShowMessage('Op��o Inexistente');
                Continue;
              end;

              // Busca C�digo Referente em vszValorMenu
              strNome := vstGetData[I].vszValorMenu[StrToInt(strNome)];

              Break;

            end;

          end;

          if (strNome = 'CANCELA') then
          begin
            Break;
          end
          else
          begin
            // Caso seja Auto Atendimento pega pela tecla escolhida
            if (gfAutoAtendimento = True) then
            begin
              strNome := vstGetData[I].vszValorMenu[iKey - 48];
            end;

            // Busca Identificador do Menu Escolhido
            iRet := PW_iAddParam(vstGetData[I].wIdentificador, strNome);
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := PWEnums.PWRET_OK;
            end
            else
            begin
              Result := iRet;
            end;

            Break;

          end;

        end;



      // Entrada Digitada

      PWEnums.PWDAT_TYPED:
        begin
          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: DIGITADO - ' + IntToStr(iRetByte));
          MandaMemo(vstGetData[I].szPrompt);
          MandaMemo('Tamanho Minimo: ' +
            IntToStr(vstGetData[I].bTamanhoMinimo));
          MandaMemo('Tamanho Maximo: ' +
            IntToStr(vstGetData[I].bTamanhoMaximo));
          iRetStr := vstGetData[I].szValorInicial;
          MandaMemo('Valor Atual: ' + iRetStr);
          MandaMemo('Mascara: ' + vstGetData[I].szMascaraDeCaptura);
          iRetByte := vstGetData[I].bValidacaoDado;
          MandaMemo('Valida��o de Dado: ' + IntToStr(iRetByte));
          MandaMemo(' ');

          falta := vstGetData[I].szPrompt;

          X := 0;

          while (X < 5) do
          begin

            wTipoDado := 0;

            // Data
            if (vstGetData[I].wIdentificador = PWEnums.PWINFO_TRNORIGDATE) then
            begin
              if (vstGetData[I].szMascaraDeCaptura = '@@/@@/@@@@') then
              begin
                wTipoDado := 1;
              end
              else
              begin
                wTipoDado := 4;
              end;
            end;
            // Valor
            if (vstGetData[I].wIdentificador = PWEnums.PWINFO_TOTAMNT) then
            begin
              wTipoDado := 2;
            end;
            // Horario
            if ((vstGetData[I].wIdentificador = 123) or
              (vstGetData[I].wIdentificador = 124)) then
            begin
              wTipoDado := 3;
            end;

            if (wTipoDado = 2) then
            begin
              falta := falta + '  ' + vstGetData[I].szMascaraDeCaptura;
              // ImputBox Especifico Para Valores Monetarios
              strTagNFCe := TCustomInputBox.InputBox('Informar: ', falta, '',
                PWEnums.WInputH, PWEnums.WInputV);
              // Retira Ponto e virgula da String
              strTagNFCe := tirapontos(strTagNFCe);
              if (strTagNFCe = '000') then
                strTagNFCe := '';
            end
            else if (wTipoDado = 0) then
            begin
              strTagNFCe := vInputBox('Informar: ', falta, '', PWEnums.WInputH,
                PWEnums.WInputV);
            end
            else
            begin
              strTagNFCe := vMInputBox('Informar: ', falta, '', PWEnums.WInputH,
                PWEnums.WInputV, wTipoDado);
            end;

            if (strTagNFCe = 'CANCELA') then
            begin
              mRCancelado := 1;
              Break;
            end
            else
            begin
              mRCancelado := 0;
            end;

            if (Length(strTagNFCe) > vstGetData[I].bTamanhoMaximo) then
            begin
              ShowMessage('Valor Maior que Tamanho Maximo');
              Continue;
            end;

            if (Length(strTagNFCe) < vstGetData[I].bTamanhoMinimo) then
            begin
              ShowMessage('Valor Menor que Tamanho Minimo');
              Continue;
            end;

            iRet := PW_iAddParam(vstGetData[I].wIdentificador, strTagNFCe);
            if (iRet <> 0) then
            begin
              ShowMessage('Erro ao Adicionar Parametros');
              Result := iRet;
              Exit;
            end
            else
            begin
              Result := PWEnums.PWRET_OK;
              Break;
            end;

          end;

          if (strTagNFCe = 'CANCELA') then
          begin
            Result := 1;
            Break;
          end
          else
          begin
            I := I + 1;

            Continue;
          end;

        end;


      // Dados do Cart�o

      PWEnums.PWDAT_CARDINF:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: DADOS DO CARTAO - ' + IntToStr(iRetByte));

          if (vstGetData[I].ulTipoEntradaCartao = 1) then
          begin
            // ShowMessage('ulTipoEntrada = 1');
          end;

          iRet := PW_iPPGetCard(I);

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            // if((iRet <> PWEnums.PWRET_OK) And (iRet <> PWEnums.PWRET_DISPLAY) And (iRet <> PWEnums.PWRET_NOTHING)) then
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            // Verifica se Teclou <ESC>
            if GetAsyncKeyState(VK_ESCAPE) <> 0 then
            begin
              iRetErro := PW_iPPAbort();
              MandaMemo(' ');
              MandaMemo('TRANSA��O ABORTADA PELA APLICA��O');
              mRCancelado := 1;
              Result := 1;
              Exit;
              Break;
            end
            else
            begin
              mRCancelado := 0;
            end;

          end;

        end;



      // Remo��o do cart�o do PIN-pad.

      PWEnums.PWDAT_PPREMCRD:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: PWDAT_PPREMCRD - ' + IntToStr(iRetByte));

          iRet := PW_iPPRemoveCard();

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            // if((iRet <> PWEnums.PWRET_OK) And (iRet <> PWEnums.PWRET_DISPLAY) And (iRet <> PWEnums.PWRET_NOTHING)) then
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

          end;

        end;




      // Captura da senha criptografada

      PWEnums.PWDAT_PPENCPIN:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: SENHA - ' + IntToStr(iRetByte));

          iRet := PW_iPPGetPIN(I);
          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          while xloop < 1000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            // if((iRet <> PWEnums.PWRET_OK) And (iRet <> PWEnums.PWRET_DISPLAY) And (iRet <> PWEnums.PWRET_NOTHING)) then
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            if (iRet = PWEnums.PWRET_TIMEOUT) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            // Verifica se Teclou <ESC>
            if GetAsyncKeyState(VK_ESCAPE) <> 0 then
            begin
              iRetErro := PW_iPPAbort();
              MandaMemo(' ');
              MandaMemo('TRANSA��O ABORTADA PELA APLICA��O');
              mRCancelado := 1;
              Exit;
              Break;
            end
            else
            begin
              mRCancelado := 0;
            end;

          end;

        end;



      // processamento off-line de cart�o com chip

      PWEnums.pWDAT_CARDOFF:

        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: CHIP OFFLINE - ' + IntToStr(iRetByte));

          iRet := PW_iPPGoOnChip(I);

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            if (iRet = PWEnums.PWRET_TIMEOUT) then
            begin
              Result := iRet;
              Exit;
            end;

            // if((iRet <> PWEnums.PWRET_OK) And (iRet <> PWEnums.PWRET_DISPLAY) And (iRet <> PWEnums.PWRET_NOTHING)) then
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            // Verifica se Teclou <ESC>
            if GetAsyncKeyState(VK_ESCAPE) <> 0 then
            begin
              iRetErro := PW_iPPAbort();
              MandaMemo(' ');
              MandaMemo('TRANSA��O ABORTADA PELA APLICA��O');
              mRCancelado := 1;
              Result := 1;
              Exit;
            end
            else
            begin
              mRCancelado := 0;
            end;

          end;

        end;



      // Captura de dado digitado no PIN-pad

      PWEnums.PWDAT_PPENTRY:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: DADO DIGITADO NO PINPAD - ' +
            IntToStr(iRetByte));

          iRet := PW_iPPGetData(I);

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            if (iRet = PWEnums.PWRET_TIMEOUT) then
            begin
              Result := iRet;
              Exit;
            end;

            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            Aguardando();

          end;

        end;


      // Processamento online do cart�o com chip

      PWEnums.PWDAT_CARDONL:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: CHIP ONLINE - ' + IntToStr(iRetByte));

          iRet := PW_iPPFinishChip(I);

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            if (iRet = PWEnums.PWRET_TIMEOUT) then
            begin
              Result := iRet;
              Exit;
            end;

            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            // Verifica se Teclou <ESC>
            if GetAsyncKeyState(VK_ESCAPE) <> 0 then
            begin
              iRetErro := PW_iPPAbort();
              MandaMemo(' ');
              MandaMemo('TRANSA��O ABORTADA PELA APLICA��O');
              mRCancelado := 1;
              Result := 1;
              Exit;
              Break;
            end
            else
            begin
              mRCancelado := 0;
            end;

            // Aguardando();

          end;

        end;



      // Confirma��o de dado no PIN-pad

      PWEnums.PWDAT_PPCONF:
        begin

          iRetByte := vstGetData[I].bTipoDeDado;
          MandaMemo('Tipo de Dado: CONFIRMA DADO - ' + IntToStr(iRetByte));

          iRet := PW_iPPConfirmData(I);

          if (iRet <> PWEnums.PWRET_OK) then
          begin
            Result := iRet;
            Exit;
          end;

          xloop := 0;

          while xloop < 10000 do
          begin

            iRet := PW_iPPEventLoop(vGetpszDisplay, SizeOf(vGetpszDisplay));
            if (iRet = PWEnums.PWRET_DISPLAY) then
            begin
              MandaMemo(vGetpszDisplay[0].szDspMsg);
              MandaMemo(' ');
            end;

            if (iRet = PWEnums.PWRET_TIMEOUT) then
            begin
              Result := iRet;
              Exit;
            end;

            // if((iRet <> PWEnums.PWRET_OK) And (iRet <> PWEnums.PWRET_DISPLAY) And (iRet <> PWEnums.PWRET_NOTHING)) then
            if (iRet = PWEnums.PWRET_OK) then
            begin
              Result := iRet;
              Exit;
            end;

            xloop := xloop + 1;

            sleep(1000);

            Aguardando();

          end;

        end;

    else

      begin

        ShowMessage('TIPO DE DADOS DESCONHECIDO : ' +
          IntToStr(vstGetData[I].bTipoDeDado));

      end;

    end;

    I := I + 1;

    Continue;

  end;

  if ((strNome = 'CANCELA') or (strTagNFCe = 'CANCELA')) then
  begin
    iRetErro := PW_iPPAbort();
    Result := 1;
    mRCancelado := 1;
  end
  else
  begin
    mRCancelado := 0;
    Result := PWEnums.PWRET_OK;
  end;

end;

// =====================================================================================*\
{
  Funcao     :  PrintResultParams

  Descricao  :  Esta fun��o exibe na tela todas as informa��es de resultado dispon�veis
  no momento em que foi chamada.

  Entradas   :  nao ha.

  Saidas     :  nao ha.

  Retorno    :  nao ha.
}
// =====================================================================================*/
function TPGWLib.PrintResultParams: Integer;
var
  I: Integer;
  Ir: Integer;
  iRet: Integer;
  szAux: PSZ_GetData;
  Volta: AnsiString;

begin

  I := 0;

  while I < 32524 do // 2200 MAXINT16 32767
  begin

    iRet := PW_iGetResult(I, szAux, SizeOf(szAux));
    if (iRet = PWEnums.PWRET_OK) then
    begin
      MandaMemo(pszGetInfoDescription(I) + '<0x' + IntToHex(I, 2) + '> = ');
      Volta := szAux[0].pszDataxx;
      MandaMemo(Volta);
      MandaMemo('');
    end;

    I := I + 1;

  end;

end;

// =====================================================================================*\
{
  Funcao     :  PrintReturnDescription

  Descricao  :  Esta fun��o recebe um c�digo PWRET_XXX e imprime na tela a sua descri��o.

  Entradas   :  iResult :   C�digo de resultado da transa��o (PWRET_XXX).

  Saidas     :  nao ha.

  Retorno    :  nao ha.
}
// =====================================================================================*/
function TPGWLib.PrintReturnDescription(iReturnCode: Integer;
  pszDspMsg: string): Integer;
var
  I: Integer;
begin

  case iReturnCode of

    PWEnums.PWRET_OK:
      begin
        MandaMemo('PWRET_OK');
      end;

    PWEnums.PWRET_INVCALL:
      begin
        MandaMemo('PWRET_INVCALL');
      end;

    PWEnums.PWRET_INVPARAM:
      begin
        MandaMemo('PWRET_INVPARAM');
      end;

    PWEnums.PWRET_NODATA:
      begin
        MandaMemo('PWRET_NODATA');
      end;

    PWEnums.PWRET_BUFOVFLW:
      begin
        MandaMemo('PWRET_BUFOVFLW');
      end;

    PWEnums.PWRET_MOREDATA:
      begin
        MandaMemo('PWRET_MOREDATA');
      end;

    PWEnums.PWRET_DLLNOTINIT:
      begin
        MandaMemo('PWRET_DLLNOTINIT');
      end;

    PWEnums.PWRET_NOTINST:
      begin
        MandaMemo('PWRET_NOTINST');
      end;

    PWEnums.PWRET_TRNNOTINIT:
      begin
        MandaMemo('PWRET_TRNNOTINIT');
      end;

    PWEnums.PWRET_NOMANDATORY:
      begin
        MandaMemo('PWRET_NOMANDATORY');
      end;

    PWEnums.PWRET_TIMEOUT:
      begin
        MandaMemo('PWRET_TIMEOUT');
      end;

    PWEnums.PWRET_CANCEL:
      begin
        MandaMemo('PWRET_CANCEL');
      end;

    PWEnums.PWRET_FALLBACK:
      begin
        MandaMemo('PWRET_FALLBACK');
      end;

    PWEnums.PWRET_DISPLAY:
      begin
        MandaMemo('PWRET_DISPLAY');
      end;
    // printf("\nRetorno = PWRET_DISPLAY");
    // InputCR(pszDspMsg);
    // printf("\n%s", pszDspMsg);

    PWEnums.PWRET_NOTHING:
      begin
        MandaMemo('PWRET_NOTHING');
      end;

    PWEnums.PWRET_FROMHOST:
      // printf("\nRetorno = ERRO DO HOST");
      begin
        MandaMemo('PWRET_FROMHOST');
      end;

    PWEnums.PWRET_SSLCERTERR:
      begin
        MandaMemo('PWRET_SSLCERTERR');
      end;

    PWEnums.PWRET_SSLNCONN:
      begin
        MandaMemo('PWRET_SSLNCONN');
      end;

    PWEnums.PWRET_FROMHOSTPENDTRN:
      begin
        MandaMemo('PWRET_FROMHOSTPENDTRN');
      end;

  else

    begin
      begin
        MandaMemo('OUTRO ERRO: ' + IntToStr(iReturnCode));
      end;

    end;

    if (iReturnCode <> PWEnums.PWRET_MOREDATA) and
      (iReturnCode <> PWEnums.PWRET_DISPLAY) and
      (iReturnCode <> PWEnums.PWRET_NOTHING) and
      (iReturnCode <> PWEnums.PWRET_FALLBACK) then
    begin
      // intResultParams();
    end;

  end;

end;

// =====================================================================================*\
{
  Funcao     :  pszGetInfoDescription

  Descricao  :  Esta fun��o recebe um c�digo PWINFO_XXX e retorna uma string com a
  descri��o da informa��o representada por aquele c�digo.

  Entradas   :  wIdentificador :  C�digo da informa��o (PWINFO_XXX).

  Saidas     :  nao ha.

  Retorno    :  String representando o c�digo recebido como par�metro.
}
// =====================================================================================*/
function TPGWLib.pszGetInfoDescription(wIdentificador: Integer): string;
begin

  case wIdentificador of

    PWEnums.PWINFO_OPERATION:
      Result := 'PWINFO_OPERATION';

    PWEnums.PWINFO_POSID:
      Result := 'PWINFO_POSID';
    PWEnums.PWINFO_AUTNAME:
      Result := 'PWINFO_AUTNAME';
    PWEnums.PWINFO_AUTVER:
      Result := 'PWINFO_AUTVER';
    PWEnums.PWINFO_AUTDEV:
      Result := 'PWINFO_AUTDEV';
    PWEnums.PWINFO_DESTTCPIP:
      Result := 'PWINFO_DESTTCPIP';
    PWEnums.PWINFO_MERCHCNPJCPF:
      Result := 'PWINFO_MERCHCNPJCPF';
    PWEnums.PWINFO_AUTCAP:
      Result := 'PWINFO_AUTCAP';
    PWEnums.PWINFO_TOTAMNT:
      Result := 'PWINFO_TOTAMNT';
    PWEnums.PWINFO_CURRENCY:
      Result := 'PWINFO_CURRENCY';
    PWEnums.PWINFO_CURREXP:
      Result := 'PWINFO_CURREXP';
    PWEnums.PWINFO_FISCALREF:
      Result := 'PWINFO_FISCALREF';
    PWEnums.PWINFO_CARDTYPE:
      Result := 'PWINFO_CARDTYPE';
    PWEnums.PWINFO_PRODUCTNAME:
      Result := 'PWINFO_PRODUCTNAME';
    PWEnums.PWINFO_DATETIME:
      Result := 'PWINFO_DATETIME';
    PWEnums.PWINFO_REQNUM:
      Result := 'PWINFO_REQNUM';
    PWEnums.PWINFO_AUTHSYST:
      Result := 'PWINFO_AUTHSYST';
    PWEnums.PWINFO_VIRTMERCH:
      Result := 'PWINFO_VIRTMERCH';
    PWEnums.PWINFO_AUTMERCHID:
      Result := 'PWINFO_AUTMERCHID';
    PWEnums.PWINFO_PHONEFULLNO:
      Result := 'PWINFO_PHONEFULLNO';
    PWEnums.PWINFO_FINTYPE:
      Result := 'PWINFO_FINTYPE';
    PWEnums.PWINFO_INSTALLMENTS:
      Result := 'PWINFO_INSTALLMENTS';
    PWEnums.PWINFO_INSTALLMDATE:
      Result := 'PWINFO_INSTALLMDATE';
    PWEnums.PWINFO_PRODUCTID:
      Result := 'PWINFO_PRODUCTID';
    PWEnums.PWINFO_RESULTMSG:
      Result := 'PWINFO_RESULTMSG';
    PWEnums.PWINFO_CNFREQ:
      Result := 'PWINFO_CNFREQ';
    PWEnums.PWINFO_AUTLOCREF:
      Result := 'PWINFO_AUTLOCREF';
    PWEnums.PWINFO_AUTEXTREF:
      Result := 'PWINFO_AUTEXTREF';
    PWEnums.PWINFO_AUTHCODE:
      Result := 'PWINFO_AUTHCODE';
    PWEnums.PWINFO_AUTRESPCODE:
      Result := 'PWINFO_AUTRESPCODE';
    PWEnums.PWINFO_DISCOUNTAMT:
      Result := 'PWINFO_DISCOUNTAMT';
    PWEnums.PWINFO_CASHBACKAMT:
      Result := 'PWINFO_CASHBACKAMT';
    PWEnums.PWINFO_CARDNAME:
      Result := 'PWINFO_CARDNAME';
    PWEnums.PWINFO_ONOFF:
      Result := 'PWINFO_ONOFF';
    PWEnums.PWINFO_BOARDINGTAX:
      Result := 'PWINFO_BOARDINGTAX';
    PWEnums.PWINFO_TIPAMOUNT:
      Result := 'PWINFO_TIPAMOUNT';
    PWEnums.PWINFO_INSTALLM1AMT:
      Result := 'PWINFO_INSTALLM1AMT';
    PWEnums.PWINFO_INSTALLMAMNT:
      Result := 'PWINFO_INSTALLMAMNT';
    PWEnums.PWINFO_RCPTFULL:
      Result := 'PWINFO_RCPTFULL';
    PWEnums.PWINFO_RCPTMERCH:
      Result := 'PWINFO_RCPTMERCH';
    PWEnums.PWINFO_RCPTCHOLDER:
      Result := 'PWINFO_RCPTCHOLDER';
    PWEnums.PWINFO_RCPTCHSHORT:
      Result := 'PWINFO_RCPTCHSHORT';
    PWEnums.PWINFO_TRNORIGDATE:
      Result := 'PWINFO_TRNORIGDATE';
    PWEnums.PWINFO_TRNORIGTIME:
      Result := 'PWINFO_TRNORIGTIME';
    PWEnums.PWINFO_TRNORIGNSU:
      Result := 'PWINFO_TRNORIGNSU';
    PWEnums.PWINFO_TRNORIGAMNT:
      Result := 'PWINFO_TRNORIGAMNT';
    PWEnums.PWINFO_TRNORIGAUTH:
      Result := 'PWINFO_TRNORIGAUTH';
    PWEnums.PWINFO_TRNORIGREQNUM:
      Result := 'PWINFO_TRNORIGREQNUM';
    PWEnums.PWINFO_CARDFULLPAN:
      Result := 'PWINFO_CARDFULLPAN';
    PWEnums.PWINFO_CARDEXPDATE:
      Result := 'PWINFO_CARDEXPDATE';
    PWEnums.PWINFO_CARDNAMESTD:
      Result := 'PWINFO_CARDNAMESTD';
    PWEnums.PWINFO_CARDPARCPAN:
      Result := 'PWINFO_CARDPARCPAN';
    PWEnums.PWINFO_BARCODENTMODE:
      Result := 'PWINFO_BARCODENTMODE';
    PWEnums.PWINFO_BARCODE:
      Result := 'PWINFO_BARCODE';
    PWEnums.PWINFO_MERCHADDDATA1:
      Result := 'PWINFO_MERCHADDDATA1';
    PWEnums.PWINFO_MERCHADDDATA2:
      Result := 'PWINFO_MERCHADDDATA2';
    PWEnums.PWINFO_MERCHADDDATA3:
      Result := 'PWINFO_MERCHADDDATA3';
    PWEnums.PWINFO_MERCHADDDATA4:
      Result := 'PWINFO_MERCHADDDATA4';
    PWEnums.PWINFO_PAYMNTTYPE:
      Result := 'PWINFO_PAYMNTTYPE';
    PWEnums.PWINFO_USINGPINPAD:
      Result := 'PWINFO_USINGPINPAD';
    PWEnums.PWINFO_PPCOMMPORT:
      Result := 'PWINFO_PPCOMMPORT';
    PWEnums.PWINFO_IDLEPROCTIME:
      Result := 'PWINFO_IDLEPROCTIME';
    PWEnums.PWINFO_PNDAUTHSYST:
      Result := 'PWINFO_PNDAUTHSYST';
    PWEnums.PWINFO_PNDVIRTMERCH:
      Result := 'PWINFO_PNDVIRTMERCH';
    PWEnums.PWINFO_PNDREQNUM:
      Result := 'PWINFO_PNDREQNUM';
    PWEnums.PWINFO_PNDAUTLOCREF:
      Result := 'PWINFO_PNDAUTLOCREF';
    PWEnums.PWINFO_PNDAUTEXTREF:
      Result := 'PWINFO_PNDAUTEXTREF';
  else
    begin
      Result := 'PWINFO_XXX';
    end;

  end;

end;

// ==========================================================
{
  Mensagem de Processamento...
}
// ==========================================================
function TPGWLib.Aguardando: string;
var
  Y: Integer;
begin

  if (txt = '') then
  begin
    txt := 'Processando ';
  end;

  if (Length(txt) > 40) then
  begin
    frmTEF_Adm.Memo1.Lines.Add(' ');
    txt := 'Processando ';
  end;

  txt := txt + '.';
  Y := frmTEF_Adm.Memo1.CaretPos.Y;
  frmTEF_Adm.Memo1.Lines.Strings[Y] := txt;

end;




// ============================================================

// ==========================================================
// Retorna Valor da Constante escolhida na Captura no PinPad
// ==========================================================
Function TPGWLib.PORTADOR(PWDADO: string): Integer;
begin

  case AnsiIndexStr(PWDADO, ['DIGITE_O_DDD', 'REDIGITE_O_DDD',
    'DIGITE_O_TELEFONE', 'REDIGITE_O_TELEFONE', 'DIGITE_DDD_TELEFONE',
    'REDIGITE_DDD_TELEFONE', 'DIGITE_O_CPF', 'REDIGITE_O_CPF', 'DIGITE_O_RG',
    'REDIGITE_O_RG', 'DIGITE_OS_4_ULTIMOS_DIGITOS',
    'DIGITE_CODIGO_DE_SEGURANCA']) of

    0:
      Result := PWEnums.DIGITE_O_DDD;
    1:
      Result := PWEnums.REDIGITE_O_DDD;
    2:
      Result := PWEnums.DIGITE_O_TELEFONE;
    3:
      Result := PWEnums.REDIGITE_O_TELEFONE;
    4:
      Result := PWEnums.DIGITE_DDD_TELEFONE;
    5:
      Result := PWEnums.REDIGITE_DDD_TELEFONE;
    6:
      Result := PWEnums.DIGITE_O_CPF;
    7:
      Result := PWEnums.REDIGITE_O_CPF;
    8:
      Result := PWEnums.DIGITE_O_RG;
    9:
      Result := PWEnums.REDIGITE_O_RG;
    10:
      Result := PWEnums.DIGITE_OS_4_ULTIMOS_DIGITOS;
    11:
      Result := PWEnums.DIGITE_CODIGO_DE_SEGURANCA;
  else
    ShowMessage('Nenhuma Op��o Escolhida');
  end;

end;

// ==========================================================
// Retorna Valor da Opera��o escolhida
// ==========================================================
Function TPGWLib.OPERACAO(PWOPER: string): Integer;
begin

  case AnsiIndexStr(PWOPER, ['PWOPER_NULL', 'PWOPER_INSTALL', 'PWOPER_PARAMUPD',
    'PWOPER_REPRINT', 'PWOPER_RPTTRUNC', 'PWOPER_RPTDETAIL', 'PWOPER_ADMIN',
    'PWOPER_SALE', 'PWOPER_SALEVOID', 'PWOPER_PREPAID', 'PWOPER_CHECKINQ',
    'PWOPER_RETBALINQ', 'PWOPER_CRDBALINQ', 'PWOPER_INITIALIZ',
    'PWOPER_SETTLEMNT', 'PWOPER_PREAUTH', 'PWOPER_PREAUTVOID',
    'PWOPER_CASHWDRWL', 'PWOPER_LOCALMAINT', 'PWOPER_FINANCINQ',
    'PWOPER_ADDRVERIF', 'PWOPER_SALEPRE', 'PWOPER_LOYCREDIT',
    'PWOPER_LOYCREDVOID', 'PWOPER_LOYDEBIT', 'PWOPER_LOYDEBVOID', 'PWOPER_VOID',
    'PWOPER_VERSION', 'PWOPER_CONFIG', 'PWOPER_MAINTENANCE']) of

    0:
      Result := PWEnums.PWOPER_NULL;
    1:
      Result := PWEnums.PWOPER_INSTALL;
    2:
      Result := PWEnums.PWOPER_PARAMUPD;
    3:
      Result := PWEnums.PWOPER_REPRINT;
    4:
      Result := PWEnums.PWOPER_RPTTRUNC;
    5:
      Result := PWEnums.PWOPER_RPTDETAIL;
    6:
      Result := PWEnums.PWOPER_ADMIN;
    7:
      Result := PWEnums.PWOPER_SALE;
    8:
      Result := PWEnums.PWOPER_SALEVOID;
    9:
      Result := PWEnums.PWOPER_PREPAID;
    10:
      Result := PWEnums.PWOPER_CHECKINQ;
    11:
      Result := PWEnums.PWOPER_RETBALINQ;
    12:
      Result := PWEnums.PWOPER_CRDBALINQ;
    13:
      Result := PWEnums.PWOPER_INITIALIZ;
    14:
      Result := PWEnums.PWOPER_SETTLEMNT;
    15:
      Result := PWEnums.PWOPER_PREAUTH;
    16:
      Result := PWEnums.PWOPER_PREAUTVOID;
    17:
      Result := PWEnums.PWOPER_CASHWDRWL;
    18:
      Result := PWEnums.PWOPER_LOCALMAINT;
    19:
      Result := PWEnums.PWOPER_FINANCINQ;
    20:
      Result := PWEnums.PWOPER_ADDRVERIF;
    21:
      Result := PWEnums.PWOPER_SALEPRE;
    22:
      Result := PWEnums.PWOPER_LOYCREDIT;
    23:
      Result := PWEnums.PWOPER_LOYCREDVOID;
    24:
      Result := PWEnums.PWOPER_LOYDEBIT;
    25:
      Result := PWEnums.PWOPER_LOYDEBVOID;
    26:
      Result := PWEnums.PWOPER_VOID;
    27:
      Result := PWEnums.PWOPER_VERSION;
    28:
      Result := PWEnums.PWOPER_CONFIG;
    29:
      Result := PWEnums.PWOPER_MAINTENANCE;

  end;

end;

end.
