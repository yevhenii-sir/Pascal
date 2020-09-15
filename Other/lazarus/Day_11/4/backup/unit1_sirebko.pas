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
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Eng_words, Ukr_words: array[0..100] of String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var  i: Integer;
begin
 For i := 0 to Memo1.Lines.Count - 1 do
 begin
  Ukr_words[i] := Memo1.Lines[i];
    Eng_words[i] := Memo2.Lines[i];
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i: Integer;  S: String;
begin
  S := Edit1.Text;               // вводимо слово, яке бажаємо перекласти
  i := -1;
  Repeat i := i + 1;           // збільшуємо індекс елемента
  Until Ukr_words[i] = S;     // поки не знайдемо слово S
  Edit2.Text := Eng_words[i]; { виводимо елемент із масиву англійських
слів із таким індексом, як у слова S у масиві українських слів }

end;

procedure TForm1.Button3Click(Sender: TObject);
var i: Integer;  S: String;
begin
  S := Edit3.Text;               // вводимо слово, яке бажаємо перекласти
  i := -1;
  Repeat i := i + 1;           // збільшуємо індекс елемента
  Until Eng_words[i] = S;     // поки не знайдемо слово S
  Edit4.Text := Ukr_words[i]; { виводимо елемент із масиву англійських
слів із таким індексом, як у слова S у масиві українських слів }
end;

end.

