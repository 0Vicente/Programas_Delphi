unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.btn3Click(Sender: TObject);
begin
Showmessage('Dios Te Bendiga '+copy(Form2.edt1.Text,1,20));
Showmessage('Derechos Reservados By Vicente Luna');
form1.close;
form2.close;
Form3.Close;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
form3.Hide;
Form2.Show;
Form2.edt1.Clear;
end;

procedure TForm3.btn2Click(Sender: TObject);
var aa:Integer;
begin
aa:= strtoint (form1.Edt1.text);
if aa<70 then
begin
ShowMessage('Su calificacion es '+IntToStr(aa)+ '/ 100 usted esta REPROBADO');
Exit;
end;
if aa>=70 then
begin
ShowMessage('Su calificacion es '+IntToStr(aa)+ '/ 100 usted esta APROBADO');
Exit;
end;
end;
end.
