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
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox4: TAdvGroupBox;
    UnitAdvEditBtn7: TUnitAdvEditBtn;
    AdvOfficeRadioGroup2: TAdvOfficeRadioGroup;
    AdvGroupBox1: TAdvGroupBox;
    UnitAdvEditBtn1: TUnitAdvEditBtn;
    UnitAdvEditBtn2: TUnitAdvEditBtn;
    UnitAdvEditBtn3: TUnitAdvEditBtn;
    UnitAdvEditBtn4: TUnitAdvEditBtn;
    AdvComboBox3: TAdvComboBox;
    AdvComboBox4: TAdvComboBox;
    AdvComboBox6: TAdvComboBox;
    AdvComboBox7: TAdvComboBox;
    AdvComboBox1: TAdvComboBox;
    AdvComboBox2: TAdvComboBox;
    AdvComboBox5: TAdvComboBox;
    AdvMetroTile1: TAdvMetroTile;
    UnitAdvEditBtn5: TUnitAdvEditBtn;
    procedure AdvMetroFormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormQuery: TFormQuery;

implementation

{$R *.dfm}


procedure TFormQuery.AdvMetroFormShow(Sender: TObject);
begin
  AdvGroupBox1.CheckBox.Checked := False;
  AdvGroupBox2.CheckBox.Checked := False;
  AdvGroupBox3.CheckBox.Checked := False;
end;

end.
