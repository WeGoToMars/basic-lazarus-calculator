program project1;

{$mode objfpc}{$H+}

uses
  Interfaces,
  Forms, Unit1;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Calculator';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

