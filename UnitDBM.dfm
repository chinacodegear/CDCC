object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 539
  Width = 659
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
    Left = 477
    Top = 22
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
    Left = 555
    Top = 25
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
    Left = 123
    Top = 457
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 251
    Top = 450
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
      DisplayLabel = #35774#22791#31867#22411
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
      'PaidFee,Payee,Recorder,Memo'
      'from T02PayFees'
      'where FeatureID=:FeatureID and FeeKind =:FeeKind')
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
    object FDQ02Recorder: TStringField
      DisplayLabel = #24405#20837#20154
      FieldName = 'Recorder'
      Origin = 'Recorder'
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
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 394
    Top = 462
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
end
