object Form3: TForm3
  Left = 499
  Top = 285
  BorderStyle = bsSingle
  Caption = 'Test'
  ClientHeight = 223
  ClientWidth = 182
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
    Left = 8
    Top = 24
    Width = 167
    Height = 13
    Caption = '1.'#191'En que a'#241'o fue el gran chasco?'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 48
    Width = 153
    Height = 97
    Color = clMaroon
    Items.Strings = (
      '1755'
      '1883'
      '1844')
    ParentColor = False
    TabOrder = 0
  end
  object Button2: TButton
    Left = 56
    Top = 168
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
    Left = 200
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
