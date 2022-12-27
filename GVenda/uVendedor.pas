unit uVendedor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.StdCtrls, FMX.Controls.Presentation, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmVendedor = class(TForm)
    ToolBar7: TToolBar;
    Label16: TLabel;
    Button4: TButton;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure Button4Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedor: TFrmVendedor;

implementation

{$R *.fmx}

uses uDados, uConfig;

procedure TFrmVendedor.Button4Click(Sender: TObject);
begin
 close;
end;

procedure TFrmVendedor.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

 if Dados.sTela='Login' then begin
   Dados.qryUsuariosfk_vendedor.Value := Dados.qryVendedorcodigo.Value;
   Dados.qryUsuariosvendedor.Value := Dados.qryVendedornome.Value;
   frmConfig.edtVendedor.Text :=Dados.qryUsuariosvendedor.Value;

 end;

 if Dados.sTela='Pedido' then begin
   Dados.qryOrcamentofkvendedor.Value := Dados.qryVendedorcodigo.Value;
 end;


 close;

end;

end.
