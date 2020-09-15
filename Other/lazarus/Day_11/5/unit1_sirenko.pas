unit unit1_sirenko;

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
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  var A: array[1..100] of integer; n: integer; i: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  n := StrtoInt(Edit1.Text);
  Edit1.Clear;
  Memo1.Lines.Add('Згенерований масив: ');
  for i := 1 to n do begin
    A[i] := Random(60) - 25;
    Memo1.Lines.Add(IntToStr(A[i]));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  For  i := 1 to N do  A[i] := A[i] * 2;
  Memo1.Lines.Add('Подвоєний масив: ');
  for i := 1 to n do begin
    Memo1.Lines.Add(IntToStr(A[i]));
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  For  i := 1 to N do
  If A[i] < 0 Then  A[i] := 25;
  Memo1.Lines.Add('Масив де відємні значення замінили на 25:');
  for i := 1 to n do begin
    Memo1.Lines.Add(IntToStr(A[i]));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  For  i := 1 to N do
 If i mod 2 = 0 Then  A[i] := 0;
  Memo1.Lines.Add('Масив де парні значення замінили на 0: ');
  for i := 1 to n do begin
    Memo1.Lines.Add(IntToStr(A[i]));
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var k :integer;
begin
 K := 0;
For i := 1 to N do
 If A[i] > 0 Then  K:= K+ 1;
 Memo1.Lines.Add('Кількість парних: ' + IntToStr(k));
end;

procedure TForm1.Button6Click(Sender: TObject);
var max, k: integer;
begin
  Max := A[1];    // змінна для збереження найбільшого значення елемента
K := 1;          // змінна для збереження індексу найбільшого елемента
For i := 2 to N do    // перебираємо елементи, починаючи з другого
 If A[i] > Max Then  begin
      Max := A[i]; K := i; end;
Memo1.Lines.Add('Найбільший елемент має індекс ' + IntToStr(K));
Memo1.Lines.Add('Max=' + IntToStr(Max));

end;

procedure TForm1.Button7Click(Sender: TObject);
var p: integer;
begin
  p := StrToint(Edit1.Text);
  i := 0;
  Repeat
  i := i + 1
  Until (A[i] = P) Or (i > N);   { N — кількість елементів у масиві А }
  If i <= N Then Edit1.Text := ' i= ' + IntToStr(i)
  Else Edit1.Text := 'Значення не знайдене'
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Clear;
  Memo1.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

