unit UnitMeta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, Vcl.StdCtrls;

type
  TFormMeta = class(TAdvMetroForm)
    LayerList: TComboBox;
    FeeKinds: TComboBox;
    HalLayer: TComboBox;
    procedure AdvMetroFormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMeta: TFormMeta;

implementation

{$R *.dfm}


uses UnitDBM;

procedure TFormMeta.AdvMetroFormCreate(Sender: TObject);
var
  I: Integer;
begin
  // 获取图层名称列表
  LayerList.Clear;
  DM.FDQuery.Close;
  DM.FDQuery.Open('select name from ttkGISLayerSQL where name like ''L%''');
  for I := 1 to DM.FDQuery.RecordCount do
  begin
    LayerList.Items.Add(DM.FDQuery.FieldByName('name').AsString);
    DM.FDQuery.Next;
  end;

  // 获取费用类型
  FeeKinds.Clear;
  DM.FDQuery.Close;
  DM.FDQuery.Open('select FeeID from T09FeeKinds');
  for I := 1 to DM.FDQuery.RecordCount do
  begin
    FeeKinds.Items.Add(DM.FDQuery.FieldByName('FeeID').AsString);
    DM.FDQuery.Next;
  end;

  // 获取馆号及其楼层数
  HalLayer.Clear;
  DM.FDQuery.Close;
  DM.FDQuery.Open('select HallID,LayerCount from T07MapInfo');
  for I := 1 to DM.FDQuery.RecordCount do
  begin
    HalLayer.Items.AddPair(DM.FDQuery.FieldByName('HallID').AsString,
      DM.FDQuery.FieldByName('LayerCount').AsString);
    DM.FDQuery.Next;
  end;

end;

end.
