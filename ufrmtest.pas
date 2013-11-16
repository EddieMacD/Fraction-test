unit ufrmTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, ExtCtrls, ufraFraction;

type

  { TfrmTest }

  TfrmTest = class(TForm)
    btnBack : TButton;
    btnNext : TButton;
    fraFraction1 : TfraFraction;
    fraFraction2 : TfraFraction;
    fraFraction3 : TfraFraction;
    fraFractionQuestion : TfraFraction;
    GroupBox1 : TGroupBox;
    GroupBox2 : TGroupBox;
    Label1 : TLabel;
    Label2 : TLabel;
    Panel1 : TPanel;
    prgTest : TProgressBar;
    radOption1 : TRadioButton;
    radOption2 : TRadioButton;
    radOption3 : TRadioButton;
    procedure btnNextClick(Sender : TObject);
  private
    { private declarations }
    procedure MakeQuestion;
  public
  end;

var
  frmTest : TfrmTest;

implementation

{$R *.lfm}

{ TfrmTest }

procedure TfrmTest.btnNextClick(Sender : TObject);
begin

end;

procedure TfrmTest.MakeQuestion;
begin
  PopulateRandomFraction(fraFraction1);
  PopulateRandomFraction(fraFraction2);
  PopulateRandomFraction(fraFraction3);
end;

end.

