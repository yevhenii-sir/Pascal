unit sirenko3;

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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var n: integer;
begin
  n := StrToInt(edit1.text);
  case n of
  1: RadioGroup1.ItemIndex := 1;
  2: RadioGroup1.ItemIndex := 0;
  3: RadioGroup1.ItemIndex := 4;
  4: RadioGroup1.ItemIndex := 6;
  5: RadioGroup1.ItemIndex := 2;
  6: RadioGroup1.ItemIndex := 5;
  7: RadioGroup1.ItemIndex := 3;
  else ShowMessage('Введите номер дня недели от 1 до 7');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  RadioGroup1.ItemIndex := -1;
  Memo1.lines.clear;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  case ListBox1.ItemIndex of
  0: Memo1.lines.add('12-00, 16-00, 22-00');
  1: Memo1.lines.add('12-30, 16-30, 22-30');
  2: Memo1.lines.add('11-00, 15-00, 21-00');
  3: Memo1.lines.add('11-30, 15-30, 21-30');
  4: Memo1.lines.add('12-00, 16-00, 22-00');
  5: Memo1.lines.add('12-00, 17-00, 21-00');
  6: Memo1.lines.add('12-00, 15-00, 21-30');
  end;
end;

end.

