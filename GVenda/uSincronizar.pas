unit uSincronizar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, data.db, FMX.VirtualKeyboard, FMX.Platform, FMX.Ani,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.math,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Edit, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListBox, FMX.TabControl, FMX.Objects, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, data.Bind.EngExt,
  FMX.Bind.DBEngExt, data.Bind.Components, data.Bind.DBScope,
  MultiDetailAppearanceU, FMX.DateTimeCtrls;

type
  TfrmSincronizar = class(TForm)
    ToolBar2: TToolBar;
    Label2: TLabel;
    btnVoltarPrincipais: TButton;
    ToolBar5: TToolBar;
    btnSalvar: TButton;
    Layout1: TLayout;
    ListBox1: TListBox;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    CheckProdutos: TCheckBox;
    CheckPessoas: TCheckBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    CheckPessoasBaixa: TCheckBox;
    CheckOrcamento: TCheckBox;
    ListBoxItem6: TListBoxItem;
    chkVendedor: TCheckBox;
    procedure btnVoltarPrincipaisClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure CheckProdutosClick(Sender: TObject);
    procedure CheckPessoasChange(Sender: TObject);
    procedure chkVendedorChange(Sender: TObject);
    procedure CheckPessoasBaixaChange(Sender: TObject);
    procedure CheckOrcamentoChange(Sender: TObject);
  private
    procedure Upload;
    procedure Download;
    procedure LimpaRegistro;
    procedure BaixarProdutos(var registro: Integer; var total: Integer;
      var contador: Integer);
    procedure BaixarClientes(var registro: Integer; var total: Integer;
      var contador: Integer);
    procedure BaixarVendedores;
    procedure SubirPessoas(var registro: Integer; var cont: Integer);
    procedure SubirOrcamento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSincronizar: TfrmSincronizar;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

uses uDados, Loading;

procedure TfrmSincronizar.Download;
var
  contador, registro, total: Integer;
begin
  // sincronizar produtos
  if CheckProdutos.IsChecked then
  begin
    TLoading.Show(frmSincronizar, 'Carregando dados dos produtos...');
    try
      TThread.CreateAnonymousThread(
        procedure
        begin
          sleep(100);
          BaixarProdutos(registro, total, contador);

          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              TLoading.Hide;
            end);

        end).Start;
    except
      TLoading.Hide;
    end;

  end;

  // sincronizar pessoas
  if CheckPessoas.IsChecked then
  begin
    TLoading.Show(frmSincronizar, 'Carregando dados dos clientes...');
    try
      TThread.CreateAnonymousThread(
        procedure
        begin
          sleep(100);
          BaixarClientes(registro, total, contador);

          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              TLoading.Hide;
            end);

        end).Start;
    except
      TLoading.Hide;
    end;

  end;

  // sincronizar vendedores
  if chkVendedor.IsChecked then
  begin
    TLoading.Show(frmSincronizar, 'Carregando dados dos clientes...');
    try
      TThread.CreateAnonymousThread(
        procedure
        begin
          sleep(100);
          BaixarVendedores;

          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              TLoading.Hide;
            end);

        end).Start;
    except
      TLoading.Hide;
    end;

  end;

end;

procedure TfrmSincronizar.LimpaRegistro;
begin
  Dados.qryExecute.close;
  Dados.qryExecute.SQL.Text := 'DELETE FROM orcamento_item';
  Dados.qryExecute.ExecSQL;
  Dados.conexao.CommitRetaining;

  Dados.qryExecute.close;
  Dados.qryExecute.SQL.Text := 'DELETE FROM orcamento';
  Dados.qryExecute.ExecSQL;
  Dados.conexao.CommitRetaining;

end;

