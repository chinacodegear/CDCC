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
    Left = 43
    Top = 43
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
    Left = 151
    Top = 46
  end
  object FDQuery1: TFDQuery
    Connection = FDConn
    Left = 149
    Top = 142
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 275
    Top = 39
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 406
    Top = 39
  end
end
