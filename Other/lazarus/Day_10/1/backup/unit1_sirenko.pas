unit unit1_sirenko;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
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
var a, b, c:integer;
begin
  for a := 1 to 20 do begin
    for  b := 1 to 20 do begin
      for c := 1 to 20 do begin
        if (sqr(a) + sqr(b) - sqr(c)) = 0 then Memo1.Lines.Add('A = ' + IntToStr(a) + '; B = ' + IntToStr(b) + '; C =' + IntToStr(c) + ';');
      end;
    end;
  end;
end;

end.

