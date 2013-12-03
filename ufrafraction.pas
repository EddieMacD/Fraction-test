unit ufraFraction;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, StdCtrls;

type

  { TfraFraction }

  TfraFraction = class(TFrame)
    lblTop : TLabel;
    lblBottom : TLabel;
  private
    function GetDenominator : string;
    function GetNumerator : string;
    procedure SetDenominator(AValue : string);
    procedure SetNumerator(AValue : string);
    { private declarations }
  public
    property Numerator : string read GetNumerator write SetNumerator;
    property Denominator : string read GetDenominator write SetDenominator;
  end;

implementation

{$R *.lfm}

{ TfraFraction }

function TfraFraction.GetDenominator : string;
begin
  Result := lblBottom.Caption;
end;

function TfraFraction.GetNumerator : string;
begin
  Result := lblTop.Caption;
end;

procedure TfraFraction.SetDenominator(AValue : string);
begin
  lblBottom.Caption := AValue;
end;

procedure TfraFraction.SetNumerator(AValue : string);
begin
  lblTop.Caption := AValue;
end;

end.

