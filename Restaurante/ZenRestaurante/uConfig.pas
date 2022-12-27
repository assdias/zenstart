unit uConfig;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox, FMX.Edit, FMX.Layouts, FMX.TabControl;

type
  TfrmConfig = class(TForm)
    TabControl1: TTabControl;
    tabIP: TTabItem;
    ListBox3: TListBox;
    ListBoxItem4: TListBoxItem;
    edtIP: TEdit;
    ToolBar9: TToolBar;
    Label4: TLabel;
    Button1: TButton;
    btnFechar: TButton;
    btnSalvar: TButton;
    btnTestar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnTestarClick(Sender: TObject);
  private
    procedure setIP;
    procedure GetIP;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.fmx}

uses uDados;

procedure TfrmConfig.setIP;
begin
  if Dados.qryConfigura.IsEmpty then
    Dados.qryConfigura.Insert
  else
    Dados.qryConfigura.Edit;
  Dados.qryConfiguraip.Value := edtIP.Text;
  Dados.qryConfigura.Post;
  Dados.conexao.CommitRetaining;
end;

procedure TfrmConfig.GetIP;
begin
  edtIP.Text := Dados.qryConfiguraip.Text;
end;

procedure TfrmConfig.btnSalvarClick(Sender: TObject);
begin
  setIP;
  close;
end;

procedure TfrmConfig.btnTestarClick(Sender: TObject);
begin
  try

    Dados.SQLCon.Params.Values['HOSTNAME'] := edtIP.Text;

    if not Dados.SQLCon.Connected then
      Dados.SQLCon.Connected := true;
    ShowMessage('Conexao realizada com sucesso!');
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TfrmConfig.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition(2);
  if not Dados.qryConfigura.Active then
    Dados.qryConfigura.Open;
  GetIP;
end;

end.
