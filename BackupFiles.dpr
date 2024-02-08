program BackupFiles;

uses
  System.StartUpCopy,
  FMX.Forms,
  BackupFiles.View.Main in 'src\View\BackupFiles.View.Main.pas' {ViewMain},
  BackupFiles.Model.BackupItem in 'src\Model\BackupFiles.Model.BackupItem.pas',
  BackupFiles.Controller.BackupItem in 'src\Controller\BackupFiles.Controller.BackupItem.pas',
  BackupFiles.Model.Routine in 'src\Model\BackupFiles.Model.Routine.pas',
  BackupFiles.Controller.Routine in 'src\Controller\BackupFiles.Controller.Routine.pas',
  BackupFiles.Model.StorageSettings in 'src\Model\BackupFiles.Model.StorageSettings.pas',
  BackupFiles.Controller.StorageSettings in 'src\Controller\BackupFiles.Controller.StorageSettings.pas',
  BackupFiles.Model.Interfaces in 'src\Model\BackupFiles.Model.Interfaces.pas',
  BackupFiles.Controller.Interfaces in 'src\Controller\BackupFiles.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksonshutdown := true;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;

end.
