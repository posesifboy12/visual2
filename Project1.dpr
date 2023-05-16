program Project1;

uses
  Vcl.Forms,
  Utama in 'Utama.pas' {Form1},
  Module in 'Module.pas' {DataModule1: TDataModule},
  Kategori in 'Kategori.pas' {Form2},
  TbMenu in 'TbMenu.pas' {Form3},
  TbBarang in 'TbBarang.pas' {Form4},
  TbDepar in 'TbDepar.pas' {Form5},
  TbSuplier in 'TbSuplier.pas' {Form6},
  TbOrderBarang in 'TbOrderBarang.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
