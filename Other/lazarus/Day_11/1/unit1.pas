unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
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
var  i:  Integer;
  Numbers: array[1..5] of Real;
begin
  For  i := 1 to 5 do
     Numbers[i] := StrToFloat(InputBox('Уведіть значення елемента' , 'Numbers[' + FloatToStr(i) + ']:' , '0'));
  For  i := 1 to  5  do
 ListBox1.Items.Add(FormatFloat('#.####',  Numbers[i]));
end;

end.

