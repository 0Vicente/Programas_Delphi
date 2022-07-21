unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    edtUsuario: TEdit;
    lbl3: TLabel;
    edtcontrasena: TEdit;
    lbl4: TLabel;
    edtcontrasena1: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edtComo: TEdit;
    lbl9: TLabel;
    edtPalabra: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cmd1: TADOCommand;
    tbl1: TADOTable;
    ds1: TDataSource;
    btn4: TButton;
    qry1: TADOQuery;
    ds2: TDataSource;
    cbbtipo_de_usuario: TComboBox;
    cbbDonde: TComboBox;
    btn5: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtComoKeyPress(Sender: TObject; var Key: Char);
    procedure btn5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm7.btn2Click(Sender: TObject);
begin
  if edtUsuario.Text ='' then
begin
ShowMessage('Debes introducir un Usuario');
edtUsuario.SetFocus;
Exit;
end;

if edtcontrasena.Text ='' then
begin
ShowMessage('Debes introducir una Contraseña');
edtcontrasena.SetFocus;
Exit;
end else
if Length(edtcontrasena.Text)<8 then
begin
  ShowMessage('La Contraseña Debe Tener Minímo 8 Caracteres');
  edtcontrasena.Text:='';
  edtcontrasena1.Text:='';
  edtcontrasena.SetFocus;
  Exit;
end;

if cbbtipo_de_usuario.Text ='' then
begin
ShowMessage('Debes introducir el Tipo de Usuario');
cbbtipo_de_usuario.SetFocus;
Exit;
end;
if cbbDonde.Text ='' then
begin
ShowMessage('Debes introducir el Lugar de Nacimiento de tu Padre');
cbbDonde.SetFocus;
Exit;
end;
if edtComo.Text ='' then
begin
ShowMessage('Debes introducir el Nombre de tu Primera Mascota');
edtComo.SetFocus;
Exit;
end;
if edtPalabra.Text ='' then
begin
ShowMessage('Debes introducir una Palabra Clave');
edtPalabra.SetFocus;
Exit;
end;

 qry1.SQL.Clear;
qry1.SQL.Add('select Usuario from Login ');
qry1.SQL.Add(' where usuario = "'+ edtUsuario.Text +'" ');
qry1.Open;
 if  (ds2.DataSet.FieldValues['Usuario']) = edtUsuario.Text then
 begin
   ShowMessage('El Usuario ya Esta en Uso');
   edtUsuario.Text:='';
   edtUsuario.SetFocus;
   Exit;
 end else
  if (edtcontrasena.Text)=(edtcontrasena1.Text)then
  begin
 cmd1.CommandText := 'insert into login (Usuario, contraseña, tipo_de_usuario, como, donde, palabra) values ("'+edtusuario.Text+'", "'+ edtcontrasena.Text +'", "'+ cbbtipo_de_usuario.Text+'", "'+ edtComo.Text +'", "'+cbbdonde.Text+'", "'+edtpalabra.Text+'")';
cmd1.Execute;
tbl1.Requery();
showmessage('Usuario Registrado');
edtUsuario.Clear;
edtcontrasena1.Clear;
edtComo.Clear;
edtPalabra.Clear;
edtcontrasena.Clear;
cbbtipo_de_usuario.ItemIndex:=-1;
cbbDonde.ItemIndex:=-1;
end
 else
begin
  ShowMessage('Las Contraseñas no Coninciden');
  Exit;
end;

  end;

procedure TForm7.btn3Click(Sender: TObject);
begin
form3.show;
Form7.Hide;
Form3.edt1.Clear;
Form3.edt2.Clear;
Form3.edt3.Clear;
form3.edt4.Clear;
Form3.edt5.Clear;
Form3.edt6.Clear;
form3.edt7.Clear;
Form3.edt8.Clear;
Form4.btn1.Enabled:=True;
Form4.btn2.Enabled:=True;
Form4.btn3.Enabled:=True;
Form4.btn4.Enabled:=True;
Form4.Cerrarsesin1.Enabled:=True;
Form4.NuevoUsuario1.Enabled:=True;
Form4.CambiarContrasea1.Enabled:=True;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
form4.show;
Form7.Hide;
end;

procedure TForm7.btn4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
edtcontrasena.PasswordChar:= #0;
edtcontrasena1.PasswordChar:=#0;
end;

procedure TForm7.btn4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 edtcontrasena.PasswordChar:= '*';
edtcontrasena1.PasswordChar:='*';
end;

procedure TForm7.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm7.edtComoKeyPress(Sender: TObject; var Key: Char);
begin
 with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm7.btn5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtPalabra.PasswordChar:=#0;
end;

procedure TForm7.btn5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
edtPalabra.PasswordChar:='*';
end;

end.
