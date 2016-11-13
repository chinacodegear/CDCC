unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs,
  VCL.Menus, System.ImageList, VCL.ImgList,
  AdvMetroForm, CurvyControls, AdvMetroButton, AdvSmoothDock, W7Classes, W7Panels, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvMenus, AdvSmoothPopup, AdvSmoothExpanderButtonPanel,
  GisBaseObject, GisViewer, GisViewerWnd, GisDefs, GisLayerVector, VCL.StdCtrls, AdvCombo, AdvSmoothListBox,
  AdvSmoothComboBox, AdvMetroHint, AdvSmoothRotaryMenu
    ;

type
  TFormMain = class(TAdvMetroForm)
    CurvyEdit1: TCurvyEdit;
    AdvMetroButton1: TAdvMetroButton;
    AdvSmoothDock1: TAdvSmoothDock;
    ttkViewer: TGIS_ViewerWnd;
    W7Panel1: TW7Panel;
    AdvExpanderPanel1: TAdvSmoothExpanderButtonPanel;
    AdvSPopup: TAdvSmoothPopup;
    AdvPopup: TAdvPopupMenu;
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
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


uses UnitDBM;

// uses Unit2;

procedure TFormMain.AdvMetroButton6Click(Sender: TObject);
begin
  AdvExpanderPanel1.Visible := not AdvExpanderPanel1.Visible;
end;

procedure TFormMain.AdvMetroButton7Click(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.PopupMenuAtControl(AdvMetroButton7);
end;

procedure TFormMain.AdvMetroFormCreate(Sender: TObject);
begin
  Self.Caption := '中国东海水晶城 GIS 系统';
  // Self.Appearance.Color := RGB(244, 243, 240);

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
  // ttkViewer.Color := RGB(244, 243, 240);
  ttkViewer.Open('D:\DataBase\Map\东海水晶城\H01-3D\l0101.shp');
  // ShowMessage('');
end;

procedure TFormMain.AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
begin
  // ShowMessage(ItemIndex.ToString);
  // TMSForm2.ShowModal;
end;

procedure TFormMain.AdvSmoothRotaryMenuDialog1MenuItemClick(Sender: TObject; AItemIndex: Integer);
begin
  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := False;
  AdvSmoothRotaryMenuDialog1.CloseOnMouseLeave := False;
  AdvSmoothRotaryMenuDialog2.PopupMenuAtControl(AdvMetroButton7);
end;

procedure TFormMain.AdvSmoothRotaryMenuDialog2Close(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := True;
  AdvSmoothRotaryMenuDialog1.CloseOnMouseLeave := True;
  AdvSmoothRotaryMenuDialog1.ClosePopupMenu;
end;

procedure TFormMain.Drag1Click(Sender: TObject);
begin
  ttkViewer.Mode := gisZoom;
end;

procedure TFormMain.N1Click(Sender: TObject);
begin
  ttkViewer.Mode := gisZoomEx;
end;

procedure TFormMain.N2Click(Sender: TObject);
begin
  ttkViewer.Mode := gisDrag;
end;

procedure TFormMain.N3Click(Sender: TObject);
begin
  ttkViewer.FullExtent;
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
  ttkViewer.Mode := gisSelect;
end;

end.
