unit TbMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    LAB: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Eidmenu: TEdit;
    Emenu: TEdit;
    Eurl: TEdit;
    Elevel: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    EFilterData: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Module;

procedure TForm3.Button1Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZMenu.Append;
           ZMenuid_menu.AsString:=Eidmenu.Text;
           ZMenumenu.AsString:=Emenu.Text;
           ZMenuurl.AsString:=Eurl.Text;
           ZMenulevel.AsString:=Elevel.Text;

           ZMenu.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
try
           with DataModule1 do
           begin
           ZMenu.Edit;
           ZMenuid_menu.AsString:=Eidmenu.Text;
           ZMenumenu.AsString:=Emenu.Text;
           ZMenuurl.AsString:=Eurl.Text;
           ZMenulevel.AsString:=Elevel.Text;

           ZMenu.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
 Eidmenu.Clear;
 Emenu.Clear;
 Eurl.Clear;
 Elevel.Clear;
 Eidmenu.SetFocus;
end;

end.
