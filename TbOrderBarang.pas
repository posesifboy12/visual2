unit TbOrderBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EIdBarang: TEdit;
    ENamaBarang: TEdit;
    EMerk: TEdit;
    EJumlah: TEdit;
    EStatus: TEdit;
    EIddev: TEdit;
    Dtglorder: TDateTimePicker;
    Label7: TLabel;
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
  Form7: TForm7;

implementation

{$R *.dfm}

uses Module;

procedure TForm7.Button1Click(Sender: TObject);
begin
  try
         with DataModule1 do
         begin
         ZOrderbarang.Append;
         ZOrderbarangid_barang.AsString:=EIdBarang.Text;
         ZOrderbarangnama_barang.AsString:=ENamaBarang.Text;
         ZOrderbarangmerek.AsString:=EMerk.Text;
         ZOrderbarangjumlah.AsString:=EJumlah.Text;
         ZOrderbarangstatus.AsString:=EStatus.Text;
         ZOrderbarangtanggal_order.AsDateTime:=Dtglorder.Date;
         ZOrderbarangid_dev.AsString:=EIddev.Text;

         ZOrderbarang.post;

         end;
    except
      on salah:Exception do
      ShowMessage(salah.Message);

    end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  try
         with DataModule1 do
         begin
         ZOrderbarang.Edit;
         ZOrderbarangid_barang.AsString:=EIdBarang.Text;
         ZOrderbarangnama_barang.AsString:=ENamaBarang.Text;
         ZOrderbarangmerek.AsString:=EMerk.Text;
         ZOrderbarangjumlah.AsString:=EJumlah.Text;
         ZOrderbarangstatus.AsString:=EStatus.Text;
         ZOrderbarangtanggal_order.AsDateTime:=Dtglorder.Date;
         ZOrderbarangid_dev.AsString:=EIddev.Text;

         ZOrderbarang.post;

         end;
    except
      on salah:Exception do
      ShowMessage(salah.Message);

    end;
end;

end.