procedure TfrmSincronizar.BaixarProdutos(var registro: Integer;
var total: Integer; var contador: Integer);
begin
  Dados.qryProduto.close;
  Dados.qryProduto.Params[0].Value := '%';
  Dados.qryProduto.Open;

  Dados.cdsProdutos.close;
  Dados.cdsProdutos.Open;
  Dados.cdsProdutos.First;

  registro := 0;
  total := 0;
  contador := 1;
  while not Dados.cdsProdutos.Eof do
  begin
    if not Dados.qryProduto.Locate('codigo', Dados.cdsProdutosCODIGO.Value, [])
    then
      Dados.qryProduto.Insert
    else
      Dados.qryProduto.Edit;
    Dados.qryProdutocodigo.Value := Dados.cdsProdutosCODIGO.Value;
    Dados.qryProdutotipo.Value := Dados.cdsProdutosTIPO.Value;
    Dados.qryProdutocodbarra.Value := Dados.cdsProdutosCODBARRA.Value;
    Dados.qryProdutoreferencia.Value := Dados.cdsProdutosREFERENCIA.Value;
    Dados.qryProdutodescricao.Value := Dados.cdsProdutosDESCRICAO.Value;
    Dados.qryProdutounidade.Value := Dados.cdsProdutosUNIDADE.Value;
    Dados.qryProdutopr_custo.Value := Dados.cdsProdutosPR_CUSTO.Value;
    Dados.qryProdutoqtd_atual.AsFloat :=
      SimpleRoundTo(Dados.cdsProdutosQTD_ATUAL.AsFloat, -2);
    Dados.qryProdutopr_venda.Value :=
      SimpleRoundTo(Dados.cdsProdutosPR_VENDA.Value, -2);
    try
      Dados.qryProduto.Post;
    except
    end;
    Dados.cdsProdutos.Next;
    registro := registro + 1;
    total := total + 1;
    if contador = 15 then
    begin
      registro := 1;
    end;
  end;
end;

procedure TfrmSincronizar.BaixarClientes(var registro: Integer;
var total: Integer; var contador: Integer);
begin
  Dados.qryPessoa.close;
  Dados.qryPessoa.Params[0].Value := '%';
  Dados.qryPessoa.Params[1].Value := '%';
  Dados.qryPessoa.Open;

  Dados.cdsPessoas.close;
  Dados.cdsPessoas.Open;

  Dados.cdsPessoas.First;
  registro := 0;
  total := 0;
  while not Dados.cdsPessoas.Eof do
  begin
    if not Dados.qryPessoa.Locate('cnpj', Dados.cdsPessoascnpj.Value, []) then
      Dados.qryPessoa.Insert
    else
      Dados.qryPessoa.Edit;
    Dados.qryPessoacodigo.Value := Dados.cdsPessoasCODIGO.Value;
    Dados.qryPessoaempresa.Value := 1;
    Dados.qryPessoatipo.Value := Dados.cdsPessoasTIPO.Value;
    Dados.qryPessoacnpj.Value := Dados.cdsPessoascnpj.Value;
    Dados.qryPessoaie.Value := Dados.cdsPessoasIE.Value;
    Dados.qryPessoafantasia.Value := Dados.cdsPessoasFANTASIA.Value;
    Dados.qryPessoarazao.Value := Dados.cdsPessoasRAZAO.Value;
    Dados.qryPessoaendereco.Value := Dados.cdsPessoasENDERECO.Value;
    Dados.qryPessoanumero.Value := Dados.cdsPessoasNUMERO.Value;
    Dados.qryPessoacodmun.Value := Dados.cdsPessoasCODMUN.Value;
    Dados.qryPessoamunicipio.Value := Dados.cdsPessoasMUNICIPIO.Value;
    Dados.qryPessoabairro.Value := Dados.cdsPessoasBAIRRO.Value;
    Dados.qryPessoauf.Value := Dados.cdsPessoasUF.Value;
    Dados.qryPessoacep.Value := Dados.cdsPessoasCEP.Value;
    Dados.qryPessoaativo.Value := 'S';
    Dados.qryPessoatran.Value := 'N';
    Dados.qryPessoafab.Value := 'N';
    Dados.qryPessoaadm.Value := 'N';
    Dados.qryPessoacli.Value := 'S';
    Dados.qryPessoafun.Value := 'N';
    Dados.qryPessoaforn.Value := 'N';
    try
      Dados.qryPessoa.Post;
    except
    end;
    Dados.cdsPessoas.Next;
    registro := registro + 1;
    total := total + 1;
  end;
end;

procedure TfrmSincronizar.BaixarVendedores;
var
  registro: Integer;
  total: Integer;
  contador: Integer;
