unit Unit1;

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
var n, i, x:integer; a, t, P:real;
begin
n:=StrToInt (edit1.text);
x:=StrToInt (edit2.text);
P:=1;  i:=1;  t:=1;
 while i<=n do  begin
t:=t*x;
a:=3+t;
P:=P*a;
 i:=i+1;
end;
Memo1.Lines.Add (FloatTo-Str(P));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Memo1.lines.Clear;
end;

end.

