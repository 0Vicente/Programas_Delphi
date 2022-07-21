unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus;

type
  TForm4 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    mm1: TMainMenu;
    Usuario1: TMenuItem;
    CambiarContrasea1: TMenuItem;
    Cerrarsesin1: TMenuItem;
    N1: TMenuItem;
    NuevoUsuario1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure CambiarContrasea1Click(Sender: TObject);
    procedure NuevoUsuario1Click(Sender: TObject);
    procedure Cerrarsesin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit5, Unit6, Unit3, Unit7, Unit8;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
Form1.show;
Form4.Hide;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
form2.ds1.Enabled:=False;
Form4.Hide;
form2.show;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
Form4.Hide;
form5.show;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
Form4.Hide;
form6.show;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
form4.Hide;
form3.show;
Form3.edt1.Clear;
Form3.edt2.Clear;
Form3.edt3.Clear;
form3.edt4.Clear;
Form3.edt5.Clear;
Form3.edt6.Clear;
form3.edt7.Clear;
Form3.edt8.Clear;
btn1.Enabled:=True;
btn2.Enabled:=True;
btn3.Enabled:=True;
btn4.Enabled:=True;
Cerrarsesin1.Enabled:=True;
NuevoUsuario1.Enabled:=True;
CambiarContrasea1.Enabled:=True;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
form7.show;
Form4.Hide;
end;

procedure TForm4.btn7Click(Sender: TObject);
begin
Form4.Hide;
form8.show;
end;

procedure TForm4.CambiarContrasea1Click(Sender: TObject);
begin
Form4.Hide;
form8.show;
end;

procedure TForm4.NuevoUsuario1Click(Sender: TObject);
begin
form7.show;
Form4.Hide;
end;

procedure TForm4.Cerrarsesin1Click(Sender: TObject);
begin
form4.Hide;
form3.show;
Form3.edt1.Clear;
Form3.edt2.Clear;
Form3.edt3.Clear;
form3.edt4.Clear;
Form3.edt5.Clear;
Form3.edt6.Clear;
form3.edt7.Clear;
Form3.edt8.Clear;
btn1.Enabled:=True;
btn2.Enabled:=True;
btn3.Enabled:=True;
btn4.Enabled:=True;
Cerrarsesin1.Enabled:=True;
NuevoUsuario1.Enabled:=True;
CambiarContrasea1.Enabled:=True;
end;

end.
