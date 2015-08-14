unit frmMainUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  EditBtn;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    Button1: TButton;
    btnSelectFolder: TButton;
    DirectoryEdit1: TDirectoryEdit;
    txtFolderPath: TEdit;
    lstFiles: TListBox;
    SelectDirectory: TSelectDirectoryDialog;
    procedure btnSelectFolderClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.btnSelectFolderClick(Sender: TObject);
begin
  if SelectDirectory.Execute then
  begin
       txtFolderPath.Text:=SelectDirectory.Files[0];
  end;
end;

end.
