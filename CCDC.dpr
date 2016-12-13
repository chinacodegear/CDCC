program CCDC;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain: TAdvMetroForm},
  UnitDBM in 'UnitDBM.pas' {DM: TDataModule},
  UnitLogin in 'UnitLogin.pas' {FormLogin: TAdvMetroForm},
  UnitMeta in 'UnitMeta.pas' {FormMeta: TAdvMetroForm},
  UnitQuery in 'UnitQuery.pas' {FormQuery: TAdvMetroForm},
  UnitFind in 'UnitFind.pas' {FormFind: TAdvMetroForm},
  UnitDatum in 'UnitDatum.pas' {FormDatum: TAdvMetroForm},
  UnitAddDevice in 'UnitAddDevice.pas' {FormAddDevice: TAdvMetroForm},
  UnitAddPact in 'UnitAddPact.pas' {FormAddPact: TAdvMetroForm};

{$R *.res}


var
  FormLogin: TFormLogin;

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  //Application.CreateForm(TFormAddPact, FormAddPact);
  //Application.CreateForm(TFormAddDevice, FormAddDevice);
  //Application.CreateForm(TFormDatum, FormDatum);
  // Application.CreateForm(TFormFind, FormFind);
  // Application.CreateForm(TFormMeta, FormMeta);
  // Application.CreateForm(TFormQuery, FormQuery);
  // FormLogin := TFormLogin.Create(nil);
  // FormLogin.ShowModal;
  // FormLogin.Free;

  Application.Run;

end.
