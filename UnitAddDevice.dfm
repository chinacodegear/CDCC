object FormAddDevice: TFormAddDevice
  Left = 250
  Top = 200
  BorderIcons = [biSystemMenu]
  Caption = #35774#22791#20449#24687#31649#29702
  ClientHeight = 357
  ClientWidth = 529
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
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 26
    Width = 529
    Height = 175
    Align = alTop
    Rounding = 0
    TabOrder = 0
    object Label1: TLabel
      Left = 31
      Top = 35
      Width = 48
      Height = 13
      Caption = #35774#22791#21517#31216
    end
    object Label2: TLabel
      Left = 31
      Top = 85
      Width = 48
      Height = 13
      Caption = #35774#22791#22411#21495
    end
    object Label3: TLabel
      Left = 204
      Top = 85
      Width = 48
      Height = 13
      Caption = #35774#22791#25968#37327
    end
    object Label4: TLabel
      Left = 354
      Top = 85
      Width = 48
      Height = 13
      Caption = #35774#22791#29366#24577
    end
    object AdvMetroTile1: TAdvMetroTile
      Left = 194
      Top = 130
      Width = 78
      Height = 24
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
      Caption = #28155' '#21152
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = AdvMetroTile1Click
    end
    object CurvyCombo1: TCurvyCombo
      Left = 408
      Top = 80
      Width = 100
      Height = 24
      TabOrder = 1
      TabStop = False
      Version = '1.2.1.0'
      AutoCloseUp = True
      Controls = <>
      ImeName = ''
      Items.Strings = (
        #27491#24120
        #25925#38556
        #25253#24223)
      Sorted = False
      Text = ''
      OnSelect = CurvyCombo1Select
    end
    object CurvyEdit1: TCurvyEdit
      Left = 85
      Top = 30
      Width = 423
      Height = 24
      TabOrder = 2
      TabStop = False
      Version = '1.2.1.0'
      Alignment = taCenter
      Controls = <>
      ImeName = ''
      Text = ''
    end
    object CurvyEdit2: TCurvyEdit
      Left = 85
      Top = 80
      Width = 100
      Height = 24
      TabOrder = 3
      TabStop = False
      Version = '1.2.1.0'
      Alignment = taCenter
      Controls = <>
      ImeName = ''
      Text = ''
    end
    object CurvyEdit3: TCurvyEdit
      Left = 258
      Top = 80
      Width = 76
      Height = 24
      TabOrder = 4
      TabStop = False
      Version = '1.2.1.0'
      Alignment = taCenter
      Controls = <>
      ImeName = ''
      NumbersOnly = True
      Text = ''
    end
    object AdvMetroTile2: TAdvMetroTile
      Left = 312
      Top = 130
      Width = 78
      Height = 24
      Appearance.BorderColor = clHighlight
      Appearance.HoverColor = 15907840
      Appearance.HoverBorderColor = 15907840
      Appearance.HoverTextColor = clWhite
      Appearance.DownColor = 11576180
      Appearance.DownBorderColor = 11576180
      Appearance.DownTextColor = clWhite
      Appearance.DisabledColor = clSilver
      Appearance.DisabledBorderColor = clRed
      Appearance.DisabledTextColor = clBlack
      Caption = #21024' '#38500
      Enabled = False
      TabOrder = 5
      Version = '1.1.2.0'
      OnClick = AdvMetroTile2Click
    end
    object AdvMetroTile3: TAdvMetroTile
      Left = 430
      Top = 130
      Width = 78
      Height = 24
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
      Caption = #25171' '#21360
      TabOrder = 6
      Version = '1.1.2.0'
      OnClick = AdvMetroTile3Click
    end
  end
  object DBGridEhDevice: TDBGridEh
    Tag = 1
    Left = 0
    Top = 201
    Width = 529
    Height = 156
    PopupMenuParams.BuildMenuOnPopup = True
    PopupMenuParams.UseIndicatorMenu = True
    Align = alClient
    AutoFitColWidths = True
    ColumnDefValues.Title.Alignment = taCenter
    Ctl3D = False
    DataSource = DM.DS01
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    EmptyDataInfo.Active = True
    EmptyDataInfo.Text = #26410#26597#35810#21040#25968#25454
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -11
    TitleParams.Font.Name = 'Tahoma'
    TitleParams.Font.Style = [fsBold]
    TitleParams.ParentFont = False
    OnCellClick = DBGridEhDeviceCellClick
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeviceName'
        Footers = <>
        Width = 141
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeviceCount'
        Footers = <>
        Width = 79
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeviceType'
        Footers = <>
        Width = 205
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeviceStatus'
        Footers = <>
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEhDevice
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -9
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      'xxx '#30340' '#35774#22791#20449#24687#21015#34920)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 306
    Top = 262
  end
end
