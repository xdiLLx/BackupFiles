program BackupFiles;

uses
  System.StartUpCopy,
  FMX.Forms,
  BackupFiles.View.Main in 'src\View\BackupFiles.View.Main.pas' {ViewMain},
  BackupFiles.Model.BackupItem in 'src\Model\BackupFiles.Model.BackupItem.pas',
  BackupFiles.Controller.BackupItem in 'src\Controller\BackupFiles.Controller.BackupItem.pas',
  BackupFiles.Model.Routine in 'src\Model\BackupFiles.Model.Routine.pas',
  BackupFiles.Controller.Rotina in 'src\Controller\BackupFiles.Controller.Rotina.pas',
  BackupFiles.Model.LocalStorageSettings in 'src\Model\BackupFiles.Model.LocalStorageSettings.pas',
  BackupFiles.Model.FtpStorageSettings in 'src\Model\BackupFiles.Model.FtpStorageSettings.pas',
  BackupFiles.Controller.StorageSettings in 'src\Controller\BackupFiles.Controller.StorageSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
