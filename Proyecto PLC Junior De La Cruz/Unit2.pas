unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure edt1keypress(Sender: TObject; var Key: Char);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  showmessage('Debes introducir un nombre');
  edt1.SetFocus;
  Exit;
end;
form1.show;
form2.hide;
Form1.txt1.SetFocus;
form1.rg1.ItemIndex := -1;
form1.rg2.ItemIndex := -1;
form1.rg3.ItemIndex := -1;
form1.rg4.ItemIndex := -1;
form1.rg5.ItemIndex := -1;
form1.rg6.ItemIndex := -1;
form1.rg7.ItemIndex := -1;
form1.rg8.ItemIndex := -1;
form1.rg9.ItemIndex := -1;
form1.rg10.ItemIndex := -1;
form1.rg11.ItemIndex := -1;
form1.rg12.ItemIndex := -1;
form1.rg13.ItemIndex := -1;
form1.rg14.ItemIndex := -1;
form1.rg15.ItemIndex := -1;
form1.rg16.ItemIndex := -1;
form1.rg17.ItemIndex := -1;
form1.rg18.ItemIndex := -1;
form1.rg19.ItemIndex := -1;
form1.rg20.ItemIndex := -1;
form1.tmr1.Enabled:=False;
form1.minutos:=1;
Form1.segundos:=60;
Form1.lbl22.Caption:='2:00';
end;

procedure TForm2.edt1keypress(Sender: TObject; var Key: Char);
begin
 with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);

            if Key = #13 then
  begin
    if edt1.Text ='' then
    begin
  showmessage('Debes introducir un nombre');
  edt1.SetFocus;
  Exit;
  end;
    if length(edt1.text)>1 then form1.show;
 if length(edt1.text)>1 then form2.hide;
Form1.txt1.SetFocus;
form1.rg1.ItemIndex := -1;
form1.rg2.ItemIndex := -1;
form1.rg3.ItemIndex := -1;
form1.rg4.ItemIndex := -1;
form1.rg5.ItemIndex := -1;
form1.rg6.ItemIndex := -1;
form1.rg7.ItemIndex := -1;
form1.rg8.ItemIndex := -1;
form1.rg9.ItemIndex := -1;
form1.rg10.ItemIndex := -1;
form1.rg11.ItemIndex := -1;
form1.rg12.ItemIndex := -1;
form1.rg13.ItemIndex := -1;
form1.rg14.ItemIndex := -1;
form1.rg15.ItemIndex := -1;
form1.rg16.ItemIndex := -1;
form1.rg17.ItemIndex := -1;
form1.rg18.ItemIndex := -1;
form1.rg19.ItemIndex := -1;
form1.rg20.ItemIndex := -1;
form1.tmr1.Enabled:=False;
end;
end;



procedure TForm2.edt1Change(Sender: TObject);
begin
edt1.SetFocus;
end;



end.
