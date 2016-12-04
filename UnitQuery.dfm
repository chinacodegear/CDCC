object FormQuery: TFormQuery
  Left = 250
  Top = 200
  BorderIcons = []
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = #32508#21512#26597#35810
  ClientHeight = 600
  ClientWidth = 518
  Color = clWindow
  Constraints.MinHeight = 26
  Constraints.MinWidth = 100
  Ctl3D = False
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = AdvMetroFormCreate
  OnShow = AdvMetroFormShow
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
  Text = ''
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox2: TAdvGroupBox
    Left = 0
    Top = 238
    Width = 518
    Height = 145
    BorderColor = clBlue
    BorderStyle = bsDouble
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #36153#29992#20449#24687
    TabOrder = 0
    OnCheckBoxClick = AdvGroupBox1CheckBoxClick
    object AdvGroupBox5: TAdvGroupBox
      Left = 24
      Top = 82
      Width = 463
      Height = 42
      CheckBox.Themed = False
      RoundEdges = True
      TabOrder = 0
      object AdvFeeBegin: TAdvDateTimePicker
        Left = 69
        Top = 12
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
      object AdvFeeEnd: TAdvDateTimePicker
        Left = 281
        Top = 12
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
    object AdvRGFee: TAdvOfficeRadioGroup
      Left = 24
      Top = 27
      Width = 413
      Height = 42
      Transparent = False
      RoundEdges = True
      Version = '1.4.1.1'
      Ctl3D = True
      ParentBackground = False
      TabOrder = 1
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        #24050#32463#27424#36153
        #23578#26410#27424#36153
        #36153#29992#21040#26399
        #32564#36153#26085#26399)
      Themed = True
      ButtonVertAlign = tlCenter
      Ellipsis = False
      ShadowOffset = 0
    end
    object AdvMetroTile3: TAdvMetroTile
      Left = 443
      Top = 27
      Width = 47
      Height = 42
      Appearance.BorderColor = clHighlight
      Appearance.HoverColor = clWhite
      Appearance.HoverBorderColor = clRed
      Appearance.HoverTextColor = clWhite
      Appearance.DownColor = clWhite
      Appearance.DownBorderColor = clRed
      Appearance.DownTextColor = clWhite
      Appearance.DisabledColor = clSilver
      Appearance.DisabledBorderColor = clSilver
      Appearance.DisabledTextColor = clGray
      Caption = ''
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
      TabOrder = 2
      Version = '1.1.2.0'
      OnClick = AdvMetroTile3Click
    end
  end
  object AdvGroupBox1: TAdvGroupBox
    Left = 0
    Top = 68
    Width = 518
    Height = 170
    BorderColor = clBlue
    BorderStyle = bsDouble
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #22522#30784#20449#24687
    TabOrder = 1
    OnCheckBoxClick = AdvGroupBox1CheckBoxClick
    object UnitAdvEditBtn1: TUnitAdvEditBtn
      Left = 93
      Top = 135
      Width = 129
      Height = 19
      BorderColor = clBtnText
      EditType = etRange
      EmptyText = #21830#38138#32534#21495
      EmptyTextStyle = []
      Flat = False
      FocusBorder = True
      FocusBorderColor = clRed
      FocusColor = clWindow
      FocusLabel = True
      MaxValue = 999
      MaxFloatValue = 999.000000000000000000
      LengthLimit = 3
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
      MaxLength = 3
      ReadOnly = False
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      OnClickBtn = UnitAdvEditBtn1ClickBtn
      UnitSpace = 20
    end
    object UnitAdvEditBtn3: TUnitAdvEditBtn
      Left = 305
      Top = 135
      Width = 185
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
      TabOrder = 1
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      OnClickBtn = UnitAdvEditBtn3ClickBtn
      UnitSpace = 20
    end
    object AdvOfficeRadioGroup2: TAdvOfficeRadioGroup
      Left = 265
      Top = 27
      Width = 172
      Height = 42
      CaptionPosition = cpTopRight
      CheckBox.Checked = True
      CheckBox.State = cbChecked
      Transparent = False
      RoundEdges = True
      Version = '1.4.1.1'
      Ctl3D = True
      ParentBackground = False
      TabOrder = 2
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #24314#31569#38754#31215
        #22871#20869#38754#31215)
      Themed = True
      Alignment = taCenter
      ButtonVertAlign = tlCenter
      Ellipsis = False
    end
    object AdvMetroTile4: TAdvMetroTile
      Left = 443
      Top = 27
      Width = 47
      Height = 42
      Appearance.BorderColor = clHighlight
      Appearance.HoverColor = clWhite
      Appearance.HoverBorderColor = clRed
      Appearance.HoverTextColor = clWhite
      Appearance.DownColor = clWhite
      Appearance.DownBorderColor = clRed
      Appearance.DownTextColor = clWhite
      Appearance.DisabledColor = clSilver
      Appearance.DisabledBorderColor = clSilver
      Appearance.DisabledTextColor = clGray
      Caption = ''
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
      OnClick = AdvMetroTile4Click
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 29
      Top = 75
      Width = 461
      Height = 43
      CaptionPosition = cpTopRight
      CheckBox.State = cbGrayed
      RoundEdges = True
      Caption = '['#24179#26041#31859']'
      TabOrder = 4
      object UnitAdvEditBtn7: TUnitAdvEditBtn
        Left = 276
        Top = 15
        Width = 129
        Height = 19
        EditAlign = eaCenter
        EditType = etFloat
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
        Text = '80.00'
        Visible = True
        Version = '1.3.6.0'
        ButtonStyle = bsButton
        ButtonWidth = 32
        Etched = False
        ButtonCaption = #26597
        OnClickBtn = UnitAdvEditBtn7ClickBtn
        UnitSpace = 20
      end
      object UnitAdvEditBtn5: TUnitAdvEditBtn
        Left = 64
        Top = 15
        Width = 129
        Height = 19
        EditAlign = eaCenter
        EditType = etFloat
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
        OnClickBtn = UnitAdvEditBtn5ClickBtn
        UnitSpace = 20
      end
    end
    object AdvOfficeRadioGroup3: TAdvOfficeRadioGroup
      Left = 29
      Top = 27
      Width = 230
      Height = 42
      CaptionPosition = cpTopRight
      CheckBox.Checked = True
      CheckBox.State = cbChecked
      Transparent = False
      RoundEdges = True
      Version = '1.4.1.1'
      Ctl3D = True
      ParentBackground = False
      TabOrder = 5
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #24050#31199
        #26410#31199)
      Themed = True
      Alignment = taCenter
      ButtonVertAlign = tlCenter
      Ellipsis = False
    end
  end
  object AdvMetroTile2: TAdvMetroTile
    Left = 493
    Top = 72
    Width = 25
    Height = 21
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
    Caption = #19968
    Layout = tlPicBackground
    TabOrder = 2
    Version = '1.1.2.0'
    OnClick = AdvMetroTile2Click
  end
  object AdvGroupBox6: TAdvGroupBox
    Left = 0
    Top = 0
    Width = 518
    Height = 68
    BorderColor = clBlue
    CaptionPosition = cpTopRight
    Caption = #20301#32622#20449#24687
    TabOrder = 3
    object AdvComboBox1: TAdvComboBox
      Left = 93
      Top = 28
      Width = 77
      Height = 21
      Hint = '%'
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
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
      TabOrder = 0
      Text = #19981#38480
      OnChange = AdvComboBox1Change
    end
    object AdvComboBox2: TAdvComboBox
      Left = 253
      Top = 28
      Width = 77
      Height = 21
      Hint = '%'
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
        '1F'
        '2F'
        '3F'
        '4F'
        '5F'
        '')
      LabelCaption = #27004#23618#21495' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 1
      Text = #19981#38480
      OnChange = AdvComboBox2Change
    end
    object AdvComboBox5: TAdvComboBox
      Left = 413
      Top = 28
      Width = 77
      Height = 21
      Hint = '%'
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
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
      TabOrder = 2
      Text = #19981#38480
      OnChange = AdvComboBox5Change
    end
  end
  object AdvGroupBox3: TAdvGroupBox
    Left = 0
    Top = 383
    Width = 518
    Height = 208
    BorderColor = clBlue
    BorderStyle = bsDouble
    CheckBox.Checked = True
    CheckBox.State = cbChecked
    CheckBox.Visible = True
    Caption = #21512#21516#20449#24687
    TabOrder = 4
    OnCheckBoxClick = AdvGroupBox1CheckBoxClick
    object UnitAdvEditBtn2: TUnitAdvEditBtn
      Left = 93
      Top = 120
      Width = 397
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
      CharCase = ecUpperCase
      Color = clWindow
      ImeMode = imChinese
      ReadOnly = False
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '1.3.6.0'
      ButtonStyle = bsButton
      ButtonWidth = 32
      Etched = False
      ButtonCaption = #26597
      OnClickBtn = UnitAdvEditBtn2ClickBtn
      UnitSpace = 20
    end
    object AdvGroupBox8: TAdvGroupBox
      Left = 24
      Top = 27
      Width = 413
      Height = 42
      CheckBox.Themed = False
      RoundEdges = True
      TabOrder = 1
      object advPactBegin: TAdvDateTimePicker
        Left = 69
        Top = 12
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
      object advPactEnd: TAdvDateTimePicker
        Left = 281
        Top = 12
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
    object AdvShopRights: TAdvComboBox
      Left = 253
      Top = 84
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
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
      TabOrder = 2
      Text = #19981#38480
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object UnitAdvEditBtn4: TUnitAdvEditBtn
      Left = 93
      Top = 155
      Width = 397
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
      OnClickBtn = UnitAdvEditBtn4ClickBtn
      UnitSpace = 20
    end
    object AdvShopKind: TAdvComboBox
      Left = 413
      Top = 84
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
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
      Text = #19981#38480
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object AdvMetroTile5: TAdvMetroTile
      Left = 443
      Top = 27
      Width = 47
      Height = 42
      Appearance.BorderColor = clHighlight
      Appearance.HoverColor = clWhite
      Appearance.HoverBorderColor = clRed
      Appearance.HoverTextColor = clWhite
      Appearance.DownColor = clWhite
      Appearance.DownBorderColor = clRed
      Appearance.DownTextColor = clWhite
      Appearance.DisabledColor = clSilver
      Appearance.DisabledBorderColor = clSilver
      Appearance.DisabledTextColor = clGray
      Caption = ''
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
      TabOrder = 5
      Version = '1.1.2.0'
      OnClick = AdvMetroTile5Click
    end
    object AdvPackKind: TAdvComboBox
      Left = 93
      Top = 84
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
      ItemIndex = 0
      Items.Strings = (
        #19981#38480
        #31199#37329
        #29289#19994)
      LabelCaption = #21512#21516#31867#22411' = '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 6
      Text = #19981#38480
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
end
