unit unit1_sirebko;

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
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Posl: array[1..100] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  N, i, Sum: Integer;
begin
  N := Memo1.Lines.Count;     // кількість рядків
{  знаходження суми }
  For i := 1 to N do Posl[i] := StrToInt(Memo1.Lines[i - 1]);
  Sum := 0;
  For i :=1 to N do Sum := Sum + Posl[i];
  Edit1.Text := IntToStr(Sum);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i: Integer;
begin
 For  i := 0 to Memo1.Lines.Count – 1 do
  begin
   If Memo1.Lines[i] = '32'  Then
   Edit1.Text := 'Знайдено в рядку ' + IntToStr(i);
  end;
end;

end.

