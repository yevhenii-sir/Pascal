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
var i, j, m: integer;
begin
  for i := 1 to 5 do begin
    for j := 1 to i do begin
    Memo1.Lines.Text := Memo1.Lines.Text + (IntToStr(i));
    end;
    memo1.Lines.text := Memo1.Lines.Text + (#13);
    for m := 1 to i do begin
    Memo1.Lines.Text := Memo1.Lines.Text + ('0');
    end;
    memo1.Lines.text := Memo1.Lines.Text + (#13);
  end;

  for i to 5 do begin
    for j := 1 to 5 do  begin
       Memo1.Lines.Text := Memo1.Lines.Text + ('5');
    end;
     memo1.Lines.text := Memo1.Lines.Text + (#13);
  end;


end;

end.

