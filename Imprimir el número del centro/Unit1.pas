unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    edt1: TEdit;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edit1keypress(Sender: TObject; var Key: Char);
    procedure edit2keypress(Sender: TObject; var Key: Char);
    procedure edit3keypress(Sender: TObject; var Key: Char);
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
var x,y,z:integer;
begin
    x:= StrToInt(Edit1.text);
    y:=StrToInt(Edit2.Text);
    z:=StrToInt(Edit3.Text);
    Edit1.SetFocus;
    if ((x<z) and (x>y)) or ((x>z)and(x<y)) then  edt1.Text:=(IntToStr(x));
    if ((z<x) and (z>y)) or ((z>x)and(z<y)) then  edt1.Text:=(IntToStr(z));
    if ((y<z) and (y>x)) or ((y>z)and(y<x)) then  edt1.Text:=(IntToStr(y));
    ShowMessage('Imprimiendo ' + edt1.Text);
    end;
    procedure TForm1.btn1Click(Sender: TObject);
begin
ShowMessage('Bye');
Close;
end;

procedure TForm1.edit1keypress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite Números')
    end;
end;

procedure TForm1.edit2keypress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite Números')
    end;
end;

procedure TForm1.edit3keypress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite Números')
    end;
end;

end.
