unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    img1: TImage;
    btn1: TButton;
    btn2: TButton;
    edt3: TEdit;
    edt4: TEdit;
    ds1: TDataSource;
    qry1: TADOQuery;
    lbl3: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure Keypress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4, Unit2, Unit5, Unit6, Unit8;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  if (edt1.Text='')or(edt2.Text='') then
  begin
   ShowMessage('Usuario o Contraseña Incorrecto');
Exit;
edt1.SetFocus;
  end;
 qry1.SQL.Clear;
qry1.SQL.Add('select Usuario, contraseña, Tipo_de_usuario from Login ');
 qry1.SQL.Add(' where usuario = "'+ edt1.Text +'" ');
qry1.Open;
if  (ds1.DataSet.FieldValues ['Usuario'])= edt1.Text then
begin
edt3.Text := ds1.DataSet.FieldValues ['Usuario'];
edt4.Text := ds1.DataSet.FieldValues['Contraseña'];
 edt5.Text := ds1.DataSet.FieldValues['Tipo_de_Usuario'];
 end else
 begin
  ShowMessage('No se encuentra este Usuario');
  exit;
  end;

  if (edt1.Text= edt3.Text) and (edt2.Text= edt4.Text) then
begin
Form3.Hide;
Form4.Show;
end
else
begin
ShowMessage('Usuario o Contraseña Incorrecto');
Exit;
edt1.SetFocus;
end;

if edt5.Text='Jefe' then
begin
 Form4.NuevoUsuario1.Enabled:=False;
end else
if edt5.Text='Usuario Simple'then
begin
  form4.NuevoUsuario1.Enabled:=False;
  Form4.btn1.Enabled:=False;
  Form4.btn3.Enabled:=False;
  form4.btn4.Enabled:=False;
end;
edt1.Clear;
edt2.Clear;
end;


procedure TForm3.Keypress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);

if Key =#13 then
begin
if (edt1.Text='')or(edt2.Text='') then
  begin
   ShowMessage('Usuario o Contraseña Incorrecto');
Exit;
edt1.SetFocus;
  end;
 qry1.SQL.Clear;
qry1.SQL.Add('select Usuario, contraseña, Tipo_de_usuario from Login ');
 qry1.SQL.Add(' where usuario = "'+ edt1.Text +'" ');
qry1.Open;
if  (ds1.DataSet.FieldValues ['Usuario'])= edt1.Text then
begin
edt3.Text := ds1.DataSet.FieldValues ['Usuario'];
edt4.Text := ds1.DataSet.FieldValues['Contraseña'];
 edt5.Text := ds1.DataSet.FieldValues['Tipo_de_Usuario'];
 end else
 begin
  ShowMessage('No se Encuentra este Usuario');
  exit;
  end;

  if (edt1.Text= edt3.Text) and (edt2.Text= edt4.Text) then
begin
Form3.Hide;
Form4.Show;
end
else
begin
ShowMessage('Usuario o Contraseña Incorrecto');
Exit;
edt1.SetFocus;
end;

if edt5.Text='Jefe' then

begin
 Form4.NuevoUsuario1.Enabled:=False;
end else
if edt5.Text='Usuario Simple'then
begin
  form4.NuevoUsuario1.Enabled:=False;
  Form4.btn1.Enabled:=False;
  Form4.btn3.Enabled:=False;
  form4.btn4.Enabled:=False;
end;
edt1.Clear;
edt2.Clear;
end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
Form1.Close;
form2.close;
Form3.Close;
Form4.Close;
form5.close;
form6.close;
end;

procedure TForm3.lbl3Click(Sender: TObject);
begin
  if edt1.Text='' then
  begin
  ShowMessage('Introduce tu Usuario');
  Exit;
  end else
 qry1.SQL.Clear;
qry1.SQL.Add('select Usuario, contraseña, Tipo_de_usuario from Login ');
 qry1.SQL.Add(' where usuario = "'+ edt1.Text +'" ');
qry1.Open;
if  (ds1.DataSet.FieldValues ['Usuario'])= edt1.Text then
begin
edt6.Text := ds1.DataSet.FieldValues ['Usuario'];
edt7.Text := ds1.DataSet.FieldValues['Contraseña'];
 edt8.Text := ds1.DataSet.FieldValues['Tipo_de_Usuario'];
  Form3.Hide;
   form8.Show;
   edt1.Clear;
   edt2.Clear;
 end else
 begin
  ShowMessage('No se Encuentra este Usuario');
  exit;
  end;
end;

end.
