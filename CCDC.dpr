program CCDC;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain: TAdvMetroForm} ,
  UnitDBM in 'UnitDBM.pas' {DM: TDataModule} ,
  UnitLogin in 'UnitLogin.pas' {FormLogin: TAdvMetroForm};

{$R *.res}


var
  FormLogin: TFormLogin;

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);

  //FormLogin := TFormLogin.Create(nil);
  //FormLogin.ShowModal;
  //FormLogin.Free;

  Application.Run;

end.
