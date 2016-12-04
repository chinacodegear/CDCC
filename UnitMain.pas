unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, System.RegularExpressions,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs,
  VCL.Menus, System.ImageList, VCL.ImgList, VCL.StdCtrls,
  AdvMetroForm, CurvyControls, AdvMetroButton, AdvSmoothDock, W7Classes, W7Panels, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvMenus, AdvSmoothPopup, AdvSmoothExpanderButtonPanel, AdvSmoothComboBox, AdvMetroHint, AdvSmoothRotaryMenu, AdvCombo,
  AdvSmoothListBox,
  GisBaseObject, GisViewer, GisViewerWnd, GisDefs, GisLayerVector, GisLayerSqlDbx, GisControlLegend, VCL.Imaging.pngimage,
  W7Images, VCL.ExtCtrls, GisControlScale, GisControlNorthArrow, GisViewer3DInternal,
  VCL.ComCtrls, AdvOfficePager, AdvEdit, DBAdvEd, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, PrnDbgeh, AdvMetroTile, AdvDateTimePicker, AdvDBDateTimePicker, AdvDBComboBox,
  VCL.DBCtrls, DBAdvNavigator, AdvBadge, GisControl3D, DBAdvSmoothListBox
    ;

type
  TFormMain = class(TAdvMetroForm)
    CurvyEdit1: TCurvyEdit;
    AdvMetroButton1: TAdvMetroButton;
    AdvSmoothDock1: TAdvSmoothDock;
    ttkViewer: TGIS_ViewerWnd;
    W7Panel1: TW7Panel;
    AdvSPopup: TAdvSmoothPopup;
    AdvPopup4Map: TAdvPopupMenu;
    Zoom1: TMenuItem;
    ImageList1: TImageList;
    Drag1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    AdvMetroButton4: TAdvMetroButton;
    AdvMetroButton5: TAdvMetroButton;
    AdvSmoothComboBox1: TAdvSmoothComboBox;
    AdvMetroButton6: TAdvMetroButton;
    AdvMetroButton7: TAdvMetroButton;
    AdvMetroHint1: TAdvMetroHint;
    AdvSmoothRotaryMenuDialog2: TAdvSmoothRotaryMenuDialog;
    AdvSmoothRotaryMenuDialog1: TAdvSmoothRotaryMenuDialog;
    GIS_ControlLegend1: TGIS_ControlLegend;
    N231: TMenuItem;
    GIS_ControlScale1: TGIS_ControlScale;
    GIS_ControlNorthArrow1: TGIS_ControlNorthArrow;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    DBAdvEdit1: TDBAdvEdit;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    DBAdvEdit5: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    DBAdvEdit8: TDBAdvEdit;
    DBAdvEdit9: TDBAdvEdit;
    DBAdvEdit10: TDBAdvEdit;
    AdvOfficePage14: TAdvOfficePage;
    DBGridEhDevice: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    AdvPopup4Device: TAdvPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    DBAdvEdit11: TDBAdvEdit;
    DBAdvEdit12: TDBAdvEdit;
    DBAdvEdit13: TDBAdvEdit;
    DBAdvEdit14: TDBAdvEdit;
    DBAdvEdit15: TDBAdvEdit;
    DBAdvEdit16: TDBAdvEdit;
    DBAdvEdit17: TDBAdvEdit;
    DBAdvEdit18: TDBAdvEdit;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    AdvDBDateTimePicker2: TAdvDBDateTimePicker;
    AdvMetroTile1: TAdvMetroTile;
    DBGridEhFeePay: TDBGridEh;
    DBAdvNavigator1: TDBAdvNavigator;
    DBAdvNavigator2: TDBAdvNavigator;
    AdvBadgeMetroTile1: TAdvBadgeMetroTile;
    AdvBadgeMetroTile2: TAdvBadgeMetroTile;
    AdvBadgeMetroTile3: TAdvBadgeMetroTile;
    ImageList48: TImageList;
    N7: TMenuItem;
    AdvComboBox1: TAdvComboBox;
    AdvExpanderPanel1: TAdvSmoothExpanderPanel;
    DBAdvSmoothListBox1: TDBAdvSmoothListBox;
    DBNavigator1: TDBNavigator;
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
    procedure Drag1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure WMEnterSizeMove(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMMove(var Message: TMessage); message WM_MOVE;
    procedure WMExitSizeMove(var Message: TMessage); message WM_EXITSIZEMOVE;
    procedure AdvMetroButton6Click(Sender: TObject);
    procedure AdvSmoothRotaryMenuDialog2Close(Sender: TObject);
    procedure AdvMetroButton7Click(Sender: TObject);
    procedure AdvSmoothRotaryMenuDialog1MenuItemClick(Sender: TObject; AItemIndex: Integer);
    procedure N231Click(Sender: TObject);
    procedure ttkViewerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemClick(Sender: TObject; AItemIndex: Integer);
    procedure ttkViewerMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ttkViewerMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure CurvyEdit1Change(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure AdvDBDateTimePicker1UserInput(Sender: TObject; const UserString: string; var DateAndTime: TDateTime;
      var AllowChange: Boolean);
    procedure AdvBadgeMetroTile1Click(Sender: TObject);
    procedure AdvSPopupFooterClick(Sender: TObject);
    procedure AdvSmoothComboBox1ItemChanged(Sender: TObject; ItemIndex: Integer);
    procedure N7Click(Sender: TObject);
    procedure AdvComboBox1Change(Sender: TObject);
    procedure ttkViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure AdvMetroFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBAdvSmoothListBox1ItemDblClick(Sender: TObject; ItemIndex: Integer);
  private
    procedure Get00Feature(sFeatureID: string);
    procedure Get01Devices(sFeatureID: string);
    procedure Get02PayFees(sFeatureID: string);
    procedure Get13PactInfo(sFeatureID: string);
    { Private declarations }
  protected
    { Protected declarations }
    procedure OnPaintShapeLabel(const Sender: TObject; const shape: TGIS_Shape);
  public
    { Public declarations }
    // 每个场馆当前激活的图层
    ttkLayerH01, ttkLayerH02, ttkLayerH03: TGIS_LayerVector;
    sLayerName: string; // 切换图层的名称，从HINT中链接而成
    procedure ttkAddLayer(const ALayerName: string; AVisible: Boolean = False; const AStyleName: string = '');
    function RotaryMenuDialogStaus(AdvRotaryMenuDialog: TAdvSmoothRotaryMenuDialog; ActiveItemIndex: Integer = -1): Integer;
    function GetLayerID(AHallID: Integer): Integer; // 返回某馆号的当前激活图层号
    procedure ClearSelection(); // 清空所有图层选中的要素
    function GetLayerTableName(const AFeatureID: string; ATable: Boolean = True): string; // 根据要素编号获取 所在图层的表名称
    procedure ChangeLayer(const ALayerName: string); // 激活图层，同时隐藏同馆的其他图层
    function GetCurrentLayer(AttkPoint: TGIS_Point): string; // 获取鼠标所在场馆图层名
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


uses UnitDBM, UnitMeta, UnitQuery, UnitFind;

var
  formQuery: TFormQuery;
  formFind: TFormFind;

procedure TFormMain.OnPaintShapeLabel(const Sender: TObject; const shape: TGIS_Shape);
begin
  if (shape.GetField('FeatureKind') = '精品商铺') or (shape.GetField('FeatureKind') = '柜台') then
  begin
    if AdvSmoothComboBox1.SelectedItemIndex <> -1 then
    begin
      shape.Params.Labels.Field := AdvSmoothComboBox1.Items[AdvSmoothComboBox1.SelectedItemIndex].Hint;

    end
    else
    begin
      shape.Params.Labels.Field := '';
    end;
  end;
  shape.DrawLabel;
end;

procedure TFormMain.AdvBadgeMetroTile1Click(Sender: TObject);
begin
  (Sender as TAdvBadgeMetroTile).Down := True;
  DM.FDQ02.Close;
  DM.FDQ02.ParamByName('FeatureID').Value := AdvSPopup.HeaderCaption;
  DM.FDQ02.ParamByName('FeeKind').Value := (Sender as TAdvBadgeMetroTile).Hint;
  DM.FDQ02.Open;

end;

procedure TFormMain.AdvComboBox1Change(Sender: TObject);
begin
  Get13PactInfo(DBAdvEdit1.Text);
end;

procedure TFormMain.AdvDBDateTimePicker1UserInput(Sender: TObject; const UserString: string; var DateAndTime: TDateTime;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TFormMain.AdvMetroButton1Click(Sender: TObject);
var
  sFID, sLayerName, sLayerTable: string;
  I, iNone: Integer;
  ttkLayer: TGIS_LayerVector;
  ttkShape: TGIS_Shape;
begin

  iNone := 0;
  sFID := '[1-2]-[1-4]F-[A-G]-[0-9][0-9][0-9]';

  sLayerName := GetLayerTableName(CurvyEdit1.Text, False);
  sLayerTable := sLayerName + '_FEA';

  DM.FDQuick.Close;
  DM.FDQuick.ParamByName('FID').Value := CurvyEdit1.Text;
  DM.FDQuick.MacroByName('TabName').Value := sLayerTable;
  DM.FDQuick.Open;

  iNone := DM.FDQuick.RecordCount;
  if iNone = 0 then
  begin
    ShowMessage('没有该编码的商铺!');
    ClearSelection;
    Exit;
  end;

  ttkLayer := ttkViewer.Get(sLayerName) as TGIS_LayerVector;
  ttkLayer.RevertShapes;
  ttkShape := ttkLayer.GetShape(DM.FDQuick.FieldByName('UID').AsInteger);
  ttkShape := ttkShape.MakeEditable;
  ttkShape.IsSelected := True;

  ttkViewer.VisibleExtent := ttkShape.Extent; // ttkLayer.Extent;
  ttkViewer.Zoom := ttkViewer.Zoom * 0.3;
  ChangeLayer(sLayerName);
  ttkViewer.Update;
end;

procedure TFormMain.AdvMetroButton6Click(Sender: TObject);
begin
  AdvExpanderPanel1.Visible := not AdvExpanderPanel1.Visible;
end;

procedure TFormMain.AdvMetroButton7Click(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.StartAngle := 265;
  AdvSmoothRotaryMenuDialog1.StopAngle := 360;

  AdvSmoothRotaryMenuDialog1.Items[2].Enabled := False; // FormMeta.HalLayer.Items.Count = 3;

  AdvSmoothRotaryMenuDialog1.PopupMenuAtControl(AdvMetroButton7);
end;

procedure TFormMain.AdvMetroFormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  ttkViewer.Close;
  DM.FDConn.Close;
  DM.GeoDBC.Close;
  formQuery.Free;
end;

procedure TFormMain.AdvMetroFormCreate(Sender: TObject);
begin
  Self.Caption := '中国东海水晶城 GIS 系统';
  // Self.Appearance.Color := RGB(244, 243, 240);
  // DBGridEhFeePay.SearchPanel.Visible := True;

  Self.Constraints.MinWidth := 1024;
  Self.Constraints.MinHeight := 736;
  // Self.Align := alClient;
  Self.CurvyEdit1.Top := 3;
  Self.AdvMetroButton1.Top := 3;
  Self.AdvSmoothDock1.Top := 3;

  Self.ttkViewer.Align := alClient;
  Self.ttkViewer.Color := Self.Appearance.Color;

  Self.AdvExpanderPanel1.Visible := False;

  Self.W7Panel1.Height := 32;

  Self.AdvSPopup.Control := AdvOfficePager1;
  Self.AdvSPopup.AutoSize := True;
  AdvOfficePager11.Enabled := False; // 禁用基本信息
  // ttkViewer.Color := RGB(244, 243, 240);
  // ttkViewer.Open('D:\DataBase\Map\东海水晶城\H01-3D\l0101.shp');
  // 加载图层
  ttkAddLayer('L0101', True, '');
  ttkAddLayer('L0201', True, '');
  ttkViewer.FullExtent;
  ttkAddLayer('L0102');
  ttkAddLayer('L0202');
  ttkAddLayer('L0103');
  ttkAddLayer('L0203');
  ttkAddLayer('L0104');
  ttkAddLayer('L0204');

  // 默认 场馆 激活的图层
  ttkLayerH01 := ttkViewer.Get('L0101') as TGIS_LayerVector;
  ttkLayerH02 := ttkViewer.Get('L0201') as TGIS_LayerVector;

  ttkLayerH01.ParamsList.LoadFromFile('S1329058843.ini');
  ttkLayerH02.ParamsList.LoadFromFile('S1329058843.ini'); // S1329598812.ini
  ttkViewer.Update;;
  //
end;

procedure TFormMain.AdvSmoothComboBox1ItemChanged(Sender: TObject; ItemIndex: Integer);
begin
  if ttkLayerH01.Active then
      ttkLayerH01.PaintLabel;

  if ttkLayerH02.Active then
      ttkLayerH02.PaintLabel;

  ttkViewer.Update;
end;

procedure TFormMain.AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
begin
  case ItemIndex of
    0: // 综合查询
      begin
        if Assigned(formQuery) then
        begin
          formQuery.Show;
          // ShowMessage('');
        end
        else
        begin
          formQuery := TFormQuery.Create(Self);
          formQuery.Show;
        end;
      end;

    1: // 商铺选址
      begin
        if Assigned(formFind) then
        begin
          formFind.Show;
          // ShowMessage('');
        end
        else
        begin
          formFind := TFormFind.Create(Self);
          formFind.Show;
        end;
      end;
  end;
end;

procedure TFormMain.AdvSmoothRotaryMenuDialog1MenuItemClick(Sender: TObject; AItemIndex: Integer);
var
  LayerID: Integer;
begin
  // 场馆号

  LayerID := GetLayerID(AItemIndex + 1);
  RotaryMenuDialogStaus(AdvSmoothRotaryMenuDialog2, LayerID);

  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := False;
  AdvSmoothRotaryMenuDialog1.CloseOnMouseLeave := False;
  AdvSmoothRotaryMenuDialog2.StartAngle := 265;
  AdvSmoothRotaryMenuDialog2.StopAngle := 360;
  AdvSmoothRotaryMenuDialog2.PopupMenuAtControl(AdvMetroButton7);

  sLayerName := AdvSmoothRotaryMenuDialog1.Items[AItemIndex].Hint;
  RotaryMenuDialogStaus(Sender as TAdvSmoothRotaryMenuDialog, AItemIndex);

end;

procedure TFormMain.AdvSmoothRotaryMenuDialog2Close(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := True;
  AdvSmoothRotaryMenuDialog1.CloseOnMouseLeave := True;
  AdvSmoothRotaryMenuDialog1.ClosePopupMenu;
end;

procedure TFormMain.AdvSmoothRotaryMenuDialog2MenuItemClick(Sender: TObject; AItemIndex: Integer);
var
  ttkLayer: TGIS_LayerVector;
begin

  sLayerName := sLayerName + AdvSmoothRotaryMenuDialog2.Items[AItemIndex].Hint;
  // ttkLayer := ttkViewer.Get(sLayerName) as TGIS_LayerVector;

  RotaryMenuDialogStaus(AdvSmoothRotaryMenuDialog2, AItemIndex);
  AdvSmoothRotaryMenuDialog2.ClosePopupMenu;
  // Self.Text := sLayerName;
  ChangeLayer(sLayerName);

end;

procedure TFormMain.AdvSPopupFooterClick(Sender: TObject);
begin
  AdvSPopup.ClosePopup;
end;

procedure TFormMain.ChangeLayer(const ALayerName: string);
var
  ttkLayer: TGIS_LayerVector;
begin
  ttkLayer := ttkViewer.Get(ALayerName) as TGIS_LayerVector;
  case ALayerName.Chars[2] of // L0102 代表馆号，同一馆只有一个图层可见
    '1':
      begin
        ttkLayerH01.Active := False;
        ttkLayerH01 := ttkLayer;
        ttkLayerH01.Active := True;
      end;
    '2':
      begin
        ttkLayerH02.Active := False;
        ttkLayerH02 := ttkLayer;
        ttkLayerH02.Active := True;
      end;
    '3':
      begin
        ttkLayerH03.Active := False;
        ttkLayerH03 := ttkLayer;
        if Assigned(ttkLayerH03) then
        begin
          ttkLayerH03.Active := True;
        end;
      end;
  end;
  ttkViewer.Update;
end;

procedure TFormMain.ClearSelection;
var
  I: Integer;
  ttkLayer: TGIS_LayerVector;
begin
  for I := 0 to ttkViewer.Items.Count - 1 do
  begin
    ttkLayer := ttkViewer.Items[I] as TGIS_LayerVector;
    if ttkLayer.GetSelectedCount > 0 then
    begin
      ttkLayer.RevertAll;
    end;
  end;
  ttkViewer.Update;
end;

procedure TFormMain.Get13PactInfo(sFeatureID: string);
begin
  DM.FDQ13.Close;
  DM.FDQ13.ParamByName('FeatureID').Value := sFeatureID;
  DM.FDQ13.ParamByName('PactKind').Value := AdvComboBox1.Text;
  DM.FDQ13.Open;

  if DM.FDQ13.RecordCount = 0 then
  begin
    DM.FDQ13.Close;
    AdvOfficePager13.Enabled := False;
    AdvMetroTile1.Caption := '无合同信息';
  end
  else
  begin
    AdvOfficePager13.Enabled := True;
    AdvMetroTile1.Caption := '合同文本';
  end;
end;

function TFormMain.GetCurrentLayer(AttkPoint: TGIS_Point): string;
var
  I: Integer;
  ttkLayer: TGIS_LayerVector;
begin
  Result := '';
  for I := 0 to ttkViewer.Items.Count - 1 do
  begin
    ttkLayer := ttkViewer.Items[I] as TGIS_LayerVector;
    if ttkLayer.Active then
    begin
      if (AttkPoint.X < ttkLayer.Extent.XMax) and (AttkPoint.X > ttkLayer.Extent.XMin)
        and (AttkPoint.Y < ttkLayer.Extent.YMax) and (AttkPoint.Y > ttkLayer.Extent.YMin)
      then
      begin
        Result := ttkLayer.Name;
        Break;
      end;
    end
    else
    begin
      Continue;
    end;
  end;

end;

procedure TFormMain.Get02PayFees(sFeatureID: string);
begin
  // 获取 缴费信息
  DM.FDQ02.Close;
  DM.FDQ02.ParamByName('FeatureID').Value := sFeatureID;
  DM.FDQ02.ParamByName('FeeKind').Value := AdvBadgeMetroTile1.Hint;
  DM.FDQ02.Open;
  AdvBadgeMetroTile1.Down := True;
end;

procedure TFormMain.Get01Devices(sFeatureID: string);
begin
  // 获取 商铺设备信息
  DM.FDQ01.Close;
  DM.FDQ01.ParamByName('FeatureID').Value := sFeatureID;
  DM.FDQ01.Open;
end;

procedure TFormMain.Get00Feature(sFeatureID: string);
begin
  // 获取 商铺基础信息
  DM.FDQ00.Close;
  DM.FDQ00.ParamByName('FeatureID').Value := sFeatureID;
  DM.FDQ00.Open;
  if DM.FDQ00.FieldByName('rentoff').AsSingle > 1 then
  begin
    DBAdvEdit9.Suffix := '元';
  end
  else
  begin
    DBAdvEdit9.Suffix := ' %';
    DBAdvEdit9.Text := (DM.FDQ00.FieldByName('rentoff').AsSingle * 100).ToString;
    DBAdvEdit10.Text := (
      (1 - DM.FDQ00.FieldByName('rentoff').AsSingle) * 365 * DM.FDQ00.FieldByName('rentprice').AsSingle *
      DM.FDQ00.FieldByName('usablearea').AsSingle).ToString;
  end;
end;

procedure TFormMain.CurvyEdit1Change(Sender: TObject);
var
  sFID: string;
begin
  sFID := '[1-2]-[1-4]F-[A-G]-[0-9][0-9][0-9]';
  if (TRegEx.IsMatch(CurvyEdit1.Text, sFID)) then
  begin
    CurvyEdit1.Font.Color := clGreen;
    AdvMetroButton1.Enabled := True;
  end
  else
  begin
    CurvyEdit1.Font.Color := clRed;
    AdvMetroButton1.Enabled := False;
  end;;
end;

procedure TFormMain.DBAdvSmoothListBox1ItemDblClick(Sender: TObject; ItemIndex: Integer);
begin
  CurvyEdit1.Text := DBAdvSmoothListBox1.Items[ItemIndex].Caption;
  AdvMetroButton1.Click;
end;

procedure TFormMain.Drag1Click(Sender: TObject);
begin
  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.Mode := gis3DModeCameraPosition; // gis3DModeCameraPosition;
  end
  else
  begin
    ttkViewer.Mode := gisZoom;
  end;

end;

function TFormMain.GetLayerID(AHallID: Integer): Integer;
var
  sHID: string;
  I: Integer;
  ttkLayer: TGIS_LayerVector;
begin
  Result := -1;
  sHID := 'L0' + AHallID.ToString + '0';
  for I := 1 to 4 do
  begin
    ttkLayer := ttkViewer.Get(sHID + I.ToString) as TGIS_LayerVector;
    if Assigned(ttkLayer) then
    begin
      if ttkLayer.Active then
      begin
        Result := I - 1;
        Break;
      end;
    end;
  end;

end;

function TFormMain.GetLayerTableName(const AFeatureID: string; ATable: Boolean = True): string;
var
  sFID: string;
begin
  Result := '';
  sFID := '[1-2]-[1-4]F-[A-G]-[0-9][0-9][0-9]'; // 1-1F-
  if (TRegEx.IsMatch(AFeatureID, sFID)) then
  begin
    case AFeatureID.Chars[0] of
      '1':
        begin
          Result := 'L01';
        end;
      '2':
        begin
          Result := 'L02';
        end;
      '3':
        begin
          Result := 'L03';
        end;
    end;

    case AFeatureID.Chars[2] of
      '1':
        begin
          Result := Result + '01';
        end;
      '2':
        begin
          Result := Result + '02';
        end;
      '3':
        begin
          Result := Result + '03';
        end;
      '4':
        begin
          Result := Result + '04';
        end;
    end;

    if ATable then
    begin
      Result := Result + '_FEA';
    end;
  end;
end;

procedure TFormMain.N1Click(Sender: TObject);
begin
  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.Mode := gis3DModeZoom;
  end
  else
  begin
    ttkViewer.Mode := gisZoomEx;
  end;

end;

procedure TFormMain.N231Click(Sender: TObject);
var
  basePlane: TGIS_Viewer3DBasePlane;
  I: Integer;
  ttkLayer: TGIS_LayerVector;
begin
  if ttkViewer.View3DCapable then
  begin
    ttkViewer.View3D := not ttkViewer.View3D;
    if ttkViewer.View3D then
    begin
      for I := 0 to ttkViewer.Items.Count - 1 do
      begin
        ttkLayer := ttkViewer.Items[I] as TGIS_LayerVector;
        ttkLayer.ParamsList.LoadFromFile('S1329058843.ini');
        ttkLayer.Active := True;
      end;

      basePlane := ttkViewer.Viewer3D.basePlane;
      basePlane.Active := False;
      ttkViewer.Viewer3D.basePlane := basePlane;
      ttkViewer.Viewer3D.ScaleZ := 7;

      ttkViewer.Viewer3D.Update;
    end
    else
    begin
      for I := 0 to ttkViewer.Items.Count - 1 do
      begin
        ttkLayer := ttkViewer.Items[I] as TGIS_LayerVector;
        ttkLayer.Active := False;
      end;
      ttkLayerH01.Active := True;
      ttkLayerH02.Active := True;
    end;
  end;
end;

procedure TFormMain.N2Click(Sender: TObject);
begin

  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.Mode := gis3DModeCameraXYZ;
  end
  else
  begin
    ttkViewer.Mode := gisDrag;
  end;

end;

procedure TFormMain.N3Click(Sender: TObject);
begin
  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.ResetView
  end
  else
  begin
    ttkViewer.FullExtent;
  end;

end;

procedure TFormMain.N4Click(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 3 then
  begin
    PrintDBGridEh1.DBGridEh := DBGridEhFeePay;
    if DM.FDQ02.RecordCount > 0 then
        PrintDBGridEh1.Preview;
  end;

  if AdvOfficePager1.ActivePageIndex = 1 then
  begin
    PrintDBGridEh1.DBGridEh := DBGridEhDevice;
    if DM.FDQ01.RecordCount > 0 then
        PrintDBGridEh1.Preview;
  end;

end;

procedure TFormMain.N7Click(Sender: TObject);
begin
  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.Update;
  end
  else
  begin
    ttkViewer.Update;
  end;
end;

function TFormMain.RotaryMenuDialogStaus(AdvRotaryMenuDialog: TAdvSmoothRotaryMenuDialog;
  ActiveItemIndex: Integer = -1): Integer;
var
  I: Integer;
begin
  if ActiveItemIndex = -1 then
  begin
    for I := 0 to AdvRotaryMenuDialog.Items.Count - 1 do
    begin
      if AdvRotaryMenuDialog.Items[I].Down then
      begin
        ActiveItemIndex := I;
        Break;
      end;
    end;
  end
  else
  begin
    for I := 0 to AdvRotaryMenuDialog.Items.Count - 1 do
    begin
      if ActiveItemIndex <> I then
          AdvRotaryMenuDialog.Items[I].Down := False
      else
      begin
        AdvRotaryMenuDialog.Items[I].Down := True;
      end;
    end;
  end;

  Result := ActiveItemIndex;

end;

procedure TFormMain.ttkAddLayer(const ALayerName: string; AVisible: Boolean = False; const AStyleName: string = '');
var
  ttkSQLayer: TGIS_LayerSqlDbx;
begin
  ttkSQLayer := TGIS_LayerSqlDbx.Create;
  ttkSQLayer.SharedConnection := DM.GeoDBC; // DM.SQLConnection1;
  ttkSQLayer.Name := ALayerName;
  ttkSQLayer.IncrementalPaint := True;
  ttkSQLayer.SQLParameter['DIALECT'] := 'MSSQL';
  ttkSQLayer.SQLParameter['STORAGE'] := ALayerName;
  ttkSQLayer.SQLParameter['LAYER'] := ALayerName;
  ttkSQLayer.OnPaintShapeLabel := OnPaintShapeLabel;
  ttkSQLayer.Active := AVisible;
  if AStyleName <> '' then
      ttkSQLayer.SQLParameter['STYLE'] := AStyleName;
  ttkViewer.Add(ttkSQLayer);
end;

procedure TFormMain.ttkViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  ttkShape: TGIS_Shape;
  ttkPoint: TGIS_Point;
begin

  ttkPoint := ttkViewer.ScreenToMap(Point(X, Y));
  Self.Text := GetCurrentLayer(ttkPoint);

end;

procedure TFormMain.ttkViewerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ttkShape: TGIS_Shape;
  ttkPoint: TGIS_Point;
  sFeatureID: string;
  xPoint: TPoint;
begin
  if ttkViewer.IsEmpty then
      Exit;
  ttkPoint := ttkViewer.ScreenToMap(Point(X, Y));
  xPoint := ttkViewer.ClientToScreen(Point(X, Y));

  case Button of
    TMouseButton.mbLeft:
      begin
        if ttkViewer.View3D then
        begin
          // 3D模式
        end
        else
        begin
          // 2D模式
          case ttkViewer.Mode of
            gisSelect:
              begin
                ttkShape := ttkViewer.Locate(ttkPoint, 5 / ttkViewer.Zoom) as TGIS_Shape;
                if Assigned(ttkShape) then
                begin
                  if (ttkShape.GetField('FeatureKind') = '精品商铺')
                    or (ttkShape.GetField('FeatureKind') = '柜台') then
                  begin
                    AdvOfficePager1.ActivePageIndex := 0;

                    ttkShape.Layer.DeselectAll;
                    ttkShape := ttkShape.MakeEditable;
                    ttkShape.IsSelected := True;
                    sFeatureID := ttkShape.GetField('FeatureID');

                    Get00Feature(sFeatureID);
                    Get01Devices(sFeatureID);
                    Get02PayFees(sFeatureID);
                    Get13PactInfo(sFeatureID);

                    AdvSPopup.HeaderCaption := sFeatureID;
                    AdvSPopup.FooterCaption := X.ToString + '/' + xPoint.X.ToString +
                      '/' + (AdvOfficePager1.Width + xPoint.X).ToString + '/' +
                      Self.Width.ToString;

                    if (AdvOfficePager1.Width + xPoint.X) > Self.Width then
                    begin
                      xPoint.X := xPoint.X - (1 * AdvOfficePager1.Width);
                    end;

                    if (AdvOfficePager1.Height + xPoint.Y) > Self.Height then
                    begin
                      xPoint.Y := xPoint.Y - (1 * AdvOfficePager1.Height);
                    end;

                    AdvSPopup.PopupAt(xPoint.X, xPoint.Y);
                  end
                  else
                  begin
                    // 非商铺柜台的提示信息
                  end;
                end
                else
                begin
                  ttkLayerH01.DeselectAll;
                  ttkLayerH02.DeselectAll;
                  if ttkLayerH03 <> nil then
                      ttkLayerH03.DeselectAll;
                end;
              end;
          end;
        end;
      end;
    TMouseButton.mbRight:
      ;
    TMouseButton.mbMiddle:
      ;
  end;
  ttkViewer.Update;
end;

procedure TFormMain.ttkViewerMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  pt: TPoint;
  cam: TGIS_Point3D;
begin
  if ttkViewer.IsEmpty then
      Exit;

  pt := ttkViewer.ScreenToClient(MousePos);

  if ttkViewer.View3D then
  begin
    // allows MouseWheel works properly in ZoomMode
    ttkViewer.Viewer3D.StoreMousePos(pt);

    cam := ttkViewer.Viewer3D.CameraPosition;
    cam.Z := cam.Z / (1 + 0.05);
    ttkViewer.Viewer3D.CameraPosition := cam;
  end
  else
      ttkViewer.ZoomBy(3 / 2, pt.X, pt.Y);

  Handled := True;
end;

procedure TFormMain.ttkViewerMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  pt: TPoint;
  cam: TGIS_Point3D;
begin
  if ttkViewer.IsEmpty then
      Exit;

  pt := ttkViewer.ScreenToClient(MousePos);

  if ttkViewer.View3D then
  begin
    // allows MouseWheel works properly in ZoomMode
    ttkViewer.Viewer3D.StoreMousePos(pt);

    cam := ttkViewer.Viewer3D.CameraPosition;
    cam.Z := cam.Z * (1 + 0.05);
    ttkViewer.Viewer3D.CameraPosition := cam;
  end
  else
      ttkViewer.ZoomBy(2 / 3, pt.X, pt.Y);

  Handled := True;
end;

procedure TFormMain.WMEnterSizeMove(var Message: TMessage);
begin
  AdvSmoothDock1.Visible := False;
end;

procedure TFormMain.WMExitSizeMove(var Message: TMessage);
begin
  AdvSmoothDock1.Visible := True;
  // Self.UpdateControlState;
  // Self.Update;
end;

procedure TFormMain.WMMove(var Message: TMessage);
begin
  // Self.UpdateControlState;
  // Self.Update;
end;

procedure TFormMain.Zoom1Click(Sender: TObject);
begin
  if ttkViewer.View3D then
  begin
    ttkViewer.Viewer3D.Mode := gis3DModeSelect;
  end
  else
  begin
    ttkViewer.Mode := gisSelect;
  end;
end;

end.