begin
  Dados.qryExecute.close;
  Dados.qryExecute.SQL.Text := 'DELETE FROM vendedores';
  Dados.qryExecute.ExecSQL;
  Dados.conexao.CommitRetaining;
  Dados.qryVendedor.close;
  Dados.qryVendedor.Open;
  Dados.cdsVendedor.close;
  Dados.cdsVendedor.Open;
  Dados.cdsVendedor.First;
  registro := 0;
  total := 0;
  contador := 1;
  while not Dados.cdsVendedor.Eof do
  begin
    if not Dados.qryVendedor.Locate('codigo', Dados.cdsVendedorcodigo.Value, [])
    then
      Dados.qryVendedor.Insert
    else
      Dados.qryVendedor.Edit;
    Dados.qryVendedorcodigo.Value := Dados.cdsVendedorcodigo.Value;
    Dados.qryVendedornome.Value := Dados.cdsVendedornome.Value;
    try
      Dados.qryVendedor.Post;
    except
    end;
    Dados.cdsVendedor.Next;
    registro := registro + 1;
    total := total + 1;
  end;
end;

procedure TfrmSincronizar.SubirPessoas(var registro: Integer;
var cont: Integer);
begin
  Dados.qryPessoa.close;
  Dados.qryPessoa.Open;
  Dados.qryPessoa.First;
  Dados.cdsPessoas.close;
  Dados.cdsPessoas.Open;
  while not Dados.qryPessoa.Eof do
  begin
    if not Dados.cdsPessoas.Locate('CNPJ', Dados.qryPessoacnpj.Value, []) then
    begin
      Dados.cdsNumerador.close;
      Dados.cdsNumerador.Open;
      Dados.cdsPessoas.Insert;
      Dados.cdsPessoasCODIGO.Value := Dados.cdsNumeradorcodigo.AsInteger + 1;
      Dados.cdsPessoasTIPO.Value := Dados.qryPessoatipo.Value;
      Dados.cdsPessoascnpj.Value := Dados.qryPessoacnpj.Value;
      Dados.cdsPessoasIE.Value := Dados.qryPessoaie.Value;
      Dados.cdsPessoasFANTASIA.Value := Dados.qryPessoafantasia.Value;
      Dados.cdsPessoasRAZAO.Value := Dados.qryPessoarazao.Value;
      Dados.cdsPessoasENDERECO.Value := Dados.qryPessoaendereco.Value;
      Dados.cdsPessoascomplemento.Value := '';
      Dados.cdsPessoasNUMERO.Value := Dados.qryPessoanumero.Value;
      Dados.cdsPessoasCODMUN.Value := Dados.qryPessoacodmun.Value;
      Dados.cdsPessoasMUNICIPIO.Value := Dados.qryPessoamunicipio.Value;
      Dados.cdsPessoasBAIRRO.Value := Dados.qryPessoabairro.Value;
      Dados.cdsPessoasUF.Value := Dados.qryPessoauf.Value;
      Dados.cdsPessoasCEP.Value := Dados.qryPessoacep.Value;
      Dados.cdsPessoascelular1.Value := Dados.qryPessoacelular1.Value;
      Dados.cdsPessoasISENTO.Value := '0';
      Dados.cdsPessoas.Post;
    end;
    Dados.qryPessoa.Next;
    registro := registro + 1;
  end;
end;

procedure TfrmSincronizar.SubirOrcamento;
var
  registro: Integer;
  cont: Integer;
begin
  Dados.qryOrcamento.close;
  Dados.qryOrcamento.Params[0].Value := '%';
  Dados.qryOrcamento.Open;
  Dados.qryOrcamento.First;
  Dados.cdsOrcamento.close;
  Dados.cdsOrcamento.Open;
  Dados.cdsItens.close;
  Dados.cdsItens.Open;
  cont := 1;
  registro := 1;
  while not Dados.qryOrcamento.Eof do
  begin
    Dados.cdsOrcamento.Insert;
    Dados.cdsOrcamentoDATA.Value := Dados.qryOrcamentodata.Value;
    Dados.cdsOrcamentoFK_CLIENTE.Value := Dados.qryOrcamentofk_cliente.Value;
    Dados.cdsOrcamentofk_vendedor.Value := Dados.qryOrcamentofkvendedor.Value;
    Dados.cdsOrcamentoFORMA_PAGAMENTO.Value :=
      Dados.qryOrcamentoforma_pagamento.Value;
    Dados.cdsOrcamentoVALIDADE.Value := Dados.qryOrcamentovalidade.Value;
    Dados.cdsOrcamentoSUBTOTAL.Value := Dados.qryOrcamentosubtotal.Value;
    Dados.cdsOrcamentoDESCONTO.Value := Dados.qryOrcamentodesconto.Value;
    Dados.cdsOrcamentoTOTAL.Value := Dados.qryOrcamentototal.Value;
    Dados.cdsOrcamentoSITUACAO.Value := 'A';
    Dados.cdsOrcamento.Post;
    Dados.qryItem.close;
    Dados.qryItem.Params[0].Value := Dados.qryOrcamentocodigo.Value;
    Dados.qryItem.Open;
    Dados.qryItem.First;
    while not Dados.qryItem.Eof do
    begin
      Dados.cdsItens.Insert;
      Dados.cdsItensFK_ORCAMENTO.Value := Dados.cdsOrcamentoCODIGO.Value;
      Dados.cdsItensFK_PRODUTO.Value := Dados.qryItemfk_produto.Value;
      Dados.cdsItensQTD.Value := Dados.qryItemqtd.Value;
      Dados.cdsItensPRECO.Value := Dados.qryItempreco.Value;
      Dados.cdsItensTOTAL.Value := Dados.qryItemtotal.Value;
      Dados.cdsItens.Post;
      Dados.qryItem.Next;
    end;
    Dados.qryOrcamento.Next;
    registro := registro + 1;
  end;
