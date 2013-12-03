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
    procedure ClearAnswer;
    procedure PopulateRandomFraction(const fractionFrame : TfraFraction);
  public
    procedure AfterConstruction; override;
  end;

var
  frmTest : TfrmTest;

implementation

{$R *.lfm}

{ TfrmTest }

procedure TfrmTest.btnNextClick(Sender : TObject);
begin
  MakeQuestion;
end;

procedure TfrmTest.MakeQuestion;
var whichAnswer : integer;
  answerFraction : TfraFraction;
  multipleFactor : Integer;
begin
  ClearAnswer;

  PopulateRandomFraction(fraFraction1);
  PopulateRandomFraction(fraFraction2);
  PopulateRandomFraction(fraFraction3);

  whichAnswer := Round(Random * 2) + 1;
  case whichAnswer of
  1 : answerFraction := fraFraction1;
  2 : answerFraction := fraFraction2;
  3 : answerFraction := fraFraction3;
  end;

  multipleFactor := Round(Random * 9) + 1;

  fraFractionQuestion.Numerator := IntToStr( StrToInt(answerFraction.Numerator) * multipleFactor );
  fraFractionQuestion.Denominator := IntToStr( StrToInt(answerFraction.Denominator) * multipleFactor );

end;

procedure TfrmTest.ClearAnswer;
begin

end;

procedure TfrmTest.PopulateRandomFraction(const fractionFrame : TfraFraction);
begin
  fractionFrame.Numerator := IntToStr(Round(Random * 15));
  fractionFrame.Denominator := IntToStr(Round(Random * 60));
end;

procedure TfrmTest.AfterConstruction;
begin
  inherited AfterConstruction;
  MakeQuestion;
end;

end.

