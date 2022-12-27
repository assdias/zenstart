unit uDmRelatorio;

interface

uses
  Vcl.Forms,
  System.SysUtils, System.Classes, frxExportImage, frxExportRTF, frxExportHTML,
  frxExportPPML, frxExportPS, frxExportZPL, frxExportSVG, frxExportHTMLDiv,
  frxExportHelpers, frxExportPPTX, frxExportDOCX, frxExportBIFF, frxExportDBF,
  frxExportODF, frxExportMail, frxExportText, frxClass, frxCrypt, frxGZip,
  frxDCtrl, frxDMPExport, frxGradient, frxChBox, frxZipCode,
  frxCellularTextObject, frxMap, frxTableObject, frxGaugeView, frxCross, frxOLE,
  frxRich, frxBarcode, frxChart, frxExportXLSX, frxExportXML, frxExportXLS,
  frxExportCSV, frxExportBaseDialog, frxExportPDF, frxDesgn;

type
  TdmRelatorio = class(TDataModule)
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxChartObject1: TfrxChartObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxOLEObject1: TfrxOLEObject;
    frxCrossObject1: TfrxCrossObject;
    frxGaugeObject1: TfrxGaugeObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxMapObject1: TfrxMapObject;
    frxReportCellularTextObject1: TfrxReportCellularTextObject;
    frxZipCodeObject1: TfrxZipCodeObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPNGExport1: TfrxPNGExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxMailExport1: TfrxMailExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxDBFExport1: TfrxDBFExport;
    frxBIFFExport1: TfrxBIFFExport;
    frxDOCXExport1: TfrxDOCXExport;
    frxPPTXExport1: TfrxPPTXExport;
    frxHTML4DivExport1: TfrxHTML4DivExport;
    frxHTML5DivExport1: TfrxHTML5DivExport;
    frxSVGExport1: TfrxSVGExport;
    frxZPLExport1: TfrxZPLExport;
    frxPSExport1: TfrxPSExport;
    frxPPMLExport1: TfrxPPMLExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxGIFExport1: TfrxGIFExport;
    frxDesigner1: TfrxDesigner;
  private
    { Private declarations }
  public
    procedure Imprimir(ALayoutFileName: string);
    procedure Designer(ALayoutFileName: string);
  end;

var
  dmRelatorio: TdmRelatorio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRelatorio }

procedure TdmRelatorio.Designer(ALayoutFileName: string);
begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) + ALayoutFileName);
  frxReport.DesignReport;
end;

procedure TdmRelatorio.Imprimir(ALayoutFileName: string);
begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) + ALayoutFileName);
  frxReport.ShowReport;
end;

end.
