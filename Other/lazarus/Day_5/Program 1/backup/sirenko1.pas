unit sirenko1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a, b: integer;
    c: real;
begin
  a := strtoint(edit1.text);
  b := strtoint(edit2.text);
  case RadioGroup1.ItemIndex of
  0: c := a + b;
  1: c := a - b;
  2: c := a * b;
  3: if b = 0 then ShowMessage('На ноль делить нельзя!')
  else c := a / b;
  end;
  Edit3.Text := FloatToStr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  RadioGroup1.ItemIndex := -1;
end;

end.

