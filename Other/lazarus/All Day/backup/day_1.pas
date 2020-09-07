unit Day_1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
var x, y, res: real;
begin
  x := StrToFloat(Edit1.Text);
  y := StrToFloat(Edit2.Text);
  Res := Sqrt(((Abs(x + y)) / (3 * x + 4 * y)) + x * y);
  Label3.Caption := 'Результат - ' + FloatToStrF(Res, ffFixed, 5, 3);
end;

end.

