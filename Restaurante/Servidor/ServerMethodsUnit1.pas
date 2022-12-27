unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TServerMethods1 = class(TDSServerModule)
    Conexao: TFDConnection;
    FDWaitCursor1: TFDGUIxWaitCursor;
    FDFBDriverLink: TFDPhysFBDriverLink;
    dspUsuarios: TDataSetProvider;
    qryUsuarios: TFDQuery;
    qryMesas: TFDQuery;
    dspMesas: TDataSetProvider;
    dspVendas_Master: TDataSetProvider;
    qryVendas_Master: TFDQuery;
    dsVendas_Detalhe: TDataSetProvider;
    qryVendas_Detalhe: TFDQuery;
    dspProduto: TDataSetProvider;
    qryProduto: TFDQuery;
    dsVendas_Master: TDataSource;
    dspMaiorVenda: TDataSetProvider;
    qryMaiorVenda: TFDQuery;
    qryMaiorItem: TFDQuery;
    dspMaiorItem: TDataSetProvider;
    dspMaiorDetalhe: TDataSetProvider;
    cdsMaiorDetalhe: TFDQuery;
    qryOrigem: TFDQuery;
    qryDestino: TFDQuery;
    dspOrigem: TDataSetProvider;
    dspDestino: TDataSetProvider;
    qryExecute: TFDQuery;
    dspExecute: TDataSetProvider;
    qryItensO: TFDQuery;
    qyritensD: TFDQuery;
    dspItensO: TDataSetProvider;
    dspItensD: TDataSetProvider;
    procedure qryItensServicosAfterPost(DataSet: TDataSet);
    procedure qryItensServicosAfterDelete(DataSet: TDataSet);
    procedure qryProdutoAfterPost(DataSet: TDataSet);
    procedure qryAjustaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.qryAjustaAfterPost(DataSet: TDataSet);
begin
 Conexao.CommitRetaining;
end;

procedure TServerMethods1.qryProdutoAfterPost(DataSet: TDataSet);
begin
 Conexao.CommitRetaining;
end;

procedure TServerMethods1.qryItensServicosAfterDelete(DataSet: TDataSet);
begin
 Conexao.CommitRetaining;
end;

procedure TServerMethods1.qryItensServicosAfterPost(DataSet: TDataSet);
begin
 Conexao.CommitRetaining;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

