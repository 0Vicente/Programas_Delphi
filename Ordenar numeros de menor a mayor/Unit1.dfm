object Form1: TForm1
  Left = 469
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Ordenador Ascendente'
  ClientHeight = 196
  ClientWidth = 256
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 153
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edit1keypress
  end
  object Edit2: TEdit
    Left = 8
    Top = 40
    Width = 153
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edit2keypress
  end
  object Edit3: TEdit
    Left = 8
    Top = 72
    Width = 153
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 2
    OnKeyPress = edit3keypress
  end
  object Button1: TButton
    Left = 8
    Top = 144
    Width = 97
    Height = 41
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 176
    Top = 8
    Width = 65
    Height = 89
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 8
    Top = 104
    Width = 153
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 5
    OnKeyPress = edit4keypress
  end
  object Button2: TButton
    Left = 136
    Top = 144
    Width = 105
    Height = 41
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = Button2Click
  end
end
