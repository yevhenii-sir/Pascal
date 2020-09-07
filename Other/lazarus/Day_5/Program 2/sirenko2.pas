unit sirenko2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ListBox1Click(Sender: TObject);
var n: integer;
begin
 n := ListBox1.ItemIndex;
 case n of
 0: Memo1.lines.add('Понедельник');
 1: Memo1.lines.add('Ежедневно, кроме воскресенья');
 2: Memo1.lines.add('Четверг');
 3: Memo1.lines.add('Четверг');
 4: Memo1.lines.add('Пятница');
 5: Memo1.lines.add('Суббота');
 6: Memo1.lines.add('Четверг');
 7: Memo1.lines.add('Пятница');
 8: Memo1.lines.add('Пятница');
 end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.clear;
end;

end.

