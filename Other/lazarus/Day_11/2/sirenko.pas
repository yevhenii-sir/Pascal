unit Sirenko;

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
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Posl: array[1..100] of Integer;
  N, k, i: integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
//var i: integer;
begin
  N := StrToInt(Edit1.Text);
Randomize;
ListBox1.Clear;      // очищення поля списку
For i := 1 to  N  do  begin
  Posl[i] := Random(20);
   ListBox1.Items.Add(IntToStr(Posl[i]));
 end;

end;

procedure TForm1.Button2Click(Sender: TObject);
//var i: integer;
begin
  K := 0;
For i := 1 to N do
  If (Posl[i] Mod 2 = 0) and (i Mod 2 = 0)  Then K  := K + 1;
Edit2.Text  :=  IntToStr(K);

end;

end.

