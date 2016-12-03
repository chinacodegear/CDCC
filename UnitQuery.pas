unit UnitQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, AdvOfficeButtons, Vcl.ComCtrls, AdvDateTimePicker, Vcl.StdCtrls, AdvEdit, AdvEdBtn, AdvCombo,
  AdvGroupBox, AdvMetroButton, AdvMetroTile;

type
  TFormQuery = class(TAdvMetroForm)
    AdvGroupBox2: TAdvGroupBox;
    AdvGroupBox5: TAdvGroupBox;
    AdvDateTimePicker5: TAdvDateTimePicker;
    AdvDateTimePicker6: TAdvDateTimePicker;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    AdvGroupBox1: TAdvGroupBox;
    UnitAdvEditBtn1: TUnitAdvEditBtn;
    AdvMetroTile2: TAdvMetroTile;
    AdvGroupBox6: TAdvGroupBox;
    AdvComboBox1: TAdvComboBox;
    AdvComboBox2: TAdvComboBox;
    AdvComboBox5: TAdvComboBox;
    AdvGroupBox3: TAdvGroupBox;
    UnitAdvEditBtn2: TUnitAdvEditBtn;
    AdvGroupBox8: TAdvGroupBox;
    advPactBegin: TAdvDateTimePicker;
    advPactEnd: TAdvDateTimePicker;
    AdvShopRights: TAdvComboBox;
    UnitAdvEditBtn4: TUnitAdvEditBtn;
    UnitAdvEditBtn3: TUnitAdvEditBtn;
    AdvShopKind: TAdvComboBox;
    AdvOfficeRadioGroup2: TAdvOfficeRadioGroup;
    AdvMetroTile4: TAdvMetroTile;
    AdvGroupBox4: TAdvGroupBox;
    UnitAdvEditBtn7: TUnitAdvEditBtn;
    UnitAdvEditBtn5: TUnitAdvEditBtn;
    AdvOfficeRadioGroup3: TAdvOfficeRadioGroup;
    AdvMetroTile3: TAdvMetroTile;
    AdvMetroTile5: TAdvMetroTile;
    AdvPackKind: TAdvComboBox;
    procedure AdvMetroFormShow(Sender: TObject);
    procedure UnitAdvEditBtn1ClickBtn(Sender: TObject);
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure AdvMetroTile2Click(Sender: TObject);
    procedure UnitAdvEditBtn2ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn3ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn4ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn5ClickBtn(Sender: TObject);
    procedure UnitAdvEditBtn7ClickBtn(Sender: TObject);
    procedure AdvMetroTile4Click(Sender: TObject);
    procedure AdvComboBox1Change(Sender: TObject);
    procedure AdvComboBox2Change(Sender: TObject);
    procedure AdvComboBox5Change(Sender: TObject);
    procedure AdvGroupBox1CheckBoxClick(Sender: TObject);
    procedure AdvMetroTile5Click(Sender: TObject);

  private
    procedure SetButtonPanel;
    { Private declarations }
  protected
    { Protected declarations }
  public
    // 商铺过滤器
    sFilter: string;
    // 指定表 字段和字段值 查询  字符串型查找
    procedure SimpleQuery(const ATableName: string; const AFieldName: string; const AValue: string; AFilter: string = '');
    // 数值型查找 面积 和 日期
    procedure SimpleQuery2(const ATableName, AFieldName, AValue1, AValue2: string; AFilter: string = '');
  end;

var
  FormQuery: TFormQuery;

implementation

{$R *.dfm}


uses UnitDBM, UnitMain;

procedure TFormQuery.AdvComboBox1Change(Sender: TObject);
begin
  if AdvComboBox1.ItemIndex > 0 then
      AdvComboBox1.Hint := AdvComboBox1.Items.Strings[AdvComboBox1.ItemIndex] + '%'
  else
      AdvComboBox1.Hint := '%';

  sFilter := AdvComboBox1.Hint + AdvComboBox2.Hint + AdvComboBox5.Hint;
end;

procedure TFormQuery.AdvComboBox2Change(Sender: TObject);
begin
  if AdvComboBox2.ItemIndex > 0 then
      AdvComboBox2.Hint := '%' + AdvComboBox2.Items.Strings[AdvComboBox2.ItemIndex] + '%'
  else
  begin
    AdvComboBox2.Hint := '%';
  end;
  sFilter := AdvComboBox1.Hint + AdvComboBox2.Hint + AdvComboBox5.Hint;
end;

procedure TFormQuery.AdvComboBox5Change(Sender: TObject);
begin
  if AdvComboBox5.ItemIndex > 0 then
      AdvComboBox5.Hint := '%-' + AdvComboBox5.Items.Strings[AdvComboBox5.ItemIndex] + '-%'
  else
  begin
    AdvComboBox5.Hint := '%';
  end;
  sFilter := AdvComboBox1.Hint + AdvComboBox2.Hint + AdvComboBox5.Hint;
