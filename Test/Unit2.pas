unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form3.show;
form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form1.show;
form2.Hide;
end;

end.
