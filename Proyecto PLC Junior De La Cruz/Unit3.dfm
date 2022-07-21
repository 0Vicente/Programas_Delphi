object Form3: TForm3
  Left = 232
  Top = 209
  Width = 518
  Height = 218
  BorderStyle = bsSizeToolWin
  Caption = 'Fin de la Prueba'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 32
    Top = 64
    Width = 129
    Height = 64
    Caption = 'Iniciar de Nuevo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 189
    Top = 64
    Width = 129
    Height = 64
    Caption = 'Calificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 346
    Top = 64
    Width = 129
    Height = 64
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn3Click
  end
end
