unit UnitFind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, AdvMetroTile, AdvTrackBar, Vcl.StdCtrls, AdvEdit, AdvEdBtn, AdvOfficeButtons, AdvGroupBox;

type
  TFormFind = class(TAdvMetroForm)
    AdvGroupPlace: TAdvGroupBox;
    AdvHallID: TAdvOfficeRadioGroup;
    AdvLayerID: TAdvOfficeRadioGroup;
    AdvZoneID: TAdvOfficeRadioGroup;
    AdvGroupArea: TAdvGroupBox;
    AdvAreaKind: TAdvOfficeRadioGroup;
    AdvGroupBox4: TAdvGroupBox;
    UnitAdvEditBtn4: TUnitAdvEditBtn;
    UnitAdvEditBtn3: TUnitAdvEditBtn;
    AdvTrackBar3: TAdvTrackBar;
    AdvTrackBar4: TAdvTrackBar;
    AdvGroupRent: TAdvGroupBox;
    AdvGroupBox5: TAdvGroupBox;
    UnitAdvEditBtn1: TUnitAdvEditBtn;
    UnitAdvEditBtn2: TUnitAdvEditBtn;
    AdvTrackBar1: TAdvTrackBar;
    AdvTrackBar2: TAdvTrackBar;
    AdvMetroTile4: TAdvMetroTile;
    AdvMetroTile2: TAdvMetroTile;
    procedure AdvMetroFormShow(Sender: TObject);
    procedure AdvMetroTile4Click(Sender: TObject);
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure AdvHallIDRadioButtonClick(Sender: TObject);
    procedure AdvLayerIDRadioButtonClick(Sender: TObject);
    procedure AdvZoneIDRadioButtonClick(Sender: TObject);
    procedure AdvAreaKindRadioButtonClick(Sender: TObject);
    procedure AdvTrackBar1Change(Sender: TObject);
    procedure AdvTrackBar2Change(Sender: TObject);
    procedure AdvTrackBar3Change(Sender: TObject);
    procedure AdvTrackBar4Change(Sender: TObject);
    procedure UnitAdvEditBtn3ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn4ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn2ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn1ClickBtn(Sender: TObject);
    procedure AdvMetroTile2Click(Sender: TObject);
    procedure AdvGroupPlaceCheckBoxClick(Sender: TObject);
  private
    procedure FindFeature;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    AFeatureID, AFieldArea: string;
    AbeginArea, AendArea, AbeginRent, AendRent: Double;
    procedure SetButtonPanel;
  end;

var
  FormFind: TFormFind;

implementation

{$R *.dfm}


uses UnitDBM, UnitMain;

procedure TFormFind.AdvAreaKindRadioButtonClick(Sender: TObject);
begin
  case AdvAreaKind.ItemIndex of
    0: AdvAreaKind.Hint := 'GrossArea';
    1: AdvAreaKind.Hint := 'UsableArea';
  end;
end;

procedure TFormFind.AdvGroupPlaceCheckBoxClick(Sender: TObject);
begin
  if (Sender as TAdvGroupBox).CheckBox.Checked then
  begin
    (Sender as TAdvGroupBox).BorderColor := clBlue;
  end
  else
  begin
    (Sender as TAdvGroupBox).BorderColor := clSilver;
  end;

end;

procedure TFormFind.AdvHallIDRadioButtonClick(Sender: TObject);
begin
  AdvHallID.Hint := (AdvHallID.ItemIndex + 1).ToString + '%';
end;

procedure TFormFind.AdvLayerIDRadioButtonClick(Sender: TObject);
begin
  AdvLayerID.Hint := '-' + (AdvLayerID.ItemIndex + 1).ToString + 'F%';
end;

procedure TFormFind.AdvMetroFormCreate(Sender: TObject);
begin

  AFeatureID := '%';
  AbeginArea := 0;
  AendArea := 10000;
  AbeginRent := 0;
  AendRent := 3000000;
  AFieldArea := 'GrossArea';
  Self.Left := 0;
  Self.Top := 27;
  AdvMetroTile2.Top := 4;
  Self.Width := 425;
  Self.Height := 670;
end;

procedure TFormFind.AdvMetroFormShow(Sender: TObject);
begin
  AdvGroupPlace.CheckBox.Checked := False;
  AdvGroupArea.CheckBox.Checked := False;
  AdvGroupRent.CheckBox.Checked := False;
end;

procedure TFormFind.AdvMetroTile2Click(Sender: TObject);
begin
  Self.Hide;
end;