end;

procedure TFormQuery.AdvGroupBox1CheckBoxClick(Sender: TObject);
begin
  if (Sender as TAdvGroupBox).CheckBox.Checked then
  begin
    (Sender as TAdvGroupBox).BorderColor := clRed;
  end
  else
  begin
    (Sender as TAdvGroupBox).BorderColor := clBlue;
  end;
end;

procedure TFormQuery.AdvMetroFormCreate(Sender: TObject);
begin
  AdvDateTimePicker5.Date := Now;
  AdvDateTimePicker6.Date := Now;
  AdvDateTimePicker5.Checked := False;
  AdvDateTimePicker6.Checked := False;
  Self.AdvMetroTile2.Top := 4;
  sFilter := '%';
end;

procedure TFormQuery.AdvMetroFormShow(Sender: TObject);
begin
  AdvGroupBox1.CheckBox.Checked := False;
  AdvGroupBox2.CheckBox.Checked := False;
  AdvGroupBox3.CheckBox.Checked := False;
  Self.Width := 520;
  Self.Height := 658;
end;

procedure TFormQuery.AdvMetroTile2Click(Sender: TObject);
begin
  // Self.Hide;
  Self.Height := Self.Height + 1;
  UnitAdvEditBtn3.Text := Self.Height.ToString;
end;

procedure TFormQuery.AdvMetroTile4Click(Sender: TObject);
begin
  case AdvOfficeRadioGroup2.ItemIndex of
    0:
      begin
        SimpleQuery2('T00Features', 'GrossArea', UnitAdvEditBtn5.Text, UnitAdvEditBtn7.Text, sFilter);
      end;
    1:
      begin
        SimpleQuery2('T00Features', 'UsableArea', UnitAdvEditBtn5.Text, UnitAdvEditBtn7.Text, sFilter);
      end;
  end;
end;

procedure TFormQuery.AdvMetroTile5Click(Sender: TObject);
var
  beginDate: TDate;
  endDate: TDate;
  PactKind, ShopKind, ShopRights, FeatureID: string;
  iNone: Integer;
begin
  { select FeatureID
    from T13PactInfo
    where
    PactBegin>=:PactBegin
    and
    PactEnd<=:PactEnd
    and
    PactKind like :PactKind
    and
    ShopKind like :ShopKind
    and
    ShopRights like :ShopRights
    and
    FeatureID like :FeatureID }
  beginDate := 1;
  endDate := 200 * 365;
  PactKind := '%';
  ShopKind := '%';
  ShopRights := '%';

  DM.FDQuery3.Close;

  if advPactBegin.Checked then beginDate := advPactBegin.Date;
  DM.FDQuery3.ParamByName('PactBegin').AsDate := beginDate;

  if advPactEnd.Checked then endDate := advPactEnd.Date;
  DM.FDQuery3.ParamByName('PactEnd').AsDate := endDate;

  if AdvPackKind.ItemIndex > 0 then PactKind := AdvPackKind.Items.Strings[AdvPackKind.ItemIndex];
  DM.FDQuery3.ParamByName('PactKind').AsString := PactKind;

  if AdvShopKind.ItemIndex > 0 then ShopKind := AdvShopKind.Items.Strings[AdvShopKind.ItemIndex];
  DM.FDQuery3.ParamByName('ShopKind').AsString := ShopKind;

  if AdvShopRights.ItemIndex > 0 then ShopRights := AdvShopRights.Items.Strings[AdvShopRights.ItemIndex];
  DM.FDQuery3.ParamByName('ShopRights').AsString := ShopRights;

  sFilter := AdvComboBox1.Hint + AdvComboBox2.Hint + AdvComboBox5.Hint;

  DM.FDQuery3.ParamByName('FeatureID').AsString := sFilter;

  DM.DSQuery.DataSet := DM.FDQuery3;
  DM.FDQuery3.Open;

  iNone := DM.FDQuery.RecordCount;
  FormMain.AdvExpanderPanel1.Caption.Text := '商铺列表 [' + iNone.ToString + ']';
  SetButtonPanel;

end;

procedure TFormQuery.SetButtonPanel;
begin
  FormMain.AdvExpanderPanel1.Fill.BeginUpdate;
  FormMain.AdvExpanderPanel1.Top := Self.Top;
  FormMain.AdvExpanderPanel1.Left := Self.Left + Self.Width + 10;
  FormMain.AdvExpanderPanel1.Height := Self.Height;
  FormMain.AdvExpanderPanel1.Visible := True;
  FormMain.AdvExpanderPanel1.Fill.EndUpdate;
end;

procedure TFormQuery.SimpleQuery(const ATableName, AFieldName, AValue: string; AFilter: string = '');
var
  iNone: Integer;
  I: Integer;
