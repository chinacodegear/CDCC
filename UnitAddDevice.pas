unit UnitAddDevice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Vcl.StdCtrls, AdvCombo, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CurvyControls,
  AdvEdit, AdvEdBtn, Vcl.Mask, AdvDropDown, AdvTrackBarDropDown,
  AdvMetroTile, PrnDbgeh;

type
  TFormAddDevice = class(TAdvMetroForm)
    CurvyPanel1: TCurvyPanel;
    DBGridEhDevice: TDBGridEh;
    AdvMetroTile1: TAdvMetroTile;
    CurvyCombo1: TCurvyCombo;
    CurvyEdit1: TCurvyEdit;
    CurvyEdit2: TCurvyEdit;
    CurvyEdit3: TCurvyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvMetroTile2: TAdvMetroTile;
    AdvMetroTile3: TAdvMetroTile;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure CurvyCombo1Select(Sender: TObject);
    procedure AdvMetroTile1Click(Sender: TObject);
    procedure DBGridEhDeviceCellClick(Column: TColumnEh);
    procedure AdvMetroFormShow(Sender: TObject);
    procedure AdvMetroTile2Click(Sender: TObject);
    procedure AdvMetroTile3Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    UserName, FeatureID: string;
    function CheckData: Boolean;
  end;

var
  FormAddDevice: TFormAddDevice;

implementation

{$R *.dfm}


uses UnitDBM;

procedure TFormAddDevice.AdvMetroFormShow(Sender: TObject);
begin
  AdvMetroTile2.Enabled := False;
  CurvyEdit1.Text := '';
  CurvyEdit2.Text := '';
  CurvyEdit3.Text := '';
  CurvyCombo1.Text := '';
  CurvyEdit1.SetFocus;
end;

procedure TFormAddDevice.AdvMetroTile1Click(Sender: TObject);
begin
  if CheckData then
  begin
    DM.FDQaddDevice.ParamByName('FeatureID').AsString := FeatureID;
    DM.FDQaddDevice.ParamByName('DeviceName').AsString := CurvyEdit1.Text;
    DM.FDQaddDevice.ParamByName('DeviceType').AsString := CurvyEdit2.Text;
    DM.FDQaddDevice.ParamByName('DeviceCount').AsInteger := StrToInt(CurvyEdit3.Text);
    DM.FDQaddDevice.ParamByName('DeviceStatus').AsString := CurvyCombo1.Text;
    DM.FDQaddDevice.ParamByName('Recorder').AsString := UserName;
    DM.FDQaddDevice.Execute;
    DM.FDQ01.Refresh;
  end
  else
  begin
    ShowMessage('设备信息不完整!');
  end;
end;

procedure TFormAddDevice.AdvMetroTile2Click(Sender: TObject);
begin
  if CheckData then
  begin
    DM.FDQdelDevice.ParamByName('FeatureID').AsString := FeatureID;
    DM.FDQdelDevice.ParamByName('DeviceName').AsString := CurvyEdit1.Text;
    DM.FDQdelDevice.ParamByName('DeviceType').AsString := CurvyEdit2.Text;
    DM.FDQdelDevice.ParamByName('DeviceCount').AsInteger := StrToInt(CurvyEdit3.Text);
    DM.FDQdelDevice.ParamByName('DeviceStatus').AsString := CurvyCombo1.Text;
    DM.FDQdelDevice.ParamByName('Recorder').AsString := UserName;
    DM.FDQdelDevice.Execute;
    DM.FDQ01.Refresh;
  end
  else
  begin
    ShowMessage('设备信息不完整!');
  end;
end;

procedure TFormAddDevice.AdvMetroTile3Click(Sender: TObject);
begin
  if DM.FDQ01.IsEmpty then Exit;
  PrintDBGridEh1.PageHeader.CenterText.Text := FeatureID + '  设备列表';
  // PrintDBGridEh1.PageHeader.CenterText.Text := FeatureID + '设备列表';
  try
    PrintDBGridEh1.Preview;
  except
    ;
  end;
end;

function TFormAddDevice.CheckData: Boolean;
begin
  Result := True;
  if CurvyEdit1.Text = '' then Exit(False);
  if CurvyEdit3.Text = '' then Exit(False);
  if CurvyCombo1.Text = '' then Exit(False);
end;

procedure TFormAddDevice.CurvyCombo1Select(Sender: TObject);
begin

  AdvMetroTile1.SetFocus;
end;

procedure TFormAddDevice.DBGridEhDeviceCellClick(Column: TColumnEh);
begin
  CurvyEdit1.Text := DM.FDQ01.FieldByName('DeviceName').AsString;
  CurvyEdit2.Text := DM.FDQ01.FieldByName('DeviceType').AsString;
  CurvyEdit3.Text := DM.FDQ01.FieldByName('DeviceCount').AsString;
  CurvyCombo1.Text := DM.FDQ01.FieldByName('DeviceStatus').AsString;
  AdvMetroTile2.Enabled := True;
end;

end.
