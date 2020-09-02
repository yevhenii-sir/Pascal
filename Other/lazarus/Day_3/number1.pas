unit number1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
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
var y, x: real;
begin
x := StrToInt(Edit1.Text);
if (0 < x) and (x < 4) then y := 4 - sqr(x)
else if x = 0 then y := 0
     else if x < 0 then y := exp(3 * ln(x))
          else y := 1;
Edit2.Text := FloatToStr(y);
end;

end.

