unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ADODB, DB;

type
  TForm8 = class(TForm)
    img1: TImage;
    edtusuario: TEdit;
    lbl1: TLabel;
    edtcontrasena: TEdit;
    lbl2: TLabel;
    edtcontrasena1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl8: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtcomo: TEdit;
    edtpalabra: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cmd1: TADOCommand;
    tbl1: TADOTable;
    ds1: TDataSource;
    qry1: TADOQuery;
    qry2: TADOQuery;
    ds2: TDataSource;
    cbbDonde: TComboBox;
    btn4: TButton;
    btn5: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtcomoKeyPress(Sender: TObject; var Key: Char);
    procedure edtdondeKeyPress(Sender: TObject; var Key: Char);
    procedure btn4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  Form8: TForm8;

implementation

uses Unit5, Unit1, Unit3, Unit4;

{$R *.dfm}


procedure TForm8.btn2Click(Sender: TObject);
begin
  if ((form3.edt3.Text)<>(edtusuario.Text))and((form3.edt6.Text)<>(edtusuario.Text)) then
  if (Form3.edt5.Text)<>'Administrador' then
  begin
    ShowMessage('El Usuario no le Pertenece');
    Exit;
  end;
  if (edtcontrasena1.Text='')or(edtcontrasena.Text='')or(edtusuario.Text='')or(edtcomo.Text='')or(cbbDonde.ItemIndex=-1)or(edtpalabra.Text='') then
begin
  ShowMessage('Debes llenar Todos los Campos');
  Exit;
end;
if (edtcontrasena.Text)<>(edtcontrasena1.Text) then
begin
  ShowMessage('Las Contraseñas no Coinciden');
  Exit;
end;

qry1.SQL.Clear;
qry1.SQL.Add('select usuario, tipo_de_usuario, contraseña, Como, Donde, Palabra from login');
qry1.SQL.Add(' where usuario = "'+ edtusuario.Text +'" ');
qry1.Open;
if Length(edtcontrasena.Text)>7 then
begin
if  ((ds2.DataSet.FieldValues ['Usuario'])= edtusuario.Text)and((ds2.DataSet.FieldValues['Como'])= edtcomo.Text)and ((ds2.DataSet.FieldValues['Donde'])=  cbbDonde.Text) and ((ds2.DataSet.FieldValues['Palabra'])= edtpalabra.Text) then
begin
cmd1.CommandText := 'update login set Contraseña= '+ edtcontrasena.Text +' where usuario = '#39+ edtusuario.Text +#39'';
cmd1.Execute;
ShowMessage('Contraseña Actualizada');
edtusuario.Clear;
edtcontrasena.Clear;
edtcontrasena1.Clear;
edtcomo.Clear;
cbbDonde.ItemIndex:=-1;
edtpalabra.Clear;
edtusuario.SetFocus;
 end else
 begin
  ShowMessage('Esta las respuestas no Coinciden');
  Exit;
end;
end else
begin
  ShowMessage('La Contraseña Debe Tener un Minímo de 8 Caracteres');
  Exit;
end;
  end;

procedure TForm8.btn1Click(Sender: TObject);
var Dialogo:Integer;
begin
if (Form3.edt5.Text='') then
begin
if (edtcontrasena1.Text<>'')or(edtcontrasena.Text<>'')or(edtusuario.Text<>'')or(edtcomo.Text<>'')or(cbbDonde.ItemIndex<>-1)or(edtpalabra.Text<>'')then
begin
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Salir Sin Cambiar la Contraseña?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
 edtusuario.Clear;
edtcontrasena.Clear;
edtcontrasena1.Clear;
edtcomo.Clear;
cbbDonde.ItemIndex:=-1;
edtpalabra.Clear;
 Form8.Hide;
form3.show;
  end;
  if Dialogo = mrno    then
  begin
ShowMessage('Debe llenar Todos Los Campos');
Exit;
  end;
 end;
end
 else
if (edtcontrasena1.Text<>'')or(edtcontrasena.Text<>'')or(edtusuario.Text<>'')or(edtcomo.Text<>'')or(cbbDonde.ItemIndex<>-1)or(edtpalabra.Text<>'') then
 begin
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Sin Cambiar la Contraseña?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
 Form8.Hide;
form4.show;
edtusuario.Clear;
edtcontrasena.Clear;
edtcontrasena1.Clear;
edtcomo.Clear;
cbbDonde.ItemIndex:=-1;
edtpalabra.Clear;
  end;
  if Dialogo = mrno    then
  begin
ShowMessage('Debe llenar Todos Los Campos');
Exit;
  end;
 end;

 if (Form3.edt5.Text='') then
 begin
 if(edtcontrasena1.Text='')and(edtcontrasena.Text='')and(edtusuario.Text='')and(edtcomo.Text='')and(cbbDonde.ItemIndex=-1)and(edtpalabra.Text='') then
 begin
 Form8.Hide;
form3.show;
 end;

 end else
 begin
   Form8.Hide;
form4.show;
edtusuario.Clear;
edtcontrasena.Clear;
edtcontrasena1.Clear;
edtcomo.Clear;
cbbDonde.ItemIndex:=-1;
edtpalabra.Clear;
 end;
 end;
procedure TForm8.edtusuarioKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm8.edtcomoKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm8.edtdondeKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm8.btn4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 edtcontrasena.PasswordChar:=#0;
edtcontrasena1.PasswordChar:=#0;
end;

procedure TForm8.btn4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 edtcontrasena.PasswordChar:='*';
edtcontrasena1.PasswordChar:='*';
end;

procedure TForm8.btn5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
edtpalabra.PasswordChar:=#0;
end;

procedure TForm8.btn5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
edtpalabra.PasswordChar:='*';
end;

end.