procedure TFormFind.AdvMetroTile4Click(Sender: TObject);
begin
  { select FeatureID,GrossArea,UsableArea,RentPrice,
    PropPrice,RentOff
    from T00Features
    where
    FeatureID like :FeatureID
    and FeatureStatus = '未租'
    and &AreaFiled >= :beginArea
    and &AreaFiled <= :endArea
    and UsableArea*RentPrice*365 >= :beginRent
    and UsableArea*RentPrice*365 <= :endRent }
  AFeatureID := '%';
  if AdvGroupPlace.CheckBox.Checked then
  begin
    if AdvHallID.CheckBox.Checked then AFeatureID := AdvHallID.Hint;
    if AdvLayerID.CheckBox.Checked then AFeatureID := AFeatureID + AdvLayerID.Hint;
    if AdvZoneID.CheckBox.Checked then AFeatureID := AFeatureID + AdvZoneID.Hint;
    // ShowMessage(AFeatureID);
  end
  else
  begin
    AFeatureID := '%';
  end;

  if AdvGroupArea.CheckBox.Checked then
  begin
    AFieldArea := AdvAreaKind.Hint;
    AbeginArea := UnitAdvEditBtn3.FloatValue;
    AendArea := UnitAdvEditBtn4.FloatValue;
  end
  else
  begin
    AbeginArea := 0;
    AendArea := 10000;
  end;

  if AdvGroupRent.CheckBox.Checked then
  begin
    AbeginRent := UnitAdvEditBtn2.FloatValue * 10000;
    AendRent := UnitAdvEditBtn1.FloatValue * 10000;
  end
  else
  begin
    AbeginRent := 0;
    AendRent := 3000000;
  end;
  FindFeature;
end;

procedure TFormFind.AdvTrackBar1Change(Sender: TObject);
begin
  UnitAdvEditBtn1.IntValue := AdvTrackBar1.Position;
  if AdvTrackBar2.Position > AdvTrackBar1.Position then
      AdvTrackBar2.Position := AdvTrackBar1.Position - 1;
end;

procedure TFormFind.AdvTrackBar2Change(Sender: TObject);
begin
  UnitAdvEditBtn2.IntValue := AdvTrackBar2.Position;
  if AdvTrackBar2.Position < AdvTrackBar1.Position then
    // UnitAdvEditBtn2.IntValue := AdvTrackBar2.Position
  else
  begin
    AdvTrackBar1.Position := AdvTrackBar2.Position + 1;
  end;
end;

procedure TFormFind.AdvTrackBar3Change(Sender: TObject);
begin
  UnitAdvEditBtn3.IntValue := AdvTrackBar3.Position * 5;
  if AdvTrackBar3.Position < AdvTrackBar4.Position then
    // UnitAdvEditBtn3.IntValue := AdvTrackBar3.Position * 5
  else
  begin
    AdvTrackBar4.Position := AdvTrackBar3.Position + 1;
  end;
end;

procedure TFormFind.AdvTrackBar4Change(Sender: TObject);
begin
  UnitAdvEditBtn4.IntValue := AdvTrackBar4.Position * 5;

  if AdvTrackBar3.Position > AdvTrackBar4.Position then
      AdvTrackBar3.Position := AdvTrackBar4.Position - 2
  else
      UnitAdvEditBtn4.IntValue := AdvTrackBar4.Position * 5;
end;

procedure TFormFind.AdvZoneIDRadioButtonClick(Sender: TObject);
begin
  AdvZoneID.Hint := '' + AdvZoneID.Items.Strings[AdvZoneID.ItemIndex] + '-%';
end;

procedure TFormFind.SetButtonPanel;
begin
  FormMain.AdvExpanderPanel1.Fill.BeginUpdate;
  // FormMain.AdvExpanderPanel1.Top := Self.Top;
  // FormMain.AdvExpanderPanel1.Left := Self.Left + Self.Width + 10;
  /// FormMain.AdvExpanderPanel1.Height := Self.Height;
  FormMain.AdvExpanderPanel1.Visible := True;
  FormMain.AdvExpanderPanel1.Fill.EndUpdate;
end;

procedure TFormFind.UnitAdvEditBtn1ClickBtn(Sender: TObject);
begin
  AFeatureID := '%';
  if AdvGroupPlace.CheckBox.Checked then
  begin
    if AdvHallID.CheckBox.Checked then AFeatureID := AdvHallID.Hint;
    if AdvLayerID.CheckBox.Checked then AFeatureID := AFeatureID + AdvLayerID.Hint;
    if AdvZoneID.CheckBox.Checked then AFeatureID := AFeatureID + AdvZoneID.Hint;
  end
  else
  begin
    AFeatureID := '%';
  end;

  if AdvGroupArea.CheckBox.Checked then
  begin
    AFieldArea := AdvAreaKind.Hint;
    AbeginArea := UnitAdvEditBtn3.FloatValue;
    AendArea := UnitAdvEditBtn4.FloatValue;
  end
  else
  begin
    AbeginArea := 0;
    AendArea := 10000;
  end;

  AbeginRent := 0;
  AendRent := UnitAdvEditBtn1.FloatValue * 10000;

  FindFeature;
