object Form4: TForm4
  Left = 454
  Top = 287
  BorderStyle = bsSingle
  Caption = 'Test'
  ClientHeight = 207
  ClientWidth = 225
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 207
    Height = 13
    Caption = '2.'#191'En que A'#241'o fue la caida de las estrellas?'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 48
    Width = 201
    Height = 97
    Items.Strings = (
      '1833'
      '1755'
      '1860')
    TabOrder = 0
  end
  object Button2: TButton
    Left = 80
    Top = 160
    Width = 73
    Height = 41
    Caption = 'Siguiente'
    Default = True
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
    Left = 272
    Top = 48
    Width = 97
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
