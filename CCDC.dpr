program CCDC;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain: TAdvMetroForm} ,
  UnitDBM in 'UnitDBM.pas' {DM: TDataModule} ,
  UnitLogin in 'UnitLogin.pas' {FormLogin: TAdvMetroForm} ,
  UnitMeta in 'UnitMeta.pas' {FormMeta: TAdvMetroForm} ,
  UnitQuery in 'UnitQuery.pas' {FormQuery: TAdvMetroForm};

{$R *.res}


var
  FormLogin: TFormLogin;

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormMeta, FormMeta);
  // Application.CreateForm(TFormQuery, FormQuery);
  // FormLogin := TFormLogin.Create(nil);
  // FormLogin.ShowModal;
  // FormLogin.Free;

  Application.Run;

end.
