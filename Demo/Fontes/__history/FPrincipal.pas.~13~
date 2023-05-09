unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, Vcl.DBCtrls,
  DTEditButton;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDConnection: TFDConnection;
    Edit1: TEdit;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DTEditButton1: TDTEditButton;
    FDQuery1CODIGO: TStringField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1VENDA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    //procedure CliqueBotao; override;
  public
    { Public declarations }
  end;

var
  Form5 : TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDQuery1.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  FDQuery1.Open;
end;

end.
