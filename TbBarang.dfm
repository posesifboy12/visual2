object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 452
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 83
    Width = 55
    Height = 13
    Caption = 'ID BARANG'
  end
  object Label3: TLabel
    Left = 200
    Top = 129
    Width = 40
    Height = 13
    Caption = 'SATUAN'
  end
  object Label4: TLabel
    Left = 200
    Top = 157
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label5: TLabel
    Left = 184
    Top = 384
    Width = 25
    Height = 13
    Caption = 'CARI'
  end
  object Label6: TLabel
    Left = 200
    Top = 187
    Width = 55
    Height = 13
    Caption = 'ID SUPLIER'
  end
  object LAB: TDBGrid
    Left = 160
    Top = 224
    Width = 425
    Height = 120
    DataSource = DataModule1.DSTb_barang
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ESatuan: TEdit
    Left = 279
    Top = 129
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 464
    Top = 152
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 152
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 464
    Top = 193
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 560
    Top = 193
    Width = 75
    Height = 25
    Caption = 'BERSIH'
    TabOrder = 5
  end
  object EFilterData: TEdit
    Left = 264
    Top = 376
    Width = 361
    Height = 21
    TabOrder = 6
    OnChange = EFilterDataChange
  end
  object EIdBarang: TComboBox
    Left = 279
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object EIdSuplier: TComboBox
    Left = 279
    Top = 183
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object EJumlah: TComboBox
    Left = 279
    Top = 156
    Width = 145
    Height = 21
    TabOrder = 9
  end
end