begin
  // 指定表 字段和字段值 查询
  if AValue = EmptyStr then
  begin
    ShowMessage('请输入查询信息！');
    Exit;
  end;

  DM.FDQuery.Close;
  DM.FDQuery.MacroByName('TableName').AsRaw := ATableName;
  DM.FDQuery.MacroByName('FID').AsRaw := AFieldName;
  DM.FDQuery.ParamByName('IDValue').Value := AValue;
  DM.DSQuery.DataSet := DM.FDQuery;

  if AFilter <> '' then
  begin
    DM.FDQuery.ParamByName('AFeatID').Value := AFilter;
  end;

  DM.FDQuery.Open;

  iNone := DM.FDQuery.RecordCount;
  FormMain.AdvExpanderPanel1.Caption.Text := '商铺列表 [' + iNone.ToString + ']';
  SetButtonPanel;
end;

procedure TFormQuery.SimpleQuery2(const ATableName, AFieldName, AValue1, AValue2: string; AFilter: string = '');
var
  iNone: Integer;
  I: Integer;
begin
  { select featureid from &TableName
    where
    &FID >= :IDValue1
    and
    &FID <= :IDValue2
    and
    featureid like :AFeatID
    and
    FeatureStatus = :AFeatStatus
  }
  DM.FDQuery2.Close;
  DM.FDQuery2.MacroByName('TableName').AsRaw := ATableName;
  DM.FDQuery2.MacroByName('FID').AsRaw := AFieldName; // 两个面积字段
  DM.FDQuery2.ParamByName('IDValue1').Value := AValue1.ToDouble;
  DM.FDQuery2.ParamByName('IDValue2').Value := AValue2.ToDouble;
  if AFilter <> '' then
  begin
    DM.FDQuery2.ParamByName('AFeatID').AsString := AFilter;
  end;

  DM.FDQuery2.ParamByName('AFeatStatus').AsString := AdvOfficeRadioGroup3.Items.Strings[AdvOfficeRadioGroup3.ItemIndex];

  DM.DSQuery.DataSet := DM.FDQuery2;
  DM.FDQuery2.Open;

  iNone := DM.FDQuery2.RecordCount;
  FormMain.AdvExpanderPanel1.Caption.Text := '商铺列表 [' + iNone.ToString + ']';
  SetButtonPanel;
end;

procedure TFormQuery.UnitAdvEditBtn1ClickBtn(Sender: TObject);
begin
  // 查商铺最后的三位数编号
  SimpleQuery('T00Features', 'Featureid', '%-' + (Sender as TUnitAdvEditBtn).Text);
end;

procedure TFormQuery.UnitAdvEditBtn2ClickBtn(Sender: TObject);
begin
  // 查合同编号
  if (Sender as TUnitAdvEditBtn).Text = '' then
  begin
    ShowMessage('请输入合同编号');
    Exit;
  end;

  SimpleQuery('T13PactInfo', 'PactID', '%' + (Sender as TUnitAdvEditBtn).Text + '%');
end;

procedure TFormQuery.UnitAdvEditBtn3ClickBtn(Sender: TObject);
begin
  // 查商铺名称
  SimpleQuery('T00Features', 'FeatureName', '%' + (Sender as TUnitAdvEditBtn).Text + '%', sFilter);
end;

procedure TFormQuery.UnitAdvEditBtn4ClickBtn(Sender: TObject);
begin
  // 查租户姓名
  if (Sender as TUnitAdvEditBtn).Text = '' then
  begin
    ShowMessage('请输入租户姓名编号');
    Exit;
  end;
  SimpleQuery('T13PactInfo', 'BossName', '%' + (Sender as TUnitAdvEditBtn).Text + '%', sFilter);
end;

procedure TFormQuery.UnitAdvEditBtn5ClickBtn(Sender: TObject);
begin
  case AdvOfficeRadioGroup2.ItemIndex of
    0:
      begin
        SimpleQuery2('T00Features', 'GrossArea', (Sender as TUnitAdvEditBtn).Text, '999999', sFilter);
      end;

    1:
      begin
        SimpleQuery2('T00Features', 'UsableArea', (Sender as TUnitAdvEditBtn).Text, '999999', sFilter);
      end;
  end;

end;

procedure TFormQuery.UnitAdvEditBtn7ClickBtn(Sender: TObject);
begin
  case AdvOfficeRadioGroup2.ItemIndex of
    0:
      begin
        SimpleQuery2('T00Features', 'GrossArea', '0', (Sender as TUnitAdvEditBtn).Text, sFilter);
      end;

    1:
      begin
        SimpleQuery2('T00Features', 'UsableArea', '0', (Sender as TUnitAdvEditBtn).Text, sFilter);
      end;
  end;

end;

end.
