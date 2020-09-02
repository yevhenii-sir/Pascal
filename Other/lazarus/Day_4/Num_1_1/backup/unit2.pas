unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
var s: string;
begin
 case StrToInt(Edit1.Text) of
 1: s := 'Mogila';
 2: s := 'Neketa';
 3: s := 'Pusto';
 4: s := 'Pusto';
 5: s := 'Chelik';
 6: s := 'Chelik';
 7: s := 'Kurakina';
 8: s := 'Sirenko';
 9: s := 'Xomenko';
 10: s := 'Shkarupa';
 11: s := 'Tixomirov';
 else s := 'Nema';
 end;
 Label2.Caption := 'Це - ' + S;
 end;
end;

end.

