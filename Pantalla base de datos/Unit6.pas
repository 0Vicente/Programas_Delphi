unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB;

type
  TForm6 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    lbl6: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtcedula: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    ds1: TDataSource;
    con1: TADOConnection;
    qry1: TADOQuery;
    cmd1: TADOCommand;
    cmd2: TADOCommand;
    qry2: TADOQuery;
    ds2: TDataSource;
    edt5: TEdit;
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edtcedulaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit4, Unit3, Unit1, Unit5;

{$R *.dfm}

procedure TForm6.btn4Click(Sender: TObject);
var dialogo:Integer;
begin
qry1.SQL.Clear;
qry1.SQL.Add('select codsoldado, nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add('where codsoldado = "'+ edtcedula.Text +'" ');
qry1.Open;
if  (ds1.DataSet.FieldValues ['codsoldado'])= edtcedula.Text then
begin
edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
edt4.Text := ds1.DataSet.FieldValues['Actividad'];
 end else
 begin
  ShowMessage('Este Soldado no Esta Registrado');
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Agregar Este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
  Form3.Hide;
  form1.show;
  form1.edtCodsoldado.Text:=copy(edtcedula.Text,1,20);
  edtcedula.Clear;
  end;
  if Dialogo = mrno    then
  begin
ShowMessage('Introduzca otra Busqueda');
edtcedula.Clear;
edtcedula.SetFocus;
  end;
 end;

end;

procedure TForm6.btn2Click(Sender: TObject);
var dialogo:Integer;
begin
  if (Length(edtcedula.Text)=13)or(edt1.Text<>'')then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Salir sin Terminar de Actualizar este Servicio?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
Form2.edt1.Clear;
Form6.Hide;
form2.show;
Form2.qry1.Close;
Form2.qry1.SQL.Clear;
edtcedula.Clear;
Form2.edt1.SetFocus;
  end;

 end else
 begin
Form2.edt1.Clear;
Form6.Hide;
form2.show;
Form2.qry1.Close;
Form2.qry1.SQL.Clear;
edtcedula.Clear;
form2.edt1.SetFocus;
 end;

end;

procedure TForm6.btn1Click(Sender: TObject);
var Dialogo:Integer;
begin
  if Form2.edt1.Text='' then
  begin
  if (Length(edtcedula.Text)=13)or(edt1.Text<>'')then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Salir sin Terminar de Actualizar este Servicio?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
form6.Hide;
form4.show;
edtcedula.Clear;
  end;

 end else
 begin
form6.Hide;
form4.show;
edtcedula.Clear;
 end;
end else
  if (Length(edtcedula.Text)=13)or(edt1.Text<>'')then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Salir sin Terminar de Actualizar este Servicio?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
form6.Hide;
form2.Show;
edtcedula.Clear;
form2.edt1.Clear;
Form2.cbb2.ItemIndex:=-1;
  end;
end else
 begin
form6.Hide;
form2.Show;
edtcedula.Clear;
form2.edt1.Clear;
Form2.cbb2.ItemIndex:=-1;
 end;
 
end;

procedure TForm6.btn3Click(Sender: TObject);
var dialogo:Integer;
begin
if (edt1.Text='') then
  begin
     ShowMessage('Debe ejecutar la Búsqueda');
     Exit;
  end;

qry2.SQL.Clear;
qry2.SQL.Add('select codsoldado from soldado');
qry2.SQL.Add(' where codsoldado = "'+ edtcedula.Text +'" ');
qry2.Open;
if  (ds2.DataSet.FieldValues ['codsoldado'])= edtcedula.Text then
begin
cmd1.CommandText := 'delete from relacion_servicio_soldado where Codsoldado1= '#39+edtcedula.Text+#39'';
cmd1.Execute;
ShowMessage('Servicio Eliminado');
edtcedula.Clear;
edtcedula.SetFocus;
 end else
 begin
  ShowMessage('Este Soldado No Tiene Servicio Asignado');
  // Muestra el dialogo
  Dialogo := messagedlg('¿Desea Agregar Este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
  Form3.Hide;
  form1.show;
  form1.edtCodsoldado.Text:=copy(edtcedula.Text,1,20);
  edtcedula.Clear;
  end;
  if Dialogo = mrno    then
  begin
ShowMessage('Introduzca otra Busqueda');
edtcedula.Clear;
edtcedula.SetFocus;
  end;
 end;

end;

procedure TForm6.edtcedulaChange(Sender: TObject);
begin
if Length(edtcedula.Text)=13 then
begin
btn4.Enabled :=True;
btn3.Enabled := True;
end
else
begin
btn4.Enabled:=False;
btn3.Enabled := False;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;
  end;
end.
