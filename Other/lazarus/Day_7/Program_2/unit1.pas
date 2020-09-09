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
    Label1: TLabel;
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
var n,i:integer; a,S:real;
begin
n:=StrToInt (edit1.text);
S:=0 ;  i:=1;
repeat  a:=sin(i);
S:=S+a;  i:=i+1;
until i>n;
Memo1.Lines.Add (FloatToStr(s));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.lines.Clear;
  Edit1.Clear;
end;

end.

