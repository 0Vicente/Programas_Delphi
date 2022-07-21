unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
edt2.text:= Copy(UpperCase(edt1.Text),1,1) + copy(lowercase(edt1.text),2,12);
ShowMessage('Imprimiendo '+ edt2.text);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
ShowMessage('Bye');
Close;
end;

end.
