unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl2: TLabel;
    rg1: TRadioGroup;
    lbl3: TLabel;
    rg2: TRadioGroup;
    lbl4: TLabel;
    rg3: TRadioGroup;
    rg4: TRadioGroup;
    lbl5: TLabel;
    lbl6: TLabel;
    rg5: TRadioGroup;
    lbl7: TLabel;
    rg6: TRadioGroup;
    lbl8: TLabel;
    rg7: TRadioGroup;
    rg8: TRadioGroup;
    lbl9: TLabel;
    lbl10: TLabel;
    rg9: TRadioGroup;
    lbl11: TLabel;
    rg10: TRadioGroup;
    lbl12: TLabel;
    rg11: TRadioGroup;
    lbl13: TLabel;
    rg12: TRadioGroup;
    lbl14: TLabel;
    rg13: TRadioGroup;
    lbl15: TLabel;
    rg14: TRadioGroup;
    lbl16: TLabel;
    rg15: TRadioGroup;
    lbl17: TLabel;
    rg16: TRadioGroup;
    lbl18: TLabel;
    rg17: TRadioGroup;
    lbl19: TLabel;
    rg18: TRadioGroup;
    lbl20: TLabel;
    rg19: TRadioGroup;
    lbl21: TLabel;
    rg20: TRadioGroup;
    btn1: TButton;
    txt1: TStaticText;
    lbl1: TLabel;
    edt1: TEdit;
    tmr1: TTimer;
    lbl22: TLabel;
    lbl23: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure rg20Click(Sender: TObject);
    procedure rg2Click(Sender: TObject);
    procedure rg3Click(Sender: TObject);
    procedure rg4Click(Sender: TObject);
    procedure rg5Click(Sender: TObject);
    procedure rg6Click(Sender: TObject);
    procedure rg7Click(Sender: TObject);
    procedure rg8Click(Sender: TObject);
    procedure rg9Click(Sender: TObject);
    procedure rg10Click(Sender: TObject);
    procedure rg11Click(Sender: TObject);
    procedure rg12Click(Sender: TObject);
    procedure rg13Click(Sender: TObject);
    procedure rg14Click(Sender: TObject);
    procedure rg15Click(Sender: TObject);
    procedure rg16Click(Sender: TObject);
    procedure rg17Click(Sender: TObject);
    procedure rg18Click(Sender: TObject);
    procedure rg19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a,minutos,segundos:Integer;
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
a:=0;
if ((rg1.ItemIndex<>0) and (rg1.ItemIndex<>1)and(rg1.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 1');
rg1.SetFocus;
exit;
end;
if rg1.ItemIndex=0 then a:=a+5;
if ((rg2.ItemIndex<>0) and (rg2.ItemIndex<>1)and(rg2.ItemIndex<>2)and(rg2.ItemIndex<>3))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 2');
rg2.SetFocus;
exit;
end;
if rg2.ItemIndex=1 then a:=a+5;
if ((rg3.ItemIndex<>0) and (rg3.ItemIndex<>1)and(rg3.ItemIndex<>2)and(rg3.ItemIndex<>3))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 3');
rg3.SetFocus;
exit;
end;
if rg3.ItemIndex=2 then a:=a+5;
if ((rg4.ItemIndex<>0) and (rg4.ItemIndex<>1)and(rg4.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 4');
rg4.SetFocus;
exit;
end;
if rg4.ItemIndex=1 then a:=a+5;
if ((rg5.ItemIndex<>0) and (rg5.ItemIndex<>1)and(rg5.ItemIndex<>2)and(rg5.ItemIndex<>3))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 5');
rg5.SetFocus;
exit;
end;
if rg5.ItemIndex=2 then a:=a+5;
if ((rg6.ItemIndex<>0) and (rg6.ItemIndex<>1)and(rg6.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 6');
rg6.SetFocus;
exit;
end;
if rg6.ItemIndex=0 then a:=a+5;
if ((rg7.ItemIndex<>0) and (rg7.ItemIndex<>1)and(rg7.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 7');
rg7.SetFocus;
exit;
end;
if rg7.ItemIndex=2 then a:=a+5;
if ((rg8.ItemIndex<>0) and (rg8.ItemIndex<>1)and(rg8.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 8');
rg8.SetFocus;
exit;
end;
if rg8.ItemIndex=0 then a:=a+5;
if ((rg9.ItemIndex<>0) and (rg9.ItemIndex<>1)and(rg9.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 9');
rg9.SetFocus;
exit;
end;
if rg9.ItemIndex=1 then a:=a+5;
if ((rg10.ItemIndex<>0) and (rg10.ItemIndex<>1)and(rg10.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 10');
rg10.SetFocus;
exit;
end;
if rg10.ItemIndex=0 then a:=a+5;
if ((rg11.ItemIndex<>0) and (rg11.ItemIndex<>1)and(rg11.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 11');
rg11.SetFocus;
exit;
end;
if rg11.ItemIndex=1 then a:=a+5;
if ((rg12.ItemIndex<>0) and (rg12.ItemIndex<>1)and(rg12.ItemIndex<>2)and(rg12.ItemIndex<>3))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 12');
rg12.SetFocus;
exit;
end;
if rg12.ItemIndex=2 then a:=a+5;
if ((rg13.ItemIndex<>0) and (rg13.ItemIndex<>1)and(rg13.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 13');
rg13.SetFocus;
exit;
end;
if rg13.ItemIndex=1 then a:=a+5;
if ((rg14.ItemIndex<>0) and (rg14.ItemIndex<>1)and(rg14.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 14');
rg14.SetFocus;
exit;
end;
if rg14.ItemIndex=2 then a:=a+5;
if ((rg15.ItemIndex<>0) and (rg15.ItemIndex<>1)and(rg15.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 15');
rg15.SetFocus;
exit;
end;
if rg15.ItemIndex=0 then a:=a+5;
if ((rg16.ItemIndex<>0) and (rg16.ItemIndex<>1)and(rg16.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 16');
rg16.SetFocus;
exit;
end;
if rg16.ItemIndex=2 then a:=a+5;
if ((rg17.ItemIndex<>0) and (rg17.ItemIndex<>1)and(rg17.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 17');
rg17.SetFocus;
exit;
end;
if rg17.ItemIndex=0 then a:=a+5;
if ((rg18.ItemIndex<>0) and (rg18.ItemIndex<>1)and(rg18.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 18');
rg18.SetFocus;
exit;
end;
if rg18.ItemIndex=1 then a:=a+5;
if ((rg19.ItemIndex<>0) and (rg19.ItemIndex<>1)and(rg19.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 19');
rg19.SetFocus;
exit;
end;
if rg19.ItemIndex=0 then a:=a+5;
if ((rg20.ItemIndex<>0) and (rg20.ItemIndex<>1)and(rg20.ItemIndex<>2))then
begin
showmessage ('Debes selecionar una respuesta para la Pregunta 20');
rg20.SetFocus;
exit;
end;
if rg20.ItemIndex=1 then a:=a+5;
form3.Show;
form1.Hide;
edt1.Text:=inttostr(a);
 tmr1.Enabled:=False;
 end;




procedure TForm1.tmr1Timer(Sender: TObject);
begin
   Dec(segundos);
  lbl22.Caption:= Format('%d:%d',[Minutos, segundos]);
  if (Minutos = 0) and (segundos=0) then
  begin
   tmr1.Enabled:= False;
   a:=0;
if rg1.ItemIndex=0 then a:=a+5 else a:=a;
if rg2.ItemIndex=1 then a:=a+5 else a:=a;
if rg3.ItemIndex=2 then a:=a+5 else a:=a;
if rg4.ItemIndex=1 then a:=a+5 else a:=a;
if rg5.ItemIndex=2 then a:=a+5 else a:=a;
if rg6.ItemIndex=0 then a:=a+5 else a:=a;
if rg7.ItemIndex=2 then a:=a+5 else a:=a;
if rg8.ItemIndex=0 then a:=a+5 else a:=a;
if rg9.ItemIndex=1 then a:=a+5 else a:=a;
if rg10.ItemIndex=0 then a:=a+5 else a:=a;
if rg11.ItemIndex=1 then a:=a+5 else a:=a;
if rg12.ItemIndex=2 then a:=a+5 else a:=a;
if rg13.ItemIndex=1 then a:=a+5 else a:=a;
if rg14.ItemIndex=2 then a:=a+5 else a:=a;
if rg15.ItemIndex=0 then a:=a+5 else a:=a;
if rg16.ItemIndex=2 then a:=a+5 else a:=a;
if rg17.ItemIndex=0 then a:=a+5 else a:=a;
if rg18.ItemIndex=1 then a:=a+5 else a:=a;
if rg19.ItemIndex=0 then a:=a+5 else a:=a;
if rg20.ItemIndex=1 then a:=a+5 else a:=a;
edt1.Text:=inttostr(a);
tmr1.Enabled:=False;
MessageBeep(MB_ICONASTERISK);
Showmessage('Disculpa '+copy(Form2.edt1.Text,1,20)+' su tiempo se ha agotado');
Form1.Hide;
Form3.Show;
  end  else if segundos = 0 then
  begin
  Dec(Minutos);
  segundos:=60
  end;

end;

procedure TForm1.rg1Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;


procedure TForm1.rg20Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg2Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg3Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;


procedure TForm1.rg4Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg5Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg6Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg7Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg8Click(Sender: TObject);
begin
 tmr1.Enabled:=True;
end;

procedure TForm1.rg9Click(Sender: TObject);
begin
  tmr1.Enabled:=True;
end;

procedure TForm1.rg10Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg11Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg12Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg13Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg14Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg15Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg16Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg17Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg18Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

procedure TForm1.rg19Click(Sender: TObject);
begin
tmr1.Enabled:=True;
end;

end.
