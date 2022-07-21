object Form2: TForm2
  Left = 419
  Top = 295
  Width = 297
  Height = 275
  Caption = 'Form2'
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 121
    Height = 28
    Alignment = taCenter
    Caption = 'Instrucciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 225
    Height = 25
    AutoSize = False
    Caption = 'Selecciona una respuesta para cada pregunta'
  end
  object Button1: TButton
    Left = 152
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Siguiente'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Atras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
end
