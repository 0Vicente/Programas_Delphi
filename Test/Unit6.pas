unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure keypress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    a,b,c:integer;
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit3, unit4, unit5, Unit2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
form1.Edit1.Clear;
form3.Edit1.Clear;
form4.Edit1.Clear;
form5.Edit1.Clear;
form6.Edit1.Clear;
form3.RadioGroup1.ItemIndex := -1;
form4.RadioGroup1.ItemIndex := -1;
form5.RadioGroup1.ItemIndex := -1;
form1.show;
form6.Hide;
form1.Edit1.SetFocus;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Showmessage('Gracias,'+copy(form1.Edit1.Text,1,19));
Showmessage('Este es test fue hecho por Vicente Luna');
form1.close;
form2.close;
form3.close;
form4.close;
form5.close;
form6.close;

end;

procedure TForm6.Button3Click(Sender: TObject);

begin

a:= strtoint (form3.Edit1.text);
b:= strtoint (form4.Edit1.text);
c:= strtoint (form5.Edit1.text);
edit1.Text := inttostr(a+b+c);
if strtoint(edit1.Text)>=2 then showmessage ('Aprobada');
if strtoint(edit1.Text)<2 then showmessage ('Reprobada');
showmessage ('Hola '+copy(form1.Edit1.Text,1,20)+ ', Su Calificación es '+
copy(edit1.Text,1,1)+ ' de 3');
end;

procedure TForm6.keypress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
a:= strtoint (form3.Edit1.text);
b:= strtoint (form4.Edit1.text);
c:= strtoint (form5.Edit1.text);
edit1.Text := inttostr(a+b+c);
if strtoint(edit1.Text)>=2 then showmessage ('Aprobada');
if strtoint(edit1.Text)<2 then showmessage ('Reprobada');
showmessage ('Hola '+copy(form1.Edit1.Text,1,20)+ ', Su Calificación es '+
copy(edit1.Text,1,1)+ ' de 3');
end;
end;

end.
