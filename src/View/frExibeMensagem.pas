{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatu� - SP - 18270-170         }
{******************************************************************************}

unit frExibeMensagem;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormExibeMensagem }

  TFormExibeMensagem = class(TForm)
    btOk: TButton;
    pMensagem: TPanel;
    tEspera: TTimer;
    lMensagem: TLabel;
    procedure btOkKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tEsperaTimer(Sender: TObject);
    procedure lMensagemClick(Sender: TObject);
  private
    fTempoEspera: Integer;
    fFinalEspera: TDateTime;
    function GetMensagem: String;
    procedure SetMensagem(AValue: String);
    procedure AbortarTempoEspera;
  public
    property Mensagem: String read GetMensagem write SetMensagem;
    property TempoEspera: Integer read fTempoEspera write fTempoEspera;
  end;

implementation

uses
  dateutils,
  ACBrUtil, ACBrConsts;

{$R *.dfm}

{ TFormExibeMensagem }

procedure TFormExibeMensagem.FormShow(Sender: TObject);
begin
  if (TempoEspera > 0) then
  begin
    fFinalEspera := IncMilliSecond(Now, fTempoEspera);
    tEspera.Enabled := True;
  end
  else
  begin
    fFinalEspera := 0;
    tEspera.Enabled := False;
  end;
end;

procedure TFormExibeMensagem.btOkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AbortarTempoEspera;
end;

procedure TFormExibeMensagem.FormClick(Sender: TObject);
begin
  AbortarTempoEspera;
end;

procedure TFormExibeMensagem.lMensagemClick(Sender: TObject);
begin
  AbortarTempoEspera;
end;

procedure TFormExibeMensagem.tEsperaTimer(Sender: TObject);
var
  SegundosRestantes: Integer;
begin
  SegundosRestantes := SecondsBetween(fFinalEspera, Now);
  if SegundosRestantes <= 0 then
    ModalResult := mrOK
  else
    btOk.Caption := Format('OK (%d)', [SegundosRestantes]);
end;

function TFormExibeMensagem.GetMensagem: String;
begin
  Result := lMensagem.Caption;
end;

procedure TFormExibeMensagem.SetMensagem(AValue: String);
var
  NumLin, AltLin: Integer;
begin
  lMensagem.Caption := AValue;

  // Se houver quebra de linhas na msg, aumente o formul�rio...
  NumLin := CountStr(AValue, CR);
  if (NumLin > 0) then
  begin
    AltLin := lMensagem.Canvas.TextHeight('H');
    Height := Height + (NumLin * AltLin);
  end;
end;

procedure TFormExibeMensagem.AbortarTempoEspera;
begin
  tEspera.Enabled := False;
  btOk.Caption := 'OK';
end;

end.

