unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses Unit4, Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
form4.show;
form5.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
var c:integer;
begin
c:=1;
if (radiogroup1.ItemIndex<>0) and (radiogroup1.ItemIndex<>1)and(radiogroup1.ItemIndex<>2) then
begin
showmessage ('Debes selecionar una respuesta');
exit;
end;
if radiogroup1.ItemIndex=2 then edit1.Text :=inttostr(c);
if radiogroup1.ItemIndex<>2 then edit1.Text := '0';
form6.show;
form5.Hide;

end;

end.
