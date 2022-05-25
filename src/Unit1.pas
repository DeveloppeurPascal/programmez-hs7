unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageXML, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Vcl.Grids, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1nom: TStringField;
    FDMemTable1prenom: TStringField;
    FDMemTable1téléphone: TStringField;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindNavigator1: TBindNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDMemTable1.Close;
  FDMemTable1.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // FDMemTable1.ResourceOptions.PersistentFileName :=
  // 'moncheminrelatifverslefichierdestockage';
  // FDMemTable1.Open;
end;

end.
