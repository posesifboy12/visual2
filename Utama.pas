unit Utama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EUser: TEdit;
    EPass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Module, Kategori;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if DataModule1.Zlogin.Locate('username',Euser.Text,[]) then
      begin
        // mengecek lagi password saat username sesuai tabel/benar
        if DataModule1.Zlogin.Locate('password',Epass.Text,[]) then
          begin
            //posisi password benar
            Form2.show;
            Form1.Hide;
            MessageBox(Handle,'SELAMAT DATANG','INFO',MB_ICONINFORMATION);
            Euser.Clear;
            Epass.Clear;
          end else
          begin
            //password salah tapi posisi username benar
            ShowMessage('Password Anda salah');
            Exit;
          end;
      end else
      begin
        // bila user tidak ada di tabel saat diketikan
        ShowMessage('Username atau Password salah');
        Exit;
    end;

end;
end.
