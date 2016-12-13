unit UnitAddPact;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, AdvMetroTile, Vcl.ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker, Vcl.StdCtrls, AdvCombo, AdvEdit,
  DBAdvEd, CurvyControls;

type
  TFormAddPact = class(TAdvMetroForm)
    CurvyPanel1: TCurvyPanel;
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormAddPact: TFormAddPact;

implementation

{$R *.dfm}


end.
