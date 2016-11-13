unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, Vcl.ExtCtrls, AdvGlassButton, AdvSmoothButton, CurvyControls, AdvSmoothLabel;

type
  TFormLogin = class(TAdvMetroForm)
    CurvyEdit1: TCurvyEdit;
    CurvyEdit2: TCurvyEdit;
    CurvyEdit3: TCurvyEdit;
    CurvyPanel1: TCurvyPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure AdvSmoothLabel1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}


procedure TFormLogin.AdvMetroFormCreate(Sender: TObject);
begin
  Self.Caption := '';
end;

procedure TFormLogin.AdvSmoothLabel1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
