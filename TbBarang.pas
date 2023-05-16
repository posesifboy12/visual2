unit TbBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LAB: TDBGrid;
    ESatuan: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    EFilterData: TEdit;
    Label6: TLabel;
    EIdBarang: TComboBox;
    EIdSuplier: TComboBox;
    EJumlah: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EFilterDataChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Module;

procedure TForm4.Button1Click(Sender: TObject);
begin
   try
           with DataModule1 do
           begin
           ZTb_barang.Append;
           ZTb_barangid_barang.AsString:=EIdBarang.Text;

           ZTb_barangsatuan.AsString:=ESatuan.Text;
           ZTb_barangjumlah.AsString:=EJumlah.Text;
           ZTb_barangid_suplier.AsString:=EIdSuplier.Text;

           ZTb_barang.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm4.EFilterDataChange(Sender: TObject);
var cari : String;
begin
  try
    cari :=QuotedStr('%'+EFilterData.Text+'%');
    with DataModule1 do
    begin
      ZTb_barang.SQL.Clear;
      ZTb_barang.SQL.Text:='SELECT * FROM tb_barang WHERE id_barang LIKE ' + cari + 'or satuan LIKE' + cari + 'or jumlah LIKE'+ cari + 'or id_suplier LIKE'+  cari;
      ZTb_barang.Open;
    end;

  except
    on salah:Exception do
    ShowMessage(salah.Message);

  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
   with DataModule1 do
  begin
    EIdBarang.Items.Clear;
    ZOrderbarang.Close;
    ZOrderbarang.Open;
    while not ZOrderbarang.Eof do
  begin
    EIdBarang.Items.Add(ZOrderbarang.FieldByName('id_barang').AsString);
    ZOrderbarang.Next;
  end
  end;
with DataModule1 do
  begin
    EJumlah.Items.Clear;
    ZOrderbarang.Close;
    ZOrderbarang.Open;
    while not ZOrderbarang.Eof do
  begin
    EJumlah.Items.Add(ZOrderbarang.FieldByName('jumlah').AsString);
    ZOrderbarang.Next;
  end
  end;
  with DataModule1 do
  begin
    EIdSuplier.Items.Clear;
    ZSuplier.Close;
    ZSuplier.Open;
    while not ZSuplier.Eof do
  begin
    EIdSuplier.Items.Add(ZSuplier.FieldByName('id_suplier').AsString);
    ZSuplier.Next;
  end
  end;
end;

end.