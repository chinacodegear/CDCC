object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 539
  Width = 751
  object GeoDBC: TSQLConnection
    DriverName = 'DevartSQLServer'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'SchemaOverride=%.dbo'
      'HostName=localhost'
      'Database=CDCC'
      'DriverName=DevartSQLServer'
      'User_Name=sa'
      'Password=masterkey'
      'LongStrings=True'
      'EnableBCD=True'
      'FetchAll=True'
      'UseUnicode=True')
    BeforeConnect = GeoDBCBeforeConnect
    Left = 25
    Top = 7
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=CDCC'
      'User_Name=sa'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MSSQL')
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnBeforeConnect
    Left = 91
    Top = 8
  end
  object FDQuick: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select UID, featureid '
      'from &TabName '
      'where Featureid like :FID')
    Left = 31
    Top = 87
    ParamData = <
      item
        Name = 'FID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    MacroData = <
      item
        Value = Null
        Name = 'TABNAME'
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 181
    Top = 81
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 180
    Top = 11
  end
  object FDQuery: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evCache, evRecordCountMode, evUnidirectional]
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.Cache = [fiDetails, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select featureid from &TableName'
      'where &FID like :IDValue'
      'and featureid like :AFeatID')
    Left = 27
    Top = 336
    ParamData = <
      item
        Name = 'IDVALUE'
        DataType = ftString
        ParamType = ptInput
        Value = '%-123'
      end
      item
        Name = 'AFEATID'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    MacroData = <
      item
        Value = 'T00Features'
        Name = 'TABLENAME'
      end
      item
        Value = 'Featureid'
        Name = 'FID'
      end>
  end
  object FDQ00: TFDQuery
    Connection = FDConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select FeatureID,FeatureName,FeatureStatus,'
      'FeatureKind,GrossArea,UsableArea,RentPrice,'
      'PropPrice,RentOff'
      'from T00Features '
      'where FeatureID =:FeatureID')
    Left = 26
    Top = 165
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = '1-1F-A-003'
      end>
  end
  object DS00: TDataSource
    DataSet = FDQ00
    Left = 29
    Top = 230
  end
  object FDQ01: TFDQuery
    Connection = FDConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select DeviceName,DeviceCount,DeviceType,'
      'DeviceStatus'
      'from T01Devices'
      'where FeatureID =:FeatureID')
    Left = 103
    Top = 165
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = '1-1F-A-003'
      end>
    object FDQ01DeviceName: TStringField
      DisplayLabel = #35774#22791#21517#31216
      DisplayWidth = 21
      FieldName = 'DeviceName'
      Size = 21
    end
    object FDQ01DeviceCount: TIntegerField
      DisplayLabel = #35774#22791#25968#37327
      DisplayWidth = 10
      FieldName = 'DeviceCount'
    end
    object FDQ01DeviceType: TStringField
      DisplayLabel = #35774#22791#22411#21495
      DisplayWidth = 19
      FieldName = 'DeviceType'
      Size = 21
    end
    object FDQ01DeviceStatus: TStringField
      DisplayLabel = #35774#22791#29366#24577
      DisplayWidth = 21
      FieldName = 'DeviceStatus'
      Size = 21
    end
  end
  object DS01: TDataSource
    DataSet = FDQ01
    Left = 107
    Top = 226
  end
  object FDQ13: TFDQuery
    Connection = FDConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select PactID,PactKind, PactBegin,PactEnd,'
      ' Margin, BossName, ShopKind, ShopRights, Phone1, '
      'Phone2, StarLevel, PactFile'
      'from T13PactInfo'
      'where FeatureID=:FeatureID and PactKind=:PactKind')
    Left = 170
    Top = 169
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = '1-1F-A-007'
      end
      item
        Name = 'PACTKIND'
        DataType = ftString
        ParamType = ptInput
        Value = #31199#37329
      end>
  end
  object DS13: TDataSource
    DataSet = FDQ13
    Left = 172
    Top = 231
  end
  object FDQ02: TFDQuery
    AutoCalcFields = False
    Connection = FDConn
    FormatOptions.AssignedValues = [fvFmtDisplayDate]
    FormatOptions.FmtDisplayDate = 'yyyy'#24180'mm'#26376'dd'#26085
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select PayDate,FeeBegin,FeeEnd,Dues,'
      'PaidFee,Payee,Memo'
      'from T02PayFees'
      'where FeatureID=:FeatureID and FeeKind =:FeeKind'
      '')
    Left = 245
    Top = 169
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEEKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ02PayDate: TDateField
      DisplayLabel = #32564#36153#26085#26399
      FieldName = 'PayDate'
      Origin = 'PayDate'
    end
    object FDQ02FeeBegin: TDateField
      DisplayLabel = #29983#25928#26085#26399
      FieldName = 'FeeBegin'
      Origin = 'FeeBegin'
    end
    object FDQ02FeeEnd: TDateField
      DisplayLabel = #21040#26399#26085#26399
      FieldName = 'FeeEnd'
      Origin = 'FeeEnd'
    end
    object FDQ02Dues: TBCDField
      DisplayLabel = #24212#25910#37329#39069
      FieldName = 'Dues'
      Origin = 'Dues'
      Precision = 10
      Size = 3
    end
    object FDQ02PaidFee: TBCDField
      DisplayLabel = #23454#25910#37329#39069
      FieldName = 'PaidFee'
      Origin = 'PaidFee'
      Precision = 10
      Size = 3
    end
    object FDQ02Payee: TStringField
      DisplayLabel = #25910#27454#20154
      FieldName = 'Payee'
      Origin = 'Payee'
      Size = 12
    end
    object FDQ02Memo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'Memo'
      Origin = 'Memo'
      Size = 30
    end
  end
  object DS02: TDataSource
    DataSet = FDQ02
    Left = 247
    Top = 224
  end
  object FDQuery2: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evCache, evRecordCountMode, evUnidirectional]
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.Cache = [fiDetails, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select featureid from &TableName'
      'where '
      '&FID >= :IDValue1 '
      'and'
      '&FID <= :IDValue2'
      'and '
      'featureid like :AFeatID'
      'and '
      'FeatureStatus = :AFeatStatus'
      ''
      '')
    Left = 23
    Top = 403
    ParamData = <
      item
        Name = 'IDVALUE1'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDVALUE2'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'AFEATID'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end
      item
        Name = 'AFEATSTATUS'
        DataType = ftString
        ParamType = ptInput
        Value = #26410#31199
      end>
    MacroData = <
      item
        Value = Null
        Name = 'TABLENAME'
      end
      item
        Value = Null
        Name = 'FID'
      end>
  end
  object DSQuery: TDataSource
    AutoEdit = False
    DataSet = FDQuery
    Left = 100
    Top = 371
  end
  object FDQuery3: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select Distinct FeatureID'
      'from T13PactInfo'
      'where '
      'PactBegin>=:PactBegin'
      'and'
      'PactEnd<=:PactEnd'
      'and'
      'PactKind like :PactKind'
      'and'
      'ShopKind like :ShopKind'
      'and'
      'ShopRights like :ShopRights'
      'and'
      'FeatureID like :FeatureID')
    Left = 189
    Top = 339
    ParamData = <
      item
        Name = 'PACTBEGIN'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTEND'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SHOPKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SHOPRIGHTS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQuery4: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select featureid,feekind from t02payfees '
      'group by featureid ,feekind '
      'having max(feeend)<getdate() '
      'order by featureid;')
    Left = 191
    Top = 400
  end
  object FDQFind: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select FeatureID,GrossArea,UsableArea,RentPrice,'
      'PropPrice,RentOff'
      'from T00Features '
      'where '
      'FeatureID like :FeatureID'
      'and FeatureStatus = '#39#26410#31199#39
      'and &AreaFiled >= :beginArea'
      'and &AreaFiled <= :endArea'
      'and UsableArea*RentPrice*365*(1-RentOff) >= :beginRent'
      'and UsableArea*RentPrice*365*(1-RentOff) <= :endRent'
      '')
    Left = 101
    Top = 446
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BEGINAREA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ENDAREA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BEGINRENT'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ENDRENT'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
    MacroData = <
      item
        Value = Null
        Name = 'AREAFILED'
      end>
  end
  object FDQshop: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      
        'select FeatureID ,FeatureName  ,FeatureStatus  ,FeatureKind  ,Gr' +
        'ossArea  ,'
      'UsableArea  ,RentPrice  ,PropPrice  ,RentOff,Recorder'
      'from T00Features')
    Left = 334
    Top = 14
    object FDQshopFeatureID: TStringField
      DisplayLabel = #21830#38138#32534#21495
      FieldName = 'FeatureID'
      Origin = 'FeatureID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQshopFeatureName: TStringField
      DisplayLabel = #21830#38138#21517#31216
      FieldName = 'FeatureName'
      Origin = 'FeatureName'
      Size = 36
    end
    object FDQshopFeatureStatus: TStringField
      DisplayLabel = #21830#38138#29366#24577
      FieldName = 'FeatureStatus'
      Origin = 'FeatureStatus'
      Size = 9
    end
    object FDQshopFeatureKind: TStringField
      DisplayLabel = #21830#38138#31867#22411
      FieldName = 'FeatureKind'
      Origin = 'FeatureKind'
      Size = 15
    end
    object FDQshopGrossArea: TBCDField
      DisplayLabel = #24314#31569#38754#31215
      FieldName = 'GrossArea'
      Origin = 'GrossArea'
      Precision = 7
      Size = 2
    end
    object FDQshopUsableArea: TBCDField
      DisplayLabel = #22871#20869#38754#31215
      FieldName = 'UsableArea'
      Origin = 'UsableArea'
      Precision = 7
      Size = 2
    end
    object FDQshopRentPrice: TBCDField
      DisplayLabel = #31199#37329#21333#20215
      FieldName = 'RentPrice'
      Origin = 'RentPrice'
      Precision = 10
      Size = 3
    end
    object FDQshopPropPrice: TBCDField
      DisplayLabel = #24180#29289#19994#36153
      FieldName = 'PropPrice'
      Origin = 'PropPrice'
      Precision = 10
      Size = 3
    end
    object FDQshopRentOff: TBCDField
      DisplayLabel = #20248#24800#39069#24230
      FieldName = 'RentOff'
      Origin = 'RentOff'
      Precision = 10
      Size = 2
    end
    object FDQshopRecorder: TStringField
      DisplayLabel = #35760#24405#20154
      FieldName = 'Recorder'
      Origin = 'Recorder'
      Size = 15
    end
  end
  object FDQshopUpdate: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'update T00Features set '
      ''
      'FeatureName= :FeatureName'
      ',FeatureStatus = :FeatureStatus '
      ',FeatureKind =:FeatureKind '
      ',GrossArea= :GrossArea '
      ',UsableArea =:UsableArea'
      ',RentPrice=:RentPrice'
      ',PropPrice=:PropPrice'
      ',RentOff=:RentOff'
      ',Recorder=:Recorder '
      'where FeatureID=:FeatureID ')
    Left = 332
    Top = 138
    ParamData = <
      item
        Name = 'FEATURENAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEATURESTATUS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEATUREKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GROSSAREA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USABLEAREA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RENTPRICE'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PROPPRICE'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RENTOFF'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSshop: TDataSource
    DataSet = FDQshop
    Left = 334
    Top = 72
  end
  object FDQfeeinfo: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select FeatureID  ,FeeKind  ,PayDate  ,FeeBegin  '
      ',FeeEnd  ,Dues  ,PaidFee  ,Payee  '
      ',Recorder  ,Memo'
      'from T02PayFees')
    Left = 407
    Top = 10
    object FDQfeeinfoFeatureID: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#38138#32534#21495
      FieldName = 'FeatureID'
      Origin = 'FeatureID'
      Required = True
      Size = 30
    end
    object FDQfeeinfoFeeKind: TStringField
      Alignment = taCenter
      DisplayLabel = #36153#29992#31867#22411
      FieldName = 'FeeKind'
      Origin = 'FeeKind'
      Size = 12
    end
    object FDQfeeinfoPayDate: TDateField
      Alignment = taCenter
      DisplayLabel = #32564#36153#26085#26399
      FieldName = 'PayDate'
      Origin = 'PayDate'
    end
    object FDQfeeinfoFeeBegin: TDateField
      Alignment = taCenter
      DisplayLabel = #29983#25928#26085#26399
      FieldName = 'FeeBegin'
      Origin = 'FeeBegin'
    end
    object FDQfeeinfoFeeEnd: TDateField
      Alignment = taCenter
      DisplayLabel = #21040#26399#26085#26399
      FieldName = 'FeeEnd'
      Origin = 'FeeEnd'
    end
    object FDQfeeinfoDues: TBCDField
      Alignment = taCenter
      DisplayLabel = #24212#25910#37329#39069
      FieldName = 'Dues'
      Origin = 'Dues'
      Precision = 10
      Size = 3
    end
    object FDQfeeinfoPaidFee: TBCDField
      Alignment = taCenter
      DisplayLabel = #23454#25910#37329#39069
      FieldName = 'PaidFee'
      Origin = 'PaidFee'
      Precision = 10
      Size = 3
    end
    object FDQfeeinfoPayee: TStringField
      Alignment = taCenter
      DisplayLabel = #25910#27454#20154
      FieldName = 'Payee'
      Origin = 'Payee'
      Size = 12
    end
    object FDQfeeinfoRecorder: TStringField
      Alignment = taCenter
      DisplayLabel = #35760#24405#20154
      FieldName = 'Recorder'
      Origin = 'Recorder'
      Size = 12
    end
    object FDQfeeinfoMemo: TStringField
      Alignment = taCenter
      DisplayLabel = #22791#27880
      FieldName = 'Memo'
      Origin = 'Memo'
      Size = 30
    end
  end
  object DSfeeinfo: TDataSource
    DataSet = FDQfeeinfo
    Left = 411
    Top = 70
  end
  object FDQfeeInsert: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'insert into T02PayFees values'
      '(:FeatureID,:FeeKind,:PayDate,:FeeBegin  '
      ',:FeeEnd,:Dues,:PaidFee,:Payee,:Recorder,:Memo)')
    Left = 410
    Top = 136
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEEKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PAYDATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEEBEGIN'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FEEEND'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DUES'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PAIDFEE'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PAYEE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MEMO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQpactInfo: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select'
      'FeatureID,PactID  ,PactKind ,PactBegin ,PactEnd ,'
      'Margin ,BossName  ,ShopKind  ,ShopRights  ,Phone1  ,'
      'Phone2  ,StarLevel  ,PactFile,Recorder'
      'from'
      'T13PactInfo')
    Left = 480
    Top = 11
    object FDQpactInfoFeatureID: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#38138#32534#21495
      FieldName = 'FeatureID'
      Origin = 'FeatureID'
      Required = True
      Size = 30
    end
    object FDQpactInfoPactID: TStringField
      Alignment = taCenter
      DisplayLabel = #21512#21516#32534#21495
      FieldName = 'PactID'
      Origin = 'PactID'
      Required = True
      Size = 10
    end
    object FDQpactInfoPactKind: TStringField
      Alignment = taCenter
      DisplayLabel = #21512#21516#31867#22411
      FieldName = 'PactKind'
      Origin = 'PactKind'
      Required = True
      Size = 15
    end
    object FDQpactInfoPactBegin: TDateField
      Alignment = taCenter
      DisplayLabel = #21512#21516#36215#22987
      FieldName = 'PactBegin'
      Origin = 'PactBegin'
      Required = True
    end
    object FDQpactInfoPactEnd: TDateField
      Alignment = taCenter
      DisplayLabel = #21512#21516#32456#27490
      FieldName = 'PactEnd'
      Origin = 'PactEnd'
      Required = True
    end
    object FDQpactInfoMargin: TBCDField
      Alignment = taCenter
      DisplayLabel = #20445#35777#37329#39069
      FieldName = 'Margin'
      Origin = 'Margin'
      Precision = 10
      Size = 3
    end
    object FDQpactInfoBossName: TStringField
      Alignment = taCenter
      DisplayLabel = #32852#31995#20154
      FieldName = 'BossName'
      Origin = 'BossName'
      Required = True
      Size = 15
    end
    object FDQpactInfoShopKind: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#25143#31867#22411
      FieldName = 'ShopKind'
      Origin = 'ShopKind'
      Required = True
      Size = 15
    end
    object FDQpactInfoShopRights: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#38138#26435#23646
      FieldName = 'ShopRights'
      Origin = 'ShopRights'
      Required = True
      Size = 12
    end
    object FDQpactInfoPhone1: TStringField
      Alignment = taCenter
      DisplayLabel = #32852#31995#30005#35805
      FieldName = 'Phone1'
      Origin = 'Phone1'
      Required = True
      Size = 15
    end
    object FDQpactInfoPhone2: TStringField
      Alignment = taCenter
      DisplayLabel = #22791#29992#30005#35805
      FieldName = 'Phone2'
      Origin = 'Phone2'
      Size = 15
    end
    object FDQpactInfoStarLevel: TIntegerField
      Alignment = taCenter
      DisplayLabel = #20449#29992#31561#32423
      FieldName = 'StarLevel'
      Origin = 'StarLevel'
      Required = True
    end
    object FDQpactInfoPactFile: TVarBytesField
      Alignment = taCenter
      DisplayLabel = #21512#21516#25991#26412
      FieldName = 'PactFile'
      Origin = 'PactFile'
      Size = 1
    end
    object FDQpactInfoRecorder: TStringField
      DisplayLabel = #35760#24405#20154
      FieldName = 'Recorder'
      Origin = 'Recorder'
      Size = 15
    end
  end
  object DSpactInfo: TDataSource
    DataSet = FDQpactInfo
    Left = 481
    Top = 72
  end
  object FDQpactInsert: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'insert into T13PactInfo'
      '('
      'FeatureID,PactID,PactKind,PactBegin ,PactEnd,'
      'Margin,BossName,ShopKind,ShopRights,Phone1,'
      'Phone2,StarLevel,Recorder)'
      'values'
      '('
      ':FeatureID,:PactID  ,:PactKind ,:PactBegin ,:PactEnd ,'
      ':Margin ,:BossName  ,:ShopKind  ,:ShopRights  ,:Phone1  ,'
      ':Phone2  ,:StarLevel,:Recorder'
      ')')
    Left = 489
    Top = 136
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTBEGIN'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PACTEND'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MARGIN'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BOSSNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SHOPKIND'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SHOPRIGHTS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHONE1'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHONE2'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STARLEVEL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQEm: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select FeatureID,ReadDate,Reading,Recorder,Memo'
      'from'
      'T03EMeters')
    Left = 559
    Top = 12
    object FDQEmFeatureID: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#38138#32534#21495
      FieldName = 'FeatureID'
      Origin = 'FeatureID'
      Required = True
      Size = 30
    end
    object FDQEmReadDate: TDateField
      Alignment = taCenter
      DisplayLabel = #35835#25968#26085#26399
      FieldName = 'ReadDate'
      Origin = 'ReadDate'
    end
    object FDQEmReading: TIntegerField
      Alignment = taCenter
      DisplayLabel = #30005#34920#35835#25968
      FieldName = 'Reading'
      Origin = 'Reading'
    end
    object FDQEmRecorder: TStringField
      Alignment = taCenter
      DisplayLabel = #35760#24405#20154
      FieldName = 'Recorder'
      Origin = 'Recorder'
      Size = 12
    end
    object FDQEmMemo: TStringField
      Alignment = taCenter
      DisplayLabel = #22791#27880
      FieldName = 'Memo'
      Origin = 'Memo'
      Size = 30
    end
  end
  object DSem: TDataSource
    DataSet = FDQEm
    Left = 560
    Top = 72
  end
  object FDQemInsert: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'insert into T03EMeters values'
      '('
      ':FeatureID,:ReadDate,:Reading,:Recorder,:Memo'
      ')')
    Left = 562
    Top = 135
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'READDATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'READING'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MEMO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQstdRent: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select FeatureKind, FloorID, Fee, Y2016, Y2017, Y2018'
      'from'
      'T04RentNorm')
    Left = 631
    Top = 16
    object FDQstdRentFeatureKind: TStringField
      Alignment = taCenter
      DisplayLabel = #21830#38138#31867#22411
      FieldName = 'FeatureKind'
      Origin = 'FeatureKind'
      Required = True
      Size = 15
    end
    object FDQstdRentFloorID: TIntegerField
      Alignment = taCenter
      DisplayLabel = #25152#22312#27004#23618
      FieldName = 'FloorID'
      Origin = 'FloorID'
    end
    object FDQstdRentFee: TBCDField
      Alignment = taCenter
      DisplayLabel = #31199#37329
      FieldName = 'Fee'
      Origin = 'Fee'
      Precision = 10
      Size = 3
    end
    object FDQstdRentY2016: TBCDField
      Alignment = taCenter
      DisplayLabel = '2016'#20248#24800
      FieldName = 'Y2016'
      Origin = 'Y2016'
      Precision = 7
      Size = 2
    end
    object FDQstdRentY2017: TBCDField
      Alignment = taCenter
      DisplayLabel = '2017'#20248#24800
      FieldName = 'Y2017'
      Origin = 'Y2017'
      Precision = 7
      Size = 2
    end
    object FDQstdRentY2018: TBCDField
      Alignment = taCenter
      DisplayLabel = '2018'#20248#24800
      FieldName = 'Y2018'
      Origin = 'Y2018'
      Precision = 7
      Size = 2
    end
  end
  object FDQstdProp: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select FeatureKind, FloorID, Fee'
      'from'
      'T05PropNorm')
    Left = 695
    Top = 15
    object FDQstdPropFeatureKind: TStringField
      DisplayLabel = #21830#38138#31867#22411
      FieldName = 'FeatureKind'
      Origin = 'FeatureKind'
      Required = True
      Size = 15
    end
    object FDQstdPropFloorID: TIntegerField
      DisplayLabel = #25152#22312#27004#23618
      FieldName = 'FloorID'
      Origin = 'FloorID'
    end
    object FDQstdPropFee: TBCDField
      DisplayLabel = #29289#19994#36153#29992
      FieldName = 'Fee'
      Origin = 'Fee'
      Precision = 10
      Size = 3
    end
  end
  object DSrent: TDataSource
    DataSet = FDQstdRent
    Left = 635
    Top = 71
  end
  object DSprop: TDataSource
    DataSet = FDQstdProp
    Left = 696
    Top = 73
  end
  object FDQSynch: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'update &L0000_Fea  '
      'set '
      'featurename = '
      '(select featurename  from T00Features  '
      'where  T00Features.featureid = &L0000_Fea.featureid)')
    Left = 322
    Top = 393
    MacroData = <
      item
        Value = Null
        Name = 'L0000_FEA'
        DataType = mdIdentifier
      end>
  end
  object FDQaddDevice: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'insert into T01Devices values'
      '('
      ':FeatureID,:DeviceName,:DeviceCount,'
      ':DeviceType,:DeviceStatus,:Recorder'
      ')')
    Left = 524
    Top = 309
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICENAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICECOUNT'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICETYPE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICESTATUS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQdelDevice: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'delete from  T01Devices'
      'where '
      'FeatureID=:FeatureID and '
      'DeviceName=:DeviceName and'
      'DeviceCount=:DeviceCount and'
      'DeviceType=:DeviceType and'
      'DeviceStatus=:DeviceStatus and'
      'Recorder=:Recorder'
      ' ')
    Left = 527
    Top = 362
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICENAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICECOUNT'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICETYPE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DEVICESTATUS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECORDER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQstyle: TFDQuery
    Connection = FDConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select style_data from ttkgisstyle'
      'where '
      'style_name = :styleName')
    Left = 455
    Top = 442
    ParamData = <
      item
        Name = 'STYLENAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
