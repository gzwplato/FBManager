program UT_SqlParser;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, GuiTestRunner, rxnew, rx, zeos_ex, uiblaz, PGTestCase,
  FBTestCase, MySQLTestCase, SQLite3TestCase, PGCopyCmdCase, SSHConnectionUnit;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

