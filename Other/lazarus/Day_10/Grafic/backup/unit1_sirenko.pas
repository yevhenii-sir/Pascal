unit unit1_sirenko;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
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
var i,amp,x01,y01,x02,y02,imax,dt1,dt2,func:integer;
begin
imax:=100; // число точек в периоде
dt1:=2; // цена деления X
dt2:=2; // шаг во времени
amp:=70; // амплитуда
x01:=20; // начала координат
x02:=20;
y01:=20+amp;
y02:=y01+2*amp+40;
// Рисуем график с Pixels
Canvas.TextOut(0,0,'График с Pixels');
Canvas.MoveTo(x01,y01); //Рисуем ось X
Canvas.LineTo(x01+imax*dt1,y01);
Canvas.MoveTo(x01,y01+amp); //Рисуем ось Y
Canvas.LineTo(x01,y01-amp);
for i:=0 to imax do //Рисуем график
begin
func:=-round(amp*sin(2*pi/imax *i*dt2));
Canvas.Pixels[x01+i*dt1,y01+func]:=clBlack;
end;
// Рисуем график с LineTo
Canvas.TextOut(0,y02-amp-20,'График с LineTo');
Canvas.MoveTo(x02,y02); //Рисуем ось X
Canvas.LineTo(x02+imax*dt1,y02);
Canvas.MoveTo(x02,y02+amp); //Рисуем ось Y
Canvas.LineTo(x02,y02-amp);
for i:=0 to imax do //Рисуем график
begin
func:=-round(amp*sin(2*pi/imax*i*dt2));
Canvas.LineTo(x02+i*dt1,y02+func);
end;
end;
initialization

end.

