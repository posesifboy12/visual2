object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 432
  ClientWidth = 721
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
    Left = 200
    Top = 83
    Width = 42
    Height = 13
    Caption = 'ID MENU'
  end
  object Label2: TLabel
    Left = 200
    Top = 110
    Width = 28
    Height = 13
    Caption = 'MENU'
  end
  object Label3: TLabel
    Left = 200
    Top = 129
    Width = 19
    Height = 13
    Caption = 'URL'
  end
  object Label4: TLabel
    Left = 200
    Top = 157
    Width = 28
    Height = 13
    Caption = 'LEVEL'
  end
  object Label5: TLabel
    Left = 184
    Top = 384
    Width = 25
    Height = 13
    Caption = 'CARI'
  end
  object LAB: TDBGrid
    Left = 160
    Top = 224
    Width = 425
    Height = 120
    DataSource = DataModule1.DsMenu
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Eidmenu: TEdit
    Left = 264
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Emenu: TEdit
    Left = 264
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Eurl: TEdit
    Left = 264
    Top = 129
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Elevel: TEdit
    Left = 264
    Top = 156
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 464
    Top = 152
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 152
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 193
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 560
    Top = 193
    Width = 75
    Height = 25
    Caption = 'BERSIH'
    TabOrder = 8
    OnClick = Button4Click
  end
  object EFilterData: TEdit
    Left = 264
    Top = 376
    Width = 361
    Height = 21
    TabOrder = 9
  end
end
