unit ufrmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnClose : TBitBtn;
    btnGo : TBitBtn;
    Label1 : TLabel;
    Label2 : TLabel;
    Label3 : TLabel;
    lstTest : TListBox;
    procedure btnCloseClick(Sender : TObject);
    procedure btnGoClick(Sender : TObject);
    procedure lstTestSelectionChange(Sender : TObject; User : boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain : TfrmMain;

implementation

uses ufrmTest;

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.btnCloseClick(Sender : TObject);
begin
  Close;
end;

procedure TfrmMain.btnGoClick(Sender : TObject);
begin
  frmTest.Show;
end;

procedure TfrmMain.lstTestSelectionChange(Sender : TObject; User : boolean);
begin
  btnGo.Enabled := (lstTest.SelCount=1);
end;

end.