end;

procedure TFormFind.UnitAdvEditBtn2ClickBtn(Sender: TObject);
begin
  AFeatureID := '%';
  if AdvGroupPlace.CheckBox.Checked then
  begin
    if AdvHallID.CheckBox.Checked then AFeatureID := AdvHallID.Hint;
    if AdvLayerID.CheckBox.Checked then AFeatureID := AFeatureID + AdvLayerID.Hint;
    if AdvZoneID.CheckBox.Checked then AFeatureID := AFeatureID + AdvZoneID.Hint;
  end
  else
  begin
    AFeatureID := '%';
  end;

  if AdvGroupArea.CheckBox.Checked then
  begin
    AFieldArea := AdvAreaKind.Hint;
    AbeginArea := UnitAdvEditBtn3.FloatValue;
    AendArea := UnitAdvEditBtn4.FloatValue;
  end
  else
  begin
    AbeginArea := 0;
    AendArea := 10000;
  end;

  AbeginRent := UnitAdvEditBtn2.FloatValue * 10000;
  // ShowMessage('AbeginRent =' + AbeginRent.ToString);
  AendRent := 300 * 10000;

  FindFeature;
end;

procedure TFormFind.UnitAdvEditBtn3ClickBtn(Sender: TObject);
begin
  AFeatureID := '%';
  if AdvGroupPlace.CheckBox.Checked then
  begin
    if AdvHallID.CheckBox.Checked then AFeatureID := AdvHallID.Hint;
    if AdvLayerID.CheckBox.Checked then AFeatureID := AFeatureID + AdvLayerID.Hint;
    if AdvZoneID.CheckBox.Checked then AFeatureID := AFeatureID + AdvZoneID.Hint;
  end
  else
  begin
    AFeatureID := '%';
  end;

  AFieldArea := AdvAreaKind.Hint;
  AbeginArea := UnitAdvEditBtn3.FloatValue;
  AendArea := 10000;

  if AdvGroupRent.CheckBox.Checked then
  begin
    AbeginRent := UnitAdvEditBtn2.FloatValue * 10000;
    AendRent := UnitAdvEditBtn1.FloatValue * 10000;
  end
  else
  begin
    AbeginRent := 0;
    AendRent := 3000000;
  end;

  FindFeature;
end;

procedure TFormFind.UnitAdvEditBtn4ClickBtn(Sender: TObject);
begin
  AFeatureID := '%';
  if AdvGroupPlace.CheckBox.Checked then
  begin
    if AdvHallID.CheckBox.Checked then AFeatureID := AdvHallID.Hint;
    if AdvLayerID.CheckBox.Checked then AFeatureID := AFeatureID + AdvLayerID.Hint;
    if AdvZoneID.CheckBox.Checked then AFeatureID := AFeatureID + AdvZoneID.Hint;
  end
  else
  begin
    AFeatureID := '%';
  end;

  AFieldArea := AdvAreaKind.Hint;
  AbeginArea := 0;
  AendArea := UnitAdvEditBtn4.FloatValue;

  if AdvGroupRent.CheckBox.Checked then
  begin
    AbeginRent := UnitAdvEditBtn2.FloatValue * 10000;
    AendRent := UnitAdvEditBtn1.FloatValue * 10000;
  end
  else
  begin
    AbeginRent := 0;
    AendRent := 3000000;
  end;

  FindFeature;
end;

procedure TFormFind.FindFeature;
begin
  FormMain.DBAdvSmoothListBox1.DataBinding.InfoField := '';
  FormMain.DBAdvSmoothListBox1.Header.Caption := '候选商铺';
  DM.FDQFind.Close;
  DM.FDQFind.ParamByName('FeatureID').AsString := AFeatureID;
  DM.FDQFind.MacroByName('AreaFiled').AsRaw := AFieldArea;
  DM.FDQFind.ParamByName('beginArea').AsFloat := AbeginArea;
  DM.FDQFind.ParamByName('endArea').AsFloat := AendArea;
  DM.FDQFind.ParamByName('beginRent').AsFloat := AbeginRent;
  DM.FDQFind.ParamByName('endRent').AsFloat := AendRent;

  DM.FDQFind.Open;
  DM.DSQuery.DataSet := DM.FDQFind;

  FormMain.AdvExpanderPanel1.Caption.Text := '商铺列表 [' + DM.FDQFind.RecordCount.ToString + ']';
  SetButtonPanel;
end;

end.
