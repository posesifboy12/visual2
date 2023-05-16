object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 451
  ClientWidth = 722
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
    Left = 335
    Top = 24
    Width = 51
    Height = 13
    Caption = 'KATEGORI'
  end
  object Button1: TButton
    Left = 456
    Top = 136
    Width = 75
    Height = 25
    Caption = 'MENU'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 136
    Width = 75
    Height = 25
    Caption = 'BARANG'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SUPLIER'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 168
    Top = 88
    Width = 105
    Height = 25
    Caption = 'DEPARTEMEN'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 456
    Top = 88
    Width = 105
    Height = 25
    Caption = 'ORDER BARANG'
    TabOrder = 4
  end
end
