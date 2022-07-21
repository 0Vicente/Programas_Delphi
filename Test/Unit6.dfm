object Form6: TForm6
  Left = 464
  Top = 309
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Form6'
  ClientHeight = 229
  ClientWidth = 261
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 88
    Width = 105
    Height = 89
    Caption = 'Iniciar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 88
    Width = 105
    Height = 89
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 232
    Width = 81
    Height = 21
    BorderStyle = bsNone
    TabOrder = 2
  end
  object Button3: TButton
    Left = 56
    Top = 8
    Width = 145
    Height = 57
    Caption = 'Calificar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
    OnKeyPress = keypress
  end
end
