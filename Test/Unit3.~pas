unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form2.show;
form3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
var a:integer;
begin
a:=1;
if (radiogroup1.ItemIndex<>0) and (radiogroup1.ItemIndex<>1)and(radiogroup1.ItemIndex<>2) then
begin
showmessage ('Debes selecionar una respuesta');
exit;
end;
if radiogroup1.ItemIndex=2 then edit1.Text :=inttostr(a);
if radiogroup1.ItemIndex<>2 then edit1.Text := '0';
form4.show;
form3.Hide;

end;


end.
