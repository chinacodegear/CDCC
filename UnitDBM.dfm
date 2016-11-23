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
    Left = 28
    Top = 22
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=CDCC'
      'User_Name=sa'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MSSQL')
    LoginPrompt = False
    BeforeConnect = FDConnBeforeConnect
    Left = 106
    Top = 26
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
      'select UID, featureid from &TabName where Featureid like :FID')
    Left = 160
    Top = 103
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
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    Left = 22
    Top = 452
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
    Left = 229
    Top = 101
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
    Left = 230
    Top = 153
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
    Left = 306
    Top = 101
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
    Left = 306
    Top = 155
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
      'where FeatureID=:FeatureID ')
    Left = 373
    Top = 105
    ParamData = <
      item
        Name = 'FEATUREID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DS13: TDataSource
    DataSet = FDQ13
    Left = 375
    Top = 158
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
    Left = 448
    Top = 105
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
    Left = 450
    Top = 160
  end
end
