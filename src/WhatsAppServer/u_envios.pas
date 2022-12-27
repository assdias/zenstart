unit u_envios;

interface

uses
  System.Classes, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  Vcl.ExtCtrls, Data.DB;

type
  TEnvios = class(TThread)
  private
    { Private declarations }
    sStatus: string;
    sMensagem: string;
    sTimer: Boolean;
    procedure AtualizaStatus;
    procedure LogEnvio;
    procedure TimerEnvio;
    procedure ExecutaProcedimento;
    function BuscarPendentes: Boolean;
  protected
    procedure Execute; override;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TEnvios.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses u_principal;

{ TEnvios }

procedure TEnvios.AtualizaStatus;
begin
  frmPrincipal.lblStatusEnvio.Caption :=  sStatus;
  frmPrincipal.lblStatusEnvio.Refresh;
  Application.ProcessMessages;
end;

function TEnvios.BuscarPendentes: Boolean;
begin
  try
    Result  :=  False;
    with frmPrincipal do
      begin
        qryWhats.Close;
        qryWhats.Open;
        if qryWhats.RecordCount > 0 then
          begin
            qryWhats.First;
            Result  :=  True;
          end;
      end;
  except
  end;
end;

procedure TEnvios.ExecutaProcedimento;
var
  numero: string;
  mensagem: string;
begin
  if BuscarPendentes then
    begin
      sStatus :=  'Enviando...';
      Synchronize(AtualizaStatus);
      sMensagem :=  'Iniciando envio';
      Synchronize(LogEnvio);
      while not frmPrincipal.qryWhats.Eof do
        begin
          numero  :=  '';
          mensagem:=  '';
          if Trim(frmPrincipal.qryWhatsFONE.AsString) <> '' then
            begin
              numero  :=  frmPrincipal.qryWhatsFONE.AsString;
              frmPrincipal.ed_num.Text  :=  numero;
              if frmPrincipal.TInject1.Auth then
                begin
                  mensagem  := '*_'+frmPrincipal.qryWhatsORIGEM.AsString+'_*'+sLineBreak+
                    '*Data/Hora:* '+FormatDateTime('dd/mm/yyyy', frmPrincipal.qryWhatsDATA.AsDateTime)+
                    ' - '+FormatDateTime('hh:mm:ss', frmPrincipal.qryWhatsHORA.AsDateTime)+sLineBreak+
                    '*Empresa:* '+frmPrincipal.qryWhatsEMPRESA.AsString+sLineBreak+
                    '*Cliente:* '+frmPrincipal.qryWhatsNOME.AsString+sLineBreak+sLineBreak+
                    frmPrincipal.TInject1.Emoticons.Alfinete+sLineBreak+
                    frmPrincipal.qryWhatsMENSAGEM.AsString+
                    frmPrincipal.TInject1.Emoticons.Alfinete+sLineBreak;
                  frmPrincipal.mem_message.Lines.Clear;
                  frmPrincipal.mem_message.Lines.Text := mensagem;

                  if FileExists(frmPrincipal.qryWhatsANEXO.AsString) then
                    begin
                      frmPrincipal.TInject1.send(frmPrincipal.ed_num.Text, frmPrincipal.mem_message.Text);
                      Sleep(500);
                      frmPrincipal.TInject1.SendFile(
                        frmPrincipal.ed_num.Text, frmPrincipal.qryWhatsANEXO.AsString, '');
                      Sleep(5000);
                    end
                  else
                    begin
                      frmPrincipal.TInject1.send(frmPrincipal.ed_num.Text, frmPrincipal.mem_message.Text);
                      Sleep(500);
                    end;
                  sMensagem :=  'Mensagem enviada para '+frmPrincipal.qryWhatsNOME.AsString+
                    ' número '+Copy(numero, 3, 11);
                  Synchronize(LogEnvio);
                  if not (frmPrincipal.qryWhats.State in dsEditModes) then
                    frmPrincipal.qryWhats.Edit;
                  frmPrincipal.qryWhatsSTATUS.AsString  := 'ENVIADA';
                  frmPrincipal.qryWhats.Post;
                end
              else
                begin
                  sMensagem :=  'Falha:'+sLineBreak+
                    'Mensagem Código: '+IntToStr(frmPrincipal.qryWhatsCODIGO.AsInteger)+
                  'Número Invalido: '+Copy(numero, 3, 11);
                  Synchronize(LogEnvio);
                  if not (frmPrincipal.qryWhats.State in dsEditModes) then
                    frmPrincipal.qryWhats.Edit;
                  frmPrincipal.qryWhatsSTATUS.AsString  := 'FALHA';
                  frmPrincipal.qryWhats.Post;
                end;
            end;
          frmPrincipal.qryWhats.Next;
        end;
      sMensagem :=  'Envios Finalizados';
      Synchronize(LogEnvio);
      frmPrincipal.Conexao.CommitRetaining;
    end;
end;

procedure TEnvios.Execute;
begin
  { Place thread code here }
  if frmPrincipal.bParar then
    begin
      sTimer  :=  False;
      Synchronize(TimerEnvio);
      Exit;
    end;
  sStatus :=  'Consultando mensagens';
  Synchronize(AtualizaStatus);
  sTimer  :=  False;
  Synchronize(TimerEnvio);

  Synchronize(ExecutaProcedimento);

  sStatus :=  'Aguardando';
  Synchronize(AtualizaStatus);
  sTimer  :=  True;
  Synchronize(TimerEnvio);
end;

procedure TEnvios.LogEnvio;
begin
  frmPrincipal.memEnvio.Lines.Add(FormatDateTime('dd/mm/yyyy hh:mm:ss', Now));
  frmPrincipal.memEnvio.Lines.Add(sMensagem);
end;

procedure TEnvios.TimerEnvio;
begin
  frmPrincipal.tmrEnvio.Enabled :=  sTimer;
end;

end.
