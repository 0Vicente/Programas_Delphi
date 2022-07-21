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
    ListBox1: TListBox;
    btn1: TButton;
    procedure edit1keypress(Sender: TObject; var Key: Char);
    procedure edit2keypress(Sender: TObject; var Key: Char);
    procedure edit3keypress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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

procedure TForm1.Button1Click(Sender: TObject);
var x:integer;
opc:short;
begin
edit1.SetFocus;
if listbox1.ItemIndex <>x then  listbox1.Clear;
if (edit1.Text='') or(edit2.Text='') or (edit3.Text='')then
begin
showmessage('Debes introducir los datos');
exit;
end;
For x:= 1 to 15 do
  begin
if (x<>StrToInt( Edit1.Text)) and (x<>StrToInt( Edit2.Text)) and (x<>StrToInt( Edit3.Text)) then  listbox1.Items.Add(inttostr(x));
end;

if (Edit1.Text='1') or (Edit2.Text='1') or (Edit3.Text='1') then ListBox1.Items.Insert(0,'Uno');
if (Edit1.Text='2') or (Edit2.Text='2') or (Edit3.Text='2') then ListBox1.Items.Insert(1,'Dos');
if (Edit1.Text='3') or (Edit2.Text='3') or (Edit3.Text='3') then ListBox1.Items.Insert(2,'Tres');
if (Edit1.Text='4') or (Edit2.Text='4') or (Edit3.Text='4') then ListBox1.Items.Insert(3,'Cuatro');
if (Edit1.Text='5') or (Edit2.Text='5') or (Edit3.Text='5') then ListBox1.Items.Insert(4,'Cinco');
if (Edit1.Text='6') or (Edit2.Text='6') or (Edit3.Text='6') then ListBox1.Items.Insert(5,'Seis');
if (Edit1.Text='7') or (Edit2.Text='7') or (Edit3.Text='7') then ListBox1.Items.Insert(6,'Siete');
if (Edit1.Text='8') or (Edit2.Text='8') or (Edit3.Text='81') then ListBox1.Items.Insert(7,'Ocho');
if (Edit1.Text='9') or (Edit2.Text='9') or (Edit3.Text='9') then ListBox1.Items.Insert(8,'Nueve');
if (Edit1.Text='10') or (Edit2.Text='10') or (Edit3.Text='10') then ListBox1.Items.Insert(9,'Diez');
if (Edit1.Text='11') or (Edit2.Text='11') or (Edit3.Text='11') then ListBox1.Items.Insert(10,'Once');
if (Edit1.Text='12') or (Edit2.Text='12') or (Edit3.Text='12') then ListBox1.Items.Insert(11,'Doce');
if (Edit1.Text='13') or (Edit2.Text='13') or (Edit3.Text='13') then ListBox1.Items.Insert(12,'Trece');
if (Edit1.Text='14') or (Edit2.Text='14') or (Edit3.Text='14') then ListBox1.Items.Insert(13,'Catorce');
if (Edit1.Text='15') or (Edit2.Text='15') or (Edit3.Text='15') then ListBox1.Items.Insert(14,'Quince');
  ShowMessage('Imprimiendo');
  end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowMessage('Bye');
close;
end;

end.
