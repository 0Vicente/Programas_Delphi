object Form1: TForm1
  Left = 422
  Top = 284
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Imprimir n'#250'meros del 1 al 15 -'
  ClientHeight = 200
  ClientWidth = 286
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
    Left = 24
    Top = 16
    Width = 145
    Height = 28
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 1
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edit1keypress
  end
  object Edit2: TEdit
    Left = 24
    Top = 48
    Width = 145
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edit2keypress
  end
  object Edit3: TEdit
    Left = 24
    Top = 80
    Width = 145
    Height = 28
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 2
    OnKeyPress = edit3keypress
  end
  object Button1: TButton
    Left = 24
    Top = 128
    Width = 65
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 192
    Top = 8
    Width = 49
    Height = 169
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
  end
  object btn1: TButton
    Left = 104
    Top = 128
    Width = 65
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = btn1Click
  end
end
