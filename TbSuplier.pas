unit TbSuplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EIdSuplier: TEdit;
    ENamaSuplier: TEdit;
    EAlamat: TEdit;
    EJenisSuplier: TEdit;
    ETelp: TEdit;
    Dtglorder: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Module;

procedure TForm6.Button1Click(Sender: TObject);
begin
  try
         with DataModule1 do
         begin
         ZSuplier.Append;
         ZSuplierid_suplier.AsString:=EIdSuplier.Text;
         ZSupliernama_suplier.AsString:=ENamaSuplier.Text;
         ZSuplieralamat.AsString:=EAlamat.Text;
         ZSuplierjenis_suplier.AsString:=EJenisSuplier.Text;
         ZSupliertelepon.AsString:=ETelp.Text;
         ZSupliertanggal_order.AsDateTime:=Dtglorder.Date;

         ZSuplier.post;

         end;
    except
      on salah:Exception do
      ShowMessage(salah.Message);

    end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  try
         with DataModule1 do
         begin
         ZSuplier.Edit;
         ZSuplierid_suplier.AsString:=EIdSuplier.Text;
         ZSupliernama_suplier.AsString:=ENamaSuplier.Text;
         ZSuplieralamat.AsString:=EAlamat.Text;
         ZSuplierjenis_suplier.AsString:=EJenisSuplier.Text;
         ZSupliertelepon.AsString:=ETelp.Text;
         ZSupliertanggal_order.AsDateTime:=Dtglorder.Date;

         ZSuplier.post;

         end;
    except
      on salah:Exception do
      ShowMessage(salah.Message);

    end;
end;

end.
