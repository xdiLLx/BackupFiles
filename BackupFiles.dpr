program BackupFiles;

uses
  System.StartUpCopy,
  FMX.Forms,
  BackupFiles.View.Testes in 'src\View\BackupFiles.View.Testes.pas' {V},
  BackupFiles.Model.BackupItem in 'src\Model\BackupFiles.Model.BackupItem.pas',
  BackupFiles.Controller.BackupItem in 'src\Controller\BackupFiles.Controller.BackupItem.pas',
  BackupFiles.Model.Routine in 'src\Model\BackupFiles.Model.Routine.pas',
  BackupFiles.Controller.Routine in 'src\Controller\BackupFiles.Controller.Routine.pas',
  BackupFiles.Model.StorageSettings in 'src\Model\BackupFiles.Model.StorageSettings.pas',
  BackupFiles.Controller.StorageSettings in 'src\Controller\BackupFiles.Controller.StorageSettings.pas',
  BackupFiles.Model.Interfaces in 'src\Model\BackupFiles.Model.Interfaces.pas',
  BackupFiles.Controller.Interfaces in 'src\Controller\BackupFiles.Controller.Interfaces.pas',
  BackupFiles.DAO.Routine in 'src\DAO\BackupFiles.DAO.Routine.pas' {DMRoutine: TDataModule},
  BackupFiles.DAO.Main in 'src\DAO\BackupFiles.DAO.Main.pas' {DM: TDataModule},
  BackupFiles.DAO.BackupItem in 'src\DAO\BackupFiles.DAO.BackupItem.pas' {dmBackupItem: TDataModule},
  BackupFiles.DAO.StorageSettings in 'src\DAO\BackupFiles.DAO.StorageSettings.pas' {dmStorageSettings: TDataModule},
  BackupFiles.Model.Settings in 'src\Model\BackupFiles.Model.Settings.pas',
  BackupFiles.DAO.Settings in 'src\DAO\BackupFiles.DAO.Settings.pas' {dmSettings: TDataModule},
  BackupFiles.Controller.Settings in 'src\Controller\BackupFiles.Controller.Settings.pas',
  BackupFiles.View.Main in 'src\View\BackupFiles.View.Main.pas' {FormMenuPrincipal};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksonshutdown := true;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMRoutine, DMRoutine);
  Application.CreateForm(TdmBackupItem, dmBackupItem);
  Application.CreateForm(TdmStorageSettings, dmStorageSettings);
  Application.CreateForm(TdmSettings, dmSettings);
  Application.CreateForm(TFormMenuPrincipal, FormMenuPrincipal);
  Application.Run;

end.
