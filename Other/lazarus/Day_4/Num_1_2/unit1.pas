unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
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
var a: integer;
begin
  a := StrToInt(Edit1.Text);
  If (a < 0) or (a > 999) then ShowMessage('Ви ввели неправильно!')
  else begin
    case a of
    0..9: Button1.Caption := 'Тут одна цифра!';
    10..99: Button1.Caption := 'Тут дві цифри!';
    100..999: Button1.Caption := 'Тут три цифри!';
    end;
  end;
end;

end.

