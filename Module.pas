unit Module;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    ZLogin: TZQuery;
    DataSource1: TDataSource;
    ZMenu: TZQuery;
    DsMenu: TDataSource;
    ZMenuid_menu: TIntegerField;
    ZMenumenu: TWideStringField;
    ZMenuurl: TWideStringField;
    ZMenulevel: TIntegerField;
    ZTb_barang: TZQuery;
    DSTb_barang: TDataSource;
    ZTb_barangid_barang: TIntegerField;
    ZTb_barangsatuan: TIntegerField;
    ZTb_barangjumlah: TIntegerField;
    ZTb_barangid_suplier: TIntegerField;
    ZDepar: TZQuery;
    DsDepar: TDataSource;
    ZDeparid_dep: TIntegerField;
    ZDeparnama_dep: TWideStringField;
    ZSuplier: TZQuery;
    DSSuplier: TDataSource;
    ZSuplierid_suplier: TIntegerField;
    ZSupliernama_suplier: TWideStringField;
    ZSuplieralamat: TWideStringField;
    ZSuplierjenis_suplier: TWideStringField;
    ZSupliertelepon: TWideStringField;
    ZSupliertanggal_order: TDateField;
    ZOrderbarang: TZQuery;
    DSorder: TDataSource;
    ZOrderbarangid_barang: TIntegerField;
    ZOrderbarangnama_barang: TWideStringField;
    ZOrderbarangmerek: TWideStringField;
    ZOrderbarangjumlah: TIntegerField;
    ZOrderbarangstatus: TWideStringField;
    ZOrderbarangtanggal_order: TDateField;
    ZOrderbarangid_dev: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
