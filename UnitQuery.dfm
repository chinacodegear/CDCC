object FormQuery: TFormQuery
  Left = 250
  Top = 200
  BorderStyle = bsDialog
  BorderWidth = 1
  Caption = #32508#21512#26597#35810
  ClientHeight = 615
  ClientWidth = 647
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
  OnShow = AdvMetroFormShow
  Appearance.SystemIconColorDisabled = 5921370
  Appearance.Color = 16445929
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
  SizeGrip = True
  Text = ''
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox2: TAdvGroupBox
    Left = 58
    Top = 253
    Width = 518
    Height = 168
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #26399#38480#20449#24687
    TabOrder = 0
    object AdvGroupBox5: TAdvGroupBox
      Left = 24
      Top = 86
      Width = 463
      Height = 62
      CheckBox.Themed = False
      RoundEdges = True
      TabOrder = 0
      object AdvDateTimePicker5: TAdvDateTimePicker
        Left = 69
        Top = 25
        Width = 129
        Height = 21
        Date = 36526.000000000000000000
        Format = ''
        Time = 36526.000000000000000000
        ShowCheckbox = True
        Checked = False
        DateFormat = dfLong
        DoubleBuffered = False
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 0
        TabStop = True
        BorderStyle = bsSingle
        Ctl3D = False
        DateTime = 36526.000000000000000000
        Version = '1.2.5.0'
        LabelCaption = #36215#22987#26085#26399
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object AdvDateTimePicker6: TAdvDateTimePicker
        Left = 270
        Top = 25
        Width = 129
        Height = 21
        Date = 36526.000000000000000000
        Format = ''
        Time = 36526.000000000000000000
        ShowCheckbox = True
        Checked = False
        DateFormat = dfLong
        DoubleBuffered = False
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 1
        TabStop = True
        BorderStyle = bsSingle
        Ctl3D = False
        DateTime = 36526.000000000000000000
        Version = '1.2.5.0'
        LabelCaption = #32456#27490#26085#26399
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
    end
    object AdvOfficeRadioGroup1: TAdvOfficeRadioGroup
      Left = 24
      Top = 34
      Width = 463
      Height = 46
      Transparent = False
      RoundEdges = True
      Version = '1.4.1.1'
      Ctl3D = True
      ParentBackground = False
      TabOrder = 1
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #21512#21516#21040#26399
        #36153#29992#21040#26399
        #32564#36153#26085#26399)
      Themed = True
      ButtonVertAlign = tlCenter
      Ellipsis = False
      ShadowOffset = 0
    end
  end
  object AdvGroupBox3: TAdvGroupBox
    Left = 58
    Top = 421
    Width = 518
    Height = 161
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #31354#38388#20449#24687
    TabOrder = 1
    object AdvGroupBox4: TAdvGroupBox
      Left = 24
      Top = 75
      Width = 322
      Height = 61
      CaptionPosition = cpTopRight
      CheckBox.State = cbGrayed
      RoundEdges = True
      Caption = '['#24179#26041#31859']'
      TabOrder = 0
      object UnitAdvEditBtn7: TUnitAdvEditBtn
        Left = 192
        Top = 29
        Width = 103
        Height = 19
        EditAlign = eaCenter
        EditType = etMoney
        EmptyTextStyle = []
        ExcelStyleDecimalSeparator = True
        Flat = False
        FocusBorder = True
        FocusBorderColor = clRed
        FocusLabel = True
        Precision = 2
        LabelCaption = #23567#20110
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ImeMode = imChinese
        ReadOnly = False
        TabOrder = 0
        Text = '0.00'
        Visible = True
        Version = '1.3.6.0'
        ButtonStyle = bsButton
        ButtonWidth = 32
        Etched = False
        ButtonCaption = #26597
        UnitSpace = 20
      end
      object UnitAdvEditBtn5: TUnitAdvEditBtn
        Left = 39
        Top = 29
        Width = 95
        Height = 19
        EditAlign = eaCenter
        EditType = etMoney
        EmptyTextStyle = []
        Flat = False
        FocusBorder = True
        FocusBorderColor = clRed
        FocusLabel = True
        Precision = 2
        LabelCaption = #22823#20110
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        DoubleBuffered = True
        ImeMode = imChinese
        ReadOnly = False
        TabOrder = 1
        Text = '0.00'
        Visible = True
        Version = '1.3.6.0'
        ButtonStyle = bsButton
        ButtonWidth = 32
        Etched = False
        ButtonCaption = #26597
        UnitSpace = 20
      end
    end
    object AdvOfficeRadioGroup2: TAdvOfficeRadioGroup
      Left = 24
      Top = 27
      Width = 322
      Height = 42
      CaptionPosition = cpTopRight
      CheckBox.Checked = True
      CheckBox.State = cbChecked
      Transparent = False
      RoundEdges = True
      Version = '1.4.1.1'
      Ctl3D = True
      ParentBackground = False
      TabOrder = 1
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #24314#31569#38754#31215
        #20351#29992#38754#31215)
      Themed = True
      Alignment = taCenter
      ButtonVertAlign = tlCenter
      Ellipsis = False
    end
    object AdvComboBox1: TAdvComboBox
      Left = 410
      Top = 27
      Width = 77
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        '1'
        '2'
        '3')
      LabelCaption = #22330#39302#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 2
    end
    object AdvComboBox2: TAdvComboBox
      Left = 410
      Top = 71
      Width = 77
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        '1F'
        '2F'
        '3F'
        '4F'
        '5F')
      LabelCaption = #27004#23618#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 3
    end
    object AdvComboBox5: TAdvComboBox
      Left = 410
      Top = 115
      Width = 77
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G')
      LabelCaption = #21306#22495#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 4
    end
  end
  object AdvGroupBox1: TAdvGroupBox
    Left = 58
    Top = 48
    Width = 518
    Height = 205
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #22522#30784#20449#24687
    TabOrder = 2
    object UnitAdvEditBtn1: TUnitAdvEditBtn
      Left = 93
      Top = 38
      Width = 109
      Height = 19
      BorderColor = clBtnText
      EmptyText = #21830#38138#32534#21495
      EmptyTextStyle = []
      Flat = False
      FocusBorder = True
      FocusBorderColor = clRed
      FocusColor = clWindow
      FocusLabel = True
      LabelCaption = #21830#38138#32534#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.DisplayList.Strings = (
        #22815
        #20102
        #20040)
      Lookup.Enabled = True
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.History = True
      Lookup.ValueList.Strings = (
        #26159
        #21542)
      Lookup.Separator = ';'
      Lookup.SearchValue = True
      Lookup.ShowValue = True
      Color = clWindow
      ImeMode = imDisable
      ReadOnly = False
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      UnitSpace = 20
    end
    object UnitAdvEditBtn2: TUnitAdvEditBtn
      Left = 93
      Top = 80
      Width = 109
      Height = 19
      EditAlign = eaCenter
      EmptyText = #21512#21516#32534#21495
      EmptyTextStyle = []
      Flat = False
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      LabelCaption = #21512#21516#32534#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ImeMode = imChinese
      ReadOnly = False
      TabOrder = 1
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      UnitSpace = 20
    end
    object UnitAdvEditBtn3: TUnitAdvEditBtn
      Left = 294
      Top = 38
      Width = 193
      Height = 19
      EditAlign = eaCenter
      EmptyText = #21830#38138#21517#31216
      EmptyTextStyle = []
      Flat = False
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      LabelCaption = #21830#38138#21517#31216' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ImeMode = imChinese
      ReadOnly = False
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      UnitSpace = 20
    end
    object UnitAdvEditBtn4: TUnitAdvEditBtn
      Left = 294
      Top = 80
      Width = 193
      Height = 19
      EditAlign = eaCenter
      EmptyText = #31199#25143#22995#21517
      EmptyTextStyle = []
      Flat = False
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      LabelCaption = #31199#25143#22995#21517' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ImeMode = imChinese
      ReadOnly = False
      TabOrder = 3
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = True
      ButtonCaption = #26597
      UnitSpace = 20
    end
    object AdvComboBox3: TAdvComboBox
      Left = 294
      Top = 166
      Width = 109
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        #26222#36890#21830#25143
        #37325#28857#21830#25143)
      LabelCaption = #21830#25143#33635#35465' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 4
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object AdvComboBox4: TAdvComboBox
      Left = 294
      Top = 123
      Width = 109
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        #20351#29992#26435#20154
        #31199#36161#25143)
      LabelCaption = #31199#36161#24418#24335' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 5
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object AdvComboBox6: TAdvComboBox
      Left = 93
      Top = 123
      Width = 109
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        #24050#27424#36153
        #19981#27424#36153)
      LabelCaption = #27424#36153#24773#20917' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 6
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object AdvComboBox7: TAdvComboBox
      Left = 93
      Top = 166
      Width = 109
      Height = 21
      Color = clWindow
      Version = '1.6.2.1'
      Visible = True
      Style = csDropDownList
      EmptyTextStyle = []
      FocusBorder = True
      FocusBorderColor = clRed
      FocusLabel = True
      DropWidth = 0
      Enabled = True
      ItemIndex = -1
      Items.Strings = (
        #24050#25307#21830
        #26410#25307#21830)
      LabelCaption = #21830#38138#29366#24577' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 7
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object AdvMetroTile1: TAdvMetroTile
    Left = 508
    Top = 8
    Width = 68
    Height = 30
    Appearance.BorderColor = clHighlight
    Appearance.HoverColor = 15907840
    Appearance.HoverBorderColor = 15907840
    Appearance.HoverTextColor = clWhite
    Appearance.DownColor = 11576180
    Appearance.DownBorderColor = 11576180
    Appearance.DownTextColor = clWhite
    Appearance.DisabledColor = clSilver
    Appearance.DisabledBorderColor = clSilver
    Appearance.DisabledTextColor = clGray
    Caption = ''
    Layout = tlPicBottom
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
      870000041B494441546843ED984D521A4114C7FF6F0AE3320317885605B6C113
      444E209E20B81416D113A8279045C065C8092427104F10B275ACC213C8641795
      9A97EAD1C1999E9E99EE19484125B384FE78BFEEF7D57FC29A7FB4E6F6E3DF06
      B0BF387B16719389B608D8956F93811131DF794C433C95AEDDE36D77D1376E7C
      03F6C564CBF29E4E40D432368679E0591B67EEE1F69DF1DC8409DA00F6F9C4B6
      366727008E0A6F2E401E378E1771235A0076EFA64EA02B22D869C633F00BC018
      409D80B7A963192E831B6EA726C6E7FE3201ECDE4D8B40E72AE319FC93410350
      69A8720BE16EE05993C0628D0F2A2B3DE603B7531BE425480510C65B445F15C1
      79CD8453F7B03AD2DDD8BE707689714AC047794E1188448024B7F18063B75DED
      EA1A2E8F4B3A148FD0303990605D258008587A339B84DD46F837139A79365140
      D48968148E1316316195764C339412A0D2BF1900F429BC71DE134ABA2971C316
      D18FE8FFFCEDBE5D334ACF31003FCFF36C1231BE60A0A540C462CC63DE31C94C
      3100F9F419B89EB6ABB12A9B3706E479E5BE235C691ED8A27A4FDBD586EEFA11
      809762355DA6EBA8E24176258F4ADBBAB1100590D2A6C8F3D376ADAE7B1A79C7
      957BCE90087BC17C93B41A0190DDA768CAD40592532B33BE4F3BD5A6CEFC0840
      B97F3321D0D6FC240CAE5267B3C4607EEEB322AE7BDFAE667609623DE9061C0E
      6FA2BB4811E383B9957EBEBD1301FE96FF07007236D20DE43980E8552CC655B0
      E0B2D367563AD52D9CAF00921F32F378DAA9ED2CC23D74D688DD8066415B9918
      28F79C69B8F7D28DBF6816EA3977447837CF420FA5F2225E4D5937A02AA07901
      7217942C23D3FE8FD50183F625BD121B14942200450A681440D5892EB99829BB
      5F833D63D54ED11D0EA7EDEA7E91134E9B5BB4FB55BC07A2F5406CEE81F6DDF6
      FBE1A221E4DAE3EF65F8B454F61B7277E83FF7162081840F40F5E6CE533CD56F
      E28BC916F16C1C79B382EF98B16FF25A4A6CDEC4FADED32511CD5B75FFCDCDBC
      6BBA7EB22AD1BF6D5AE0CBB011FE4D101D1471275F5EF17029EB4C266F80B04D
      E9BA50DF39B280F3D849E6D038D33555F3C77C605366CF5DE939A720084D34FE
      09900CE579AE60839A49D2649118CB041056DBFD5B210F0ED2F44ED1FC81E855
      3E67B6C33E2ED3073A6AF0A07FD685B06FAA3B6901F81042E025EAAAA441D3F4
      2AB20D53A9251EEEB12A6C28E1680304463E6B9CDC4D126BD3607CC39907B298
      6BCBB14638BD3FAC9EE91C8C31C02B48B6F22CC60AA38931F2C0C3B41419D34C
      9907F79DDA4116446E00D5C2E276E6BFFF2E8D4D5BF117379D6BA60C0CF9A174
      90B6CE4201B24E4BE7FF1804F3981F371A49102B07E0270CA18E6F3E8D8238E3
      942E6025015E2166C3489A55F4632B0B10B85B38CDAA5A999507102095DE6D17
      C49F83AC1656CBD702E0A590B688A825D791B50148CA60FF017472FB32C7FC01
      2717574F7874886E0000000049454E44AE426082}
    PictureAutoColor = False
    TabOrder = 3
    Version = '1.1.2.0'
  end
end
