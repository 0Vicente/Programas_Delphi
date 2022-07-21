object Form1: TForm1
  Left = 683
  Top = 302
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Nombre'
  ClientHeight = 134
  ClientWidth = 214
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 24
    Top = 24
    Width = 161
    Height = 27
    CharCase = ecUpperCase
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 12
    ParentFont = False
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 24
    Top = 160
    Width = 153
    Height = 21
    MaxLength = 12
    TabOrder = 1
  end
  object btn1: TButton
    Left = 24
    Top = 72
    Width = 73
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 72
    Width = 73
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = btn2Click
  end
end
