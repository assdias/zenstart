unit VisualizaImagensDasGuiasAbertas;

{ *********************************************************************** }
{ Classe TVisualizaImagensDasGuiasAbertas                                 }
{   Implementa os m�todos da interface IVisualizador para exibir uma      }
{    lista de cada formul�rio aberto.                                     }
{   Esta classe exibe uma LISTA DE IMAGENS de cada formul�rio aberto e    }
{    permitir que o usu�rio va para a guia de um formul�rio especifico    }
{    ao clicar em uma das imagens da lista.                               }
{                                                                         }
{                                                                         }
{   AUTOR: Rafael Stavarengo - faelsta@gmail.com - 08/2009                }
{                                                                         }
{   http://www.devmedia.com.br/articles/viewcomp.asp?comp=11692           }
{                                                                         }
{ Principais m�todos                                                      }
{   Veja os coment�rios da interface IVisualizador.                       }
{                                                                         }
{ *********************************************************************** }

interface

uses TDI, Controls, ExtCtrls, StdCtrls, Types, Forms;

type
  TVisualizaImagensDasGuiasAbertas = class(TInterfacedObject, IVisualizador)
  private
    LargauraDosPaineis: Integer;
    AlturaDosPaineis: Integer;
    OndeOsPaineisSeraoExibidos: TWinControl;
    TDI: TTDI;

    {Retorna um TImagem devidamente ajustado dentro do seu parente}
    function GetImage(ParenteDoImage: TWinControl): TImage;
    {Retorna um TLabel devidamente ajustado dentro do seu parente}
    function GetLabel(ParenteDoLabel: TWinControl): TLabel;
    {Retorna uma panel devidamente ajustado dentro do objeto onde os
     paineis ser�o exibidos - OndeOsPaineisSeraoExibidos: TWinControl.
     Este atributo � definido no construtor da classe}
    function GetPanel: TPanel;
    {Percorre o objeto onde os paineis est�o sendo exibidos e calcula a
     posi��o onde o proximo painel deve ser colocado}
    function GetPosicaoDoProximoPanel: TRect;

    procedure OnCliqueDosPaineis(Sender: TObject);
  public
    {Parametros do construtor
      OndeOsPaineisSeraoExibidos: � um TWinControl onde ser�o exibidas as
        imagens de cada formul�rio aberto. Recomendo que voc� use um TScroolBox
        pois tera um melhor efeito visual.
      TDI: objeto TTDI onde os formul�rio est�o sendo exibidos. Este parametro
        n�o � obrigat�rio e a referencia deste parametro � usado apenas no
        evento OnClick da lista de imagens. Se voc� passar nil para este
        parametro o evento OnClick da lista de imagens n�o ser� criado}
    constructor Create(OndeOsPaineisSeraoExibidos: TWinControl; TDI: TTDI); reintroduce;
    {Veja descri��od este m�todo na classe IVisualizador}
    procedure ListarFormulario(FormularioAberto: TForm);
  end;

implementation

uses Classes, Graphics, SysUtils;

const
  ESPACO_ENTRE_OS_PAINEIS = 16;

{ TVisualizaImagensDasGuiasAbertas }

procedure TVisualizaImagensDasGuiasAbertas.ListarFormulario(FormularioAberto: TForm);
var
  Painel: TPanel;
  FormImage: TBitmap;
begin
  {armazena uma referencia � um novo painel}
  Painel := GetPanel;
  
  {Armazena um ponteiro para o ClassType do formul�rio que ser� listado.
   Este ponteiro ser� usado pelo evento OnCliqueDosPaineis}
  Painel.Tag := Integer(Pointer(FormularioAberto.ClassType));

  {Pede um novo TLabel que ser� exibido dentro do Painel criado acima}
  GetLabel(Painel).Caption := FormularioAberto.Caption;

  FormImage := FormularioAberto.GetFormImage;//pega a imagem do formul�rio
  try
    {Copia a imagem do formul�rio para o novo TImagem criado dentro do painel}
    GetImage(Painel).Picture.Assign(FormImage);
  finally
    FreeAndNil(FormImage);
  end;
end;

function TVisualizaImagensDasGuiasAbertas.GetImage(ParenteDoImage: TWinControl): TImage;
begin
  Result := TImage.Create(ParenteDoImage);
  Result.Parent := ParenteDoImage;
  Result.Align := alClient;
  Result.Visible := True;
  Result.Center := True;
  Result.Stretch := True;

  if Assigned(TDI) then
  begin
    Result.OnClick := OnCliqueDosPaineis;
    Result.Cursor := crHandPoint;
  end;
end;

function TVisualizaImagensDasGuiasAbertas.GetLabel(ParenteDoLabel: TWinControl): TLabel;
begin
  Result := TLabel.Create(ParenteDoLabel);
  Result.Parent := ParenteDoLabel;
  Result.Align := alBottom;
  Result.Layout := tlCenter;
  Result.Alignment := taCenter;
  Result.Font.Style := [fsBold];
  Result.WordWrap := True;
  Result.Visible := True;

  if Assigned(TDI) then
  begin
    Result.OnClick := OnCliqueDosPaineis;
    Result.Cursor := crHandPoint;
  end;
end;

function TVisualizaImagensDasGuiasAbertas.GetPosicaoDoProximoPanel: TRect;
var
  i: Integer;
  P: TPanel;
begin
  Result.Left := ESPACO_ENTRE_OS_PAINEIS;
  Result.Top := ESPACO_ENTRE_OS_PAINEIS;

  for i := 0 to OndeOsPaineisSeraoExibidos.ComponentCount - 1 do
  begin
    if OndeOsPaineisSeraoExibidos.Components[i] is TPanel then
    begin
      P := (OndeOsPaineisSeraoExibidos.Components[i] as TPanel);

      if P.Left >= Result.Left then
        Result.Left := P.Left + LargauraDosPaineis + ESPACO_ENTRE_OS_PAINEIS;

      if P.Top >= Result.Top then
        Result.Top := P.Top;

      if Result.Left + LargauraDosPaineis >= OndeOsPaineisSeraoExibidos.Width then
      begin
        Result.Top := Result.Top + AlturaDosPaineis + ESPACO_ENTRE_OS_PAINEIS;
        Result.Left := ESPACO_ENTRE_OS_PAINEIS;
      end;
    end;
  end;
end;

function TVisualizaImagensDasGuiasAbertas.GetPanel: TPanel;
var
  PosicaoDoPainel: TRect;
begin
  PosicaoDoPainel := GetPosicaoDoProximoPanel;
  Result := TPanel.Create(OndeOsPaineisSeraoExibidos);
  Result.Parent := OndeOsPaineisSeraoExibidos;
  Result.BevelInner := bvLowered;
  Result.BevelOuter := bvRaised;
  Result.Width := LargauraDosPaineis;
  Result.Height := AlturaDosPaineis;
  Result.Top := PosicaoDoPainel.Top;
  Result.Left := PosicaoDoPainel.Left;
  Result.Visible := True;

  if Assigned(TDI) then
  begin
    Result.OnClick := OnCliqueDosPaineis;
    Result.Cursor := crHandPoint;
  end;
end;

constructor TVisualizaImagensDasGuiasAbertas.Create(OndeOsPaineisSeraoExibidos: TWinControl; TDI: TTDI);
begin
  inherited Create;

  {Ajusta para que a largura e altura de cada imagem dos formul�rios tenha
   20% do tamanho da resolu��o do usu�rio}
  AlturaDosPaineis := Trunc(Screen.Height * 0.2);
  LargauraDosPaineis := Trunc(Screen.Width * 0.2);

  Self.OndeOsPaineisSeraoExibidos := OndeOsPaineisSeraoExibidos;
  Self.TDI := TDI;
end;

procedure TVisualizaImagensDasGuiasAbertas.OnCliqueDosPaineis(Sender: TObject);
var
  Auxiliar: TPanel;
  ClasseDoForm: TFormClass;
begin
  if not Assigned(TDI) then
    Exit;

  Auxiliar := nil;

  try
    if Sender is TPanel then
      Auxiliar := (Sender as TPanel)
    else if (Sender is TLabel) or (Sender is TImage) then
      if TWinControl(Sender).Parent is TPanel then
        Auxiliar := (TWinControl(Sender).Parent as TPanel);

    {Recupera o ClassType cujo o valor do ponteiro foi armazenado no Tag
     pelo m�todo ListarFormulario}
    ClasseDoForm := TFormClass(Pointer(Auxiliar.Tag));

    {Se havia uma informa��o v�lida no Tag}
    if Assigned(ClasseDoForm) then
      TDI.MostrarFormulario(ClasseDoForm, False);
  except
    {Como existe muito cast de objetos no bloco acima alem de manipula��o de
     ponteiros que podem ser invalidos quando um formul�rio for fechado,
     coloquei este try..except porque essas exce��es n�o influenciam 
     funcionamento da classe.
     Tome cuidado! Se o usu�rio estiver clicando nas imagens e nada acontece,
     pode estar acontecendo uma exce��o neste ponto}
  end;
end;

end.
