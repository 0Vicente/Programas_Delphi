object Form1: TForm1
  Left = 373
  Top = 151
  Width = 313
  Height = 372
  Caption = 'Calculadora Simple'
  Color = clNavy
  Font.Charset = GREEK_CHARSET
  Font.Color = clWindow
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 265
    Height = 34
    AutoSize = False
    Color = clInfoText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 160
    Width = 41
    Height = 33
    Caption = '1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 160
    Width = 41
    Height = 33
    Caption = '2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 160
    Width = 41
    Height = 33
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 112
    Width = 41
    Height = 33
    Caption = '4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 64
    Top = 112
    Width = 41
    Height = 33
    Caption = '5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 120
    Top = 112
    Width = 41
    Height = 33
    Caption = '6'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 64
    Width = 41
    Height = 33
    Caption = '7'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 64
    Top = 64
    Width = 41
    Height = 33
    Caption = '8'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 120
    Top = 64
    Width = 41
    Height = 33
    Caption = '9'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 120
    Top = 208
    Width = 41
    Height = 33
    Caption = '.'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 208
    Width = 97
    Height = 33
    Caption = '0'
    TabOrder = 11
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 176
    Top = 64
    Width = 41
    Height = 33
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 240
    Top = 64
    Width = 41
    Height = 33
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 176
    Top = 112
    Width = 41
    Height = 33
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 240
    Top = 112
    Width = 41
    Height = 33
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 176
    Top = 160
    Width = 105
    Height = 81
    Caption = '='
    TabOrder = 16
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 8
    Top = 264
    Width = 113
    Height = 49
    Caption = 'CE'
    TabOrder = 17
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 168
    Top = 264
    Width = 113
    Height = 49
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = Button18Click
  end
end
