unit unit1_sirenko;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a: array[1..10] of real;
    a1, d, n: real;  i: integer;
begin
  a1 := StrToFloat(Edit1.Text);
  d := StrToFloat(Edit2.Text);
  a[1] := a1;
  Memo1.Lines.Add(FloatToStr(a[1]));
  for i := 2 to 10 do begin
    a[i] := a1 + d * (i - 1);
    Memo1.Lines.Add(FloatToStr(a[i]));
  end;
end;

end.