end;

procedure TfrmSincronizar.Upload;
var
  registro, cont: Integer;
begin

  // sincronizar pessoas
  if CheckPessoasBaixa.IsChecked then
  begin
    TLoading.Show(frmSincronizar, 'Enviando Dados de Clientes...');
    try
      TThread.CreateAnonymousThread(
        procedure
        begin
          sleep(100);
          SubirPessoas(registro, cont);

          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              TLoading.Hide;
            end);
        end).Start;
    except
      TLoading.Hide;
    end;

  end;

  // sincronizar orçamento
  if CheckOrcamento.IsChecked then
  begin
    TLoading.Show(frmSincronizar, 'Enviando Orçamentos...');
    try
      TThread.CreateAnonymousThread(
        procedure
        begin
          sleep(100);
          SubirOrcamento;
          LimpaRegistro;

          TThread.Synchronize(nil,
            procedure
            begin
              TLoading.Hide;
            end);

        end).Start;
    except
      TLoading.Hide;
    end;
  end;

  Application.ProcessMessages

end;

procedure TfrmSincronizar.btnSalvarClick(Sender: TObject);
begin
  try
    try
      Dados.qryConfigura.Open;

      Dados.UniConexao.close;
      Dados.UniConexao.Server := Dados.qryConfiguraservidor.Value;
      Dados.UniConexao.Username := Dados.qryConfigurausuario.Value;
      Dados.UniConexao.Password := Dados.qryConfigurasenha.Value;
      Dados.UniConexao.Database := Dados.qryConfigurabanco.Value;
      Dados.UniConexao.Open;

      if Dados.UniConexao.Connected then
      begin
        Download;
        Upload;
      end;

    except
      on e: Exception do
        ShowMessage('Erro de conexão com o banco de dados do servidor ' +
          e.Message);
    end;
  finally
    //
  end;
end;

procedure TfrmSincronizar.btnVoltarPrincipaisClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSincronizar.CheckOrcamentoChange(Sender: TObject);
begin
  CheckProdutos.IsChecked := false;
  chkVendedor.IsChecked := false;
  CheckPessoas.IsChecked := false;
  CheckPessoasBaixa.IsChecked := false;
end;

procedure TfrmSincronizar.CheckPessoasBaixaChange(Sender: TObject);
begin
  CheckProdutos.IsChecked := false;
  chkVendedor.IsChecked := false;
  CheckPessoas.IsChecked := false;
  CheckOrcamento.IsChecked := false;
end;

procedure TfrmSincronizar.CheckPessoasChange(Sender: TObject);
begin
  CheckProdutos.IsChecked := false;
  chkVendedor.IsChecked := false;
  CheckPessoasBaixa.IsChecked := false;
  CheckOrcamento.IsChecked := false;
end;

procedure TfrmSincronizar.CheckProdutosClick(Sender: TObject);
begin
  CheckPessoas.IsChecked := false;
  chkVendedor.IsChecked := false;
  CheckPessoasBaixa.IsChecked := false;
  CheckOrcamento.IsChecked := false;

end;

procedure TfrmSincronizar.chkVendedorChange(Sender: TObject);
begin
  CheckPessoas.IsChecked := false;
  CheckProdutos.IsChecked := false;
  CheckPessoasBaixa.IsChecked := false;
  CheckOrcamento.IsChecked := false;
end;

end.
