unit uDmPDV;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmPDV = class(TDataModule)
    qryBuscaVenda: TFDQuery;
    qryBuscaVendaCODIGO: TIntegerField;
    qrySoma: TFDQuery;
    qrySomaTOTAL: TFMTBCDField;
    qryNFCE_M: TFDQuery;
    qryNFCE_MCODIGO: TIntegerField;
    qryNFCE_MNUMERO: TIntegerField;
    qryNFCE_MCHAVE: TStringField;
    qryNFCE_MMODELO: TStringField;
    qryNFCE_MSERIE: TStringField;
    qryNFCE_MDATA_EMISSAO: TDateField;
    qryNFCE_MDATA_SAIDA: TDateField;
    qryNFCE_MHORA_EMISSAO: TTimeField;
    qryNFCE_MHORA_SAIDA: TTimeField;
    qryNFCE_MID_EMITENTE: TIntegerField;
    qryNFCE_MID_CLIENTE: TIntegerField;
    qryNFCE_MFK_USUARIO: TIntegerField;
    qryNFCE_MFK_CAIXA: TIntegerField;
    qryNFCE_MFK_VENDEDOR: TIntegerField;
    qryNFCE_MCPF_NOTA: TStringField;
    qryNFCE_MTIPO_DESCONTO: TStringField;
    qryNFCE_MOBSERVACOES: TMemoField;
    qryNFCE_MSITUACAO: TStringField;
    qryNFCE_MEMAIL: TStringField;
    qryNFCE_MXML: TMemoField;
    qryNFCE_MPROTOCOLO: TStringField;
    qryNFCE_MMOTIVOCANCELAMENTO: TStringField;
    qryNFCE_MFLAG: TStringField;
    qryNFCE_MABERTO: TStringField;
    qryNFCE_MFKEMPRESA: TIntegerField;
    qryNFCE_MFK_VENDA: TIntegerField;
    qryNFCE_MSUBTOTAL: TFMTBCDField;
    qryNFCE_MDESCONTO: TFMTBCDField;
    qryNFCE_MTROCO: TFMTBCDField;
    qryNFCE_MDINHEIRO: TFMTBCDField;
    qryNFCE_MTOTAL: TFMTBCDField;
    qryNFCE_MBASEICMS: TFMTBCDField;
    qryNFCE_MTOTALICMS: TFMTBCDField;
    qryNFCE_MBASEICMSPIS: TFMTBCDField;
    qryNFCE_MTOTALICMSPIS: TFMTBCDField;
    qryNFCE_MBASEICMSCOF: TFMTBCDField;
    qryNFCE_MTOTALICMSCOFINS: TFMTBCDField;
    qryNFCE_MBASEISS: TFMTBCDField;
    qryNFCE_MTOTALISS: TFMTBCDField;
    qryNFCE_MTRIB_MUN: TFMTBCDField;
    qryNFCE_MTRIB_EST: TFMTBCDField;
    qryNFCE_MTRIB_FED: TFMTBCDField;
    qryNFCE_MTRIB_IMP: TFMTBCDField;
    qryNFCE_MOUTROS: TFMTBCDField;
    qryNFCE_MSAT_NUMERO_CFE: TIntegerField;
    qryNFCE_MSAT_NUMERO_SERIE: TStringField;
    qryNFCE_MCNF: TStringField;
    qryContas: TFDQuery;
    qryContasCODIGO: TIntegerField;
    qryContasDESCRICAO: TStringField;
    qryContasTIPO: TStringField;
    qryContasDATA_ABERTURA: TDateField;
    qryContasID_USUARIO: TIntegerField;
    qryContasEMPRESA: TIntegerField;
    qryContasLOTE: TIntegerField;
    qryContasSITUACAO: TStringField;
    qryVenda: TFDQuery;
    qryVendaCODIGO: TIntegerField;
    qryVendaDATA_EMISSAO: TDateField;
    qryVendaDATA_SAIDA: TDateField;
    qryVendaID_CLIENTE: TIntegerField;
    qryVendaFK_USUARIO: TIntegerField;
    qryVendaFK_CAIXA: TIntegerField;
    qryVendaFK_VENDEDOR: TIntegerField;
    qryVendaCPF_NOTA: TStringField;
    qryVendaTIPO_DESCONTO: TStringField;
    qryVendaOBSERVACOES: TMemoField;
    qryVendaSITUACAO: TStringField;
    qryVendaVIRTUAL_CLIENTE: TStringField;
    qryVendaVIRTUAL_VENDEDOR: TStringField;
    qryVendaFKEMPRESA: TIntegerField;
    qryVendaTIPO: TStringField;
    qryVendaFKORCAMENTO: TIntegerField;
    qryVendaNECF: TIntegerField;
    qryVendaLOTE: TIntegerField;
    qryVendaVirtualEmpresa: TStringField;
    qryVendaGERA_FINANCEIRO: TStringField;
    qryVendaFK_TABELA: TIntegerField;
    qryVendaVIRTUAL_TABELA: TStringField;
    qryVendaVIRTUAL_TX_ACRESC: TFloatField;
    qryVendaVIRTUAL_CNPJ: TStringField;
    qryVendaSUBTOTAL: TFMTBCDField;
    qryVendaDESCONTO: TFMTBCDField;
    qryVendaTROCO: TFMTBCDField;
    qryVendaDINHEIRO: TFMTBCDField;
    qryVendaTOTAL: TFMTBCDField;
    qryVendaPERCENTUAL: TFMTBCDField;
    qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendaACRESCIMO: TFMTBCDField;
    qryVendaPEDIDO: TStringField;
    qryVendaTOTAL_TROCA: TFMTBCDField;
    qryVendaOS: TStringField;
    qryVendaFK_OS: TIntegerField;
    qryVendaFORMA_PAGAMENTO: TStringField;
    qryVendaFK_MESA: TIntegerField;
    qryVendaFK_ENTREGADOR: TIntegerField;
    qryVendaVIRTUAL_ENTREGADOR: TStringField;
    qryVendaNOME: TStringField;
    dsEmpresa: TDataSource;
    dsItem: TDataSource;
    qryBuscaFone: TFDQuery;
    qryBuscaFoneCODIGO: TIntegerField;
    qryBuscaFoneFANTASIA: TStringField;
    qryBuscaFoneENDERECO: TStringField;
    qryBuscaFoneNUMERO: TStringField;
    qryBuscaFoneBAIRRO: TStringField;
    qryBuscaFoneMUNICIPIO: TStringField;
    qryBuscaFoneUF: TStringField;
    qryBuscaFoneCEP: TStringField;
    qryBuscaFoneCOMPLEMENTO: TStringField;
    qryBuscaFoneCELULAR1: TStringField;
    qryGrade: TFDQuery;
    qryGradeCODIGO: TIntegerField;
    qryGradeFK_PRODUTO: TIntegerField;
    qryGradeDESCRICAO: TStringField;
    qryGradeQTD: TFMTBCDField;
    qryGradePRECO: TFMTBCDField;
    dsPesqProd: TDataSource;
    qryPesqProd: TFDQuery;
    qryPesqProdCODIGO: TIntegerField;
    qryPesqProdDESCRICAO: TStringField;
    qryPesqProdCFOP: TStringField;
    qryPesqProdCODBARRA: TStringField;
    qryPesqProdNCM: TStringField;
    qryPesqProdREFERENCIA: TStringField;
    qryPesqProdPR_VENDA: TFMTBCDField;
    qryPesqProdPRECO_ATACADO: TFMTBCDField;
    qryPesqProdQTD_ATACADO: TFMTBCDField;
    qryPesqProdQTD_ATUAL: TFMTBCDField;
    qryPesqProdUNIDADE: TStringField;
    qryPesqProdEFISCAL: TStringField;
    qryPesqProdE_MEDIO: TFMTBCDField;
    qryPesqProdLOCALIZACAO: TStringField;
    qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField;
    qryPesqProdPRECO_VARIAVEL: TStringField;
    qryPesqProdDESCONTO: TCurrencyField;
    qryPesqProdINICIO_PROMOCAO: TDateField;
    qryPesqProdFIM_PROMOCAO: TDateField;
    qryPesqProdSERVICO: TStringField;
    qryPesqProdREMEDIO: TStringField;
    qryPesqProdGRADE: TStringField;
    qryPesqProdPREFIXO_BALANCA: TStringField;
    qryPesqProdVIRTUAL_PRECO: TExtendedField;
    qryPesqProdPRODUTO_PESADO: TStringField;
    qryPesqProdQTD_FISCAL: TFMTBCDField;
    qryPesqProdSERIAL: TStringField;
    qryConta_Movimento: TFDQuery;
    qryConta_MovimentoCODIGO: TIntegerField;
    qryConta_MovimentoID_CONTA_CAIXA: TIntegerField;
    qryConta_MovimentoHISTORICO: TStringField;
    qryConta_MovimentoDATA: TDateField;
    qryConta_MovimentoHORA: TTimeField;
    qryConta_MovimentoFKVENDA: TIntegerField;
    qryConta_MovimentoLOTE: TIntegerField;
    qryConta_MovimentoID_USUARIO: TIntegerField;
    qryConta_MovimentoENTRADA: TFMTBCDField;
    qryConta_MovimentoSAIDA: TFMTBCDField;
    qryConta_MovimentoTROCA: TFMTBCDField;
    qryConta_MovimentoSALDO: TFMTBCDField;
    dsVenda: TDataSource;
    dsGrade: TDataSource;
    dsBuscaFone: TDataSource;
    qryEntregador: TFDQuery;
    qryEntregadorCODIGO: TIntegerField;
    qryEntregadorNOME: TStringField;
    qryPesqConta: TFDQuery;
    qryPesqContaCODIGO: TIntegerField;
    qryPesqContaDESCRICAO: TStringField;
    qryPesqContaTIPO: TStringField;
    qryPesqContaDATA_ABERTURA: TDateField;
    qryPesqContaID_USUARIO: TIntegerField;
    qryPesqContaEMPRESA: TIntegerField;
    qryPesqContaLOTE: TIntegerField;
    qryPesqContaSITUACAO: TStringField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdEFISCAL: TStringField;
    qryProdE_MEDIO: TFMTBCDField;
    qryProdQTD_FISCAL: TFMTBCDField;
    qryTabela: TFDQuery;
    qryTabelaCODIGO: TIntegerField;
    qryTabelaDESCRICAO: TStringField;
    qryTabelaFKEMPRESA: TIntegerField;
    qryTabelaATIVO: TStringField;
    qryTabelaACRESCIMO: TFMTBCDField;
    qryComposicao: TFDQuery;
    qryComposicaoID_PRODUTO: TIntegerField;
    qryComposicaoQUANTIDADE: TFMTBCDField;
    qryCliente: TFDQuery;
    qryClienteCODIGO: TIntegerField;
    qryClienteRAZAO: TStringField;
    qryClienteCNPJ: TStringField;
    qryClienteENDERECO: TStringField;
    qryClienteNUMERO: TStringField;
    qryClienteBAIRRO: TStringField;
    qryClienteMUNICIPIO: TStringField;
    qryClienteUF: TStringField;
    qryClienteCEP: TStringField;
    qryClienteFONE1: TStringField;
    qryClienteCELULAR1: TStringField;
    dsEntregador: TDataSource;
    qtdAtacado: TFDQuery;
    qryItem: TFDQuery;
    qryItemCODIGO: TIntegerField;
    qryItemFKVENDA: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemCOD_BARRA: TStringField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemSITUACAO: TStringField;
    qryItemUNIDADE: TStringField;
    qryItemDESCRICAO_SL: TStringField;
    qryItemEFISCAL: TStringField;
    qryItemPRECO: TFMTBCDField;
    qryItemVALOR_ITEM: TFMTBCDField;
    qryItemVDESCONTO: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryItemACRESCIMO: TFMTBCDField;
    qryItemQTD: TFMTBCDField;
    qryItemE_MEDIO: TFMTBCDField;
    qryItemQTD_DEVOLVIDA: TFMTBCDField;
    qryItemFK_GRADE: TIntegerField;
    qryItemOS: TStringField;
    qryItemQTD_FISCAL: TExtendedField;
    qryItemDESCRICAO_OBS: TStringField;
    qryItemOBSERVACAO: TStringField;
    qryItemTTOTAL: TAggregateField;
    dsCliente: TDataSource;
    qryProdutoEmbalagem: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPDV: TdmPDV;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Udados;

{$R *.dfm}

end.
