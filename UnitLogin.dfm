object FormLogin: TFormLogin
  Left = 250
  Top = 200
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'AdvMetroForm'
  ClientHeight = 350
  ClientWidth = 514
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
  Appearance.CaptionStyle = csPlain
  Appearance.CaptionActiveColor = 15907840
  Appearance.Font.Charset = DEFAULT_CHARSET
  Appearance.Font.Color = clWhite
  Appearance.Font.Height = -11
  Appearance.Font.Name = 'Segoe UI'
  Appearance.Font.Style = []
  Appearance.TextColor = clBlack
  SizeGrip = True
  Text = ''
  PixelsPerInch = 96
  TextHeight = 13
  object CurvyEdit1: TCurvyEdit
    Left = 125
    Top = 98
    Width = 237
    Height = 24
    TabOrder = 0
    TabStop = False
    Version = '1.2.1.0'
    Controls = <>
    EmptyText = #29992#25143#21517
    ImeName = ''
    Text = ''
  end
  object CurvyEdit3: TCurvyEdit
    Left = 125
    Top = 225
    Width = 100
    Height = 24
    TabOrder = 1
    TabStop = False
    Version = '1.2.1.0'
    Controls = <>
    EmptyText = #39564#35777#30721
    ImeName = ''
    Text = ''
  end
  object CurvyPanel1: TCurvyPanel
    Left = 242
    Top = 225
    Width = 120
    Height = 24
    TabOrder = 2
    object AdvSmoothLabel1: TAdvSmoothLabel
      Left = 0
      Top = 0
      Width = 120
      Height = 24
      AutoShadowCaption = False
      AutoSize = True
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #30331'    '#24405
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Segoe UI'
      Caption.Font.Style = []
      Caption.ColorStart = clNavy
      CaptionShadow.Text = #30331'    '#24405
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.0.2'
      Align = alClient
      OnClick = AdvSmoothLabel1Click
      ExplicitHeight = 19
    end
  end
  object CurvyEdit2: TCurvyEdit
    Left = 124
    Top = 159
    Width = 238
    Height = 25
    TabOrder = 3
    TabStop = False
    Version = '1.2.1.0'
    Controls = <>
    EmptyText = #21475#20196
    ImeName = ''
    PasswordChar = '*'
    Text = ''
  end
end
