object FormMeta: TFormMeta
  Left = 250
  Top = 200
  Caption = 'AdvMetroForm'
  ClientHeight = 450
  ClientWidth = 701
  Color = clWindow
  Constraints.MinHeight = 26
  Constraints.MinWidth = 100
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = AdvMetroFormCreate
  Appearance.SystemIconColorDisabled = 5921370
  Appearance.CaptionFont.Charset = DEFAULT_CHARSET
  Appearance.CaptionFont.Color = clWhite
  Appearance.CaptionFont.Height = -11
  Appearance.CaptionFont.Name = 'Segoe UI'
  Appearance.CaptionFont.Style = []
  Appearance.CaptionColor = 11576180
  Appearance.CaptionActiveColor = 15907840
  Appearance.Font.Charset = DEFAULT_CHARSET
  Appearance.Font.Color = clWhite
  Appearance.Font.Height = -11
  Appearance.Font.Name = 'Segoe UI'
  Appearance.Font.Style = []
  Appearance.TextColor = clBlack
  Text = ''
  PixelsPerInch = 96
  TextHeight = 13
  object LayerList: TComboBox
    Left = 57
    Top = 22
    Width = 78
    Height = 21
    TabOrder = 0
  end
  object FeeKinds: TComboBox
    Left = 162
    Top = 22
    Width = 76
    Height = 21
    TabOrder = 1
  end
  object HalLayer: TComboBox
    Left = 272
    Top = 22
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
