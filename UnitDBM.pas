unit UnitDBM;

interface

uses
  System.SysUtils, System.Classes, DBXDevartSQLServer, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DBXMSSQL,
  FireDAC.VCLUI.Async;

type
  TDM = class(TDataModule)
    GeoDBC: TSQLConnection;
    FDConn: TFDConnection;
    FDQuick: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDQuery: TFDQuery;
    FDQ00: TFDQuery;
    DS00: TDataSource;
    FDQ01: TFDQuery;
    DS01: TDataSource;
    FDQ01DeviceName: TStringField;
    FDQ01DeviceCount: TIntegerField;
    FDQ01DeviceType: TStringField;
    FDQ01DeviceStatus: TStringField;
    FDQ13: TFDQuery;
    DS13: TDataSource;
    FDQ02: TFDQuery;
    DS02: TDataSource;
    FDQ02PayDate: TDateField;
    FDQ02FeeBegin: TDateField;
    FDQ02FeeEnd: TDateField;
    FDQ02Dues: TBCDField;
    FDQ02PaidFee: TBCDField;
    FDQ02Payee: TStringField;
    FDQ02Memo: TStringField;
    FDQuery2: TFDQuery;
    DSQuery: TDataSource;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    FDQFind: TFDQuery;
    FDQshop: TFDQuery;
    FDQshopUpdate: TFDQuery;
    DSshop: TDataSource;
    FDQshopFeatureID: TStringField;
    FDQshopFeatureName: TStringField;
    FDQshopFeatureStatus: TStringField;
    FDQshopFeatureKind: TStringField;
    FDQshopGrossArea: TBCDField;
    FDQshopUsableArea: TBCDField;
    FDQshopRentPrice: TBCDField;
    FDQshopPropPrice: TBCDField;
    FDQshopRentOff: TBCDField;
    FDQfeeinfo: TFDQuery;
    DSfeeinfo: TDataSource;
    FDQfeeInsert: TFDQuery;
    FDQfeeinfoFeatureID: TStringField;
    FDQfeeinfoFeeKind: TStringField;
    FDQfeeinfoPayDate: TDateField;
    FDQfeeinfoFeeBegin: TDateField;
    FDQfeeinfoFeeEnd: TDateField;
    FDQfeeinfoDues: TBCDField;
    FDQfeeinfoPaidFee: TBCDField;
    FDQfeeinfoPayee: TStringField;
    FDQfeeinfoRecorder: TStringField;
    FDQfeeinfoMemo: TStringField;
    FDQpactInfo: TFDQuery;
    DSpactInfo: TDataSource;
    FDQpactInsert: TFDQuery;
    FDQpactInfoFeatureID: TStringField;
    FDQpactInfoPactID: TStringField;
    FDQpactInfoPactKind: TStringField;
    FDQpactInfoPactBegin: TDateField;
    FDQpactInfoPactEnd: TDateField;
    FDQpactInfoMargin: TBCDField;
    FDQpactInfoBossName: TStringField;
    FDQpactInfoShopKind: TStringField;
    FDQpactInfoShopRights: TStringField;
    FDQpactInfoPhone1: TStringField;
    FDQpactInfoPhone2: TStringField;
    FDQpactInfoStarLevel: TIntegerField;
    FDQpactInfoPactFile: TVarBytesField;
    FDQEm: TFDQuery;
    DSem: TDataSource;
    FDQemInsert: TFDQuery;
    FDQEmFeatureID: TStringField;
    FDQEmReadDate: TDateField;
    FDQEmReading: TIntegerField;
    FDQEmRecorder: TStringField;
    FDQEmMemo: TStringField;
    FDQstdRent: TFDQuery;
    FDQstdProp: TFDQuery;
    DSrent: TDataSource;
    DSprop: TDataSource;
    FDQstdRentFeatureKind: TStringField;
    FDQstdRentFloorID: TIntegerField;
    FDQstdRentFee: TBCDField;
    FDQstdRentY2016: TBCDField;
    FDQstdRentY2017: TBCDField;
    FDQstdRentY2018: TBCDField;
    FDQstdPropFeatureKind: TStringField;
    FDQstdPropFloorID: TIntegerField;
    FDQstdPropFee: TBCDField;
    FDQshopRecorder: TStringField;
    FDQpactInfoRecorder: TStringField;
    FDQSynch: TFDQuery;
    FDQaddDevice: TFDQuery;
    FDQdelDevice: TFDQuery;
    FDQstyle: TFDQuery;
    FDQoweFee: TFDQuery;
    FDQupdateOwe: TFDQuery;
    FDQoweFeature: TFDQuery;
    procedure GeoDBCBeforeConnect(Sender: TObject);
    procedure FDConnBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}


procedure TDM.DataModuleCreate(Sender: TObject);
begin
  GeoDBC.Close;
  FDConn.Close;
end;

procedure TDM.FDConnBeforeConnect(Sender: TObject);
begin
  FDConn.Params.Values['Database'] := 'CDCC';
  FDConn.Params.Values['User_Name'] := 'sa';
  FDConn.Params.Values['Password'] := 'masterkey';
  FDConn.Params.Values['Server'] := 'localhost';
  FDConn.Params.Values['DriverID'] := 'MSSQL';
  FDConn.Params.Values['OSAuthent'] := 'No';
  { Database=CDCC
    User_Name=sa
    Password=*****
    Server=localhost
    DriverID=MSSQL
    OSAuthent=No }
end;

procedure TDM.GeoDBCBeforeConnect(Sender: TObject);
begin
  GeoDBC.Params.Values['BlobSize'] := '-1';
  GeoDBC.Params.Values['SchemaOverride'] := '%.dbo';
  GeoDBC.Params.Values['HostName'] := 'localhost';
  GeoDBC.Params.Values['Database'] := 'CDCC';
  GeoDBC.Params.Values['DriverName'] := 'DevartSQLServer';
  GeoDBC.Params.Values['User_Name'] := 'sa';

  GeoDBC.Params.Values['Password'] := 'masterkey';
  GeoDBC.Params.Values['LongStrings'] := 'True';
  GeoDBC.Params.Values['EnableBCD'] := 'True';
  GeoDBC.Params.Values['FetchAll'] := 'True';
  GeoDBC.Params.Values['UseUnicode'] := 'True';

  { BlobSize=-1
    SchemaOverride=%.dbo
    HostName=localhost
    Database=CDCC
    DriverName=DevartSQLServer
    User_Name=sa
    Password=masterkey
    LongStrings=True
    EnableBCD=True
    FetchAll=True
    UseUnicode=True }
end;

end.
