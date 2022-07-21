unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5, Unit3;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);

begin
form3.show;
form4.Hide;
end;

procedure TForm4.Button2Click(Sender: TObject);
var b:integer;
begin
b:=1;
if (radiogroup1.ItemIndex<>0) and (radiogroup1.ItemIndex<>1)and(radiogroup1.ItemIndex<>2) then
begin
showmessage ('Debes selecionar una respuesta');
exit;
end;
if radiogroup1.ItemIndex=0 then edit1.Text :=inttostr(b);
if radiogroup1.ItemIndex<>0 then edit1.Text := '0';
form5.Show;
form4.Hide;

end;

end.
