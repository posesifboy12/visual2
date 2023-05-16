object Form7: TForm7
  Left = 0
  Top = 0
  ClientHeight = 452
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 43
    Width = 55
    Height = 13
    Caption = 'ID BARANG'
  end
  object Label2: TLabel
    Left = 72
    Top = 75
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object Label3: TLabel
    Left = 72
    Top = 104
    Width = 27
    Height = 13
    Caption = 'MERK'
  end
  object Label4: TLabel
    Left = 72
    Top = 136
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label5: TLabel
    Left = 72
    Top = 168
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label6: TLabel
    Left = 72
    Top = 195
    Width = 84
    Height = 13
    Caption = 'TANGGAL ORDER'
  end
  object Label7: TLabel
    Left = 78
    Top = 232
    Width = 33
    Height = 13
    Caption = 'ID DEV'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 272
    Width = 617
    Height = 120
    DataSource = DataModule1.DSorder
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EIdBarang: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ENamaBarang: TEdit
    Left = 160
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EMerk: TEdit
    Left = 160
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EJumlah: TEdit
    Left = 160
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EStatus: TEdit
    Left = 160
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EIddev: TEdit
    Left = 162
    Top = 214
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Dtglorder: TDateTimePicker
    Left = 162
    Top = 187
    Width = 186
    Height = 21
    Date = 45060.000000000000000000
    Time = 0.476448275461734700
    TabOrder = 7
  end
  object Button1: TButton
    Left = 480
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 592
    Top = 152
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 9
    OnClick = Button2Click
  end
end
