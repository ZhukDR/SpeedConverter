unit run;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
dist : integer;
t: real;
min : integer;
sek : integer;
v: real;
begin
dist := StrToInt(Edit1.Text);
t := StrToFloat(Edit2.Text);
min := Trunc(t);
sek := Trunc(t*100) mod 100;
v := (dist/1000) / ((min*60 + sek)/3600);
label4.Caption := 'Дистанция: '+ Edit1.Text + ' м' + #13

+ 'Время: ' + IntToStr(min) + ' мин '

+ IntToStr(sek) + ' сек ' + #13 +

'Скорость: ' + FloatToStrF(v,ffFixed,4,2) + 'км/час';
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;
end.
