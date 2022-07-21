unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure edit1keypress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
begin
if edit1.Text ='' then showmessage('Debes introducir un nombre');
 if length(edit1.text)>1 then form2.show;
 if length(edit1.text)>1 then form1.hide;
 end;

end;

procedure TForm1.edit1keypress(Sender: TObject; var Key: Char);
begin
 with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

end.
