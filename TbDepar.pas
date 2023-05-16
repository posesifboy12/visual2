unit TbDepar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    EIddep: TEdit;
    ENamadep: TEdit;
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
  Form5: TForm5;

implementation

{$R *.dfm}

uses Module;

procedure TForm5.Button1Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZDepar.Append;
           ZDeparid_dep.AsString:=EIddep.Text;
           ZDeparnama_dep.AsString:=ENamadep.Text;


           ZDepar.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZDepar.Edit;
           ZDeparid_dep.AsString:=EIddep.Text;
           ZDeparnama_dep.AsString:=ENamadep.Text;


           ZDepar.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

end.
