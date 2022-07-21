unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, DB, ADODB, DBCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edtNombre: TEdit;
    edtApellido: TEdit;
    edtDireccion: TEdit;
    edtTelefono: TEdit;
    edtFechaingreso: TEdit;
    img1: TImage;
    btn1: TBitBtn;
    cmd1: TADOCommand;
    ds1: TDataSource;
    tbl1: TADOTable;
    lbl10: TLabel;
    lbl11: TLabel;
    pnl1: TPanel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edtFecha_de_Nac: TEdit;
    lbl16: TLabel;
    edtCodsoldado: TEdit;
    tbl2: TADOTable;
    btn2: TButton;
    cmd2: TADOCommand;
    btn3: TButton;
    btn4: TButton;
    cbbcompania: TComboBox;
    qry1: TADOQuery;
    cbbcuerpo: TComboBox;
    cbbservicios: TComboBox;
    cbbcuartel: TComboBox;
    cbbRango: TComboBox;
    cbbLugar_de_Nac_s: TComboBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    qry2: TADOQuery;
    ds2: TDataSource;
    cbbprofesion: TComboBox;
    edtcompania: TEdit;
    edtcuartel: TEdit;
    edtcuerpo: TEdit;
    edtservicio: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure create(Sender: TObject);
    procedure edtCodsoldadoChange(Sender: TObject);
    procedure KeyPress1(Sender: TObject; var Key: Char);
    procedure edtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure edtApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure cbbcompaniaChange(Sender: TObject);
    procedure cbbcuerpoChange(Sender: TObject);
    procedure cbbcuartelChange(Sender: TObject);
    procedure cbbserviciosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit3, Unit5;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var dialogo:Integer;
begin
  if (cbbRango.ItemIndex<>-1)or(Length(edtCodsoldado.Text)=13)or(cbbcompania.ItemIndex<>-1)or(cbbcuerpo.ItemIndex<>-1)or(cbbcuartel.ItemIndex<>-1)or(cbbLugar_de_Nac_s.ItemIndex<>-1)or(edtNombre.Text<>'')or(edtApellido.Text<>'')or(edtDireccion.Text<>'')or(edtTelefono.Text<>'')or(cbbprofesion.ItemIndex<>-1) then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('�Desea Salir sin Terminar de Agregar este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;
cbbLugar_de_Nac_s.Text :='';
edtFechaingreso.Text :='';
cbbRango.Text :='';
edtfecha_de_nac.Text :='';
cbbcuerpo.Text :='';
cbbcompania.Text :='';
cbbcuartel.Text :='';
edtcodsoldado.Text :='';
cbbservicios.Text :='';
cbbservicios.Visible:=False;
form1.Hide;
form2.show;
form2.ds1.Enabled:=False;
  end;
    if Dialogo = mrno    then
  begin
ShowMessage('Termine de Llenar Todos Los Campos');
Exit;
  end;

 end else
 begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
form1.Hide;
form2.show;
form2.ds1.Enabled:=False;
 end;

end;

procedure TForm1.btn2Click(Sender: TObject);
var tmp1, tmp2 : string;
var Dialogo :Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select codsoldado from soldado ');
qry2.SQL.Add(' where codsoldado = "'+ edtCodsoldado.Text +'" ');
qry2.Open;
 if  (ds2.DataSet.FieldValues['codsoldado']) = edtCodsoldado.Text then
 begin
   ShowMessage('Este soldado Fue Registrado');
    // Muestra el dialogo
  Dialogo := messagedlg('�Desea Actualizar el Servicio?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
Form1.Hide;
form5.show;
Form5.edtcedula.Text:=copy(edtCodsoldado.Text,1,20);
  end;
    if Dialogo = mrno    then
  begin
ShowMessage('Termine de Llenar Todos Los Campos');
edtCodsoldado.Clear;
edtCodsoldado.SetFocus;
Exit;
  end;
 end;


  if cbbservicios.Visible=True then
  if (cbbservicios.ItemIndex=-1) or(cbbRango.ItemIndex=-1)or(Length(edtCodsoldado.Text)<>13)or(cbbcompania.ItemIndex=-1)or(cbbcuerpo.ItemIndex=-1)or(cbbcuartel.ItemIndex=-1)or(cbbLugar_de_Nac_s.ItemIndex=-1)or(edtNombre.Text='')or(edtApellido.Text='')or(edtDireccion.Text='')or(edtTelefono.Text='')or(cbbprofesion.ItemIndex=-1) then
 begin
   ShowMessage('Debe llenar Todos Los Campos');
   Exit;
 end else
  begin
    tmp1:= ShortDateFormat;
  try
    ShortDateFormat:= 'yyyy-MM-dd';
    edtFechaingreso.Text:= DateToStr(dtp1.DateTime);

     finally
  end;

  tmp2:= ShortDateFormat;
  try
    ShortDateFormat:= 'yyyy-MM-dd';
    edtFecha_de_Nac.Text := DateToStr(dtp2.DateTime);

     finally
  end;

cmd1.CommandText := 'insert into soldado (Nombre_s, Apellido_s, Direccion_s, Telefono_s, Profesion_s, Lugar_de_Nac_s, Fecha_de_ingreso_s, Rango_s, fecha_Nac_s, CodCuerpo1, Codcompa�ia1, Codcuartel1, Codsoldado) values ("'+edtnombre.Text+'", "'+edtApellido.Text+'", "'+edtdireccion.Text+'", "'+edttelefono.Text+'", "'+cbbprofesion.Text+'", "'+cbbLugar_de_Nac_s.Text+'", "'+edtFechaingreso.Text+'", "'+cbbrango.Text+'", "'+edtfecha_de_nac.Text+'", "'+cbbcuerpo.Text+'", "'+cbbcompania.Text+'", "'+cbbcuartel.Text+'", "'+edtcodsoldado.Text+'")';
cmd2.CommandText :=  'insert into relacion_servicio_soldado (Codsoldado1, CodServicios1) values ("'+edtcodsoldado.Text+'", "'+cbbservicios.Text+'")';
cmd1.Execute;
cmd2.Execute;
tbl1.Requery();
tbl2.Requery();
showmessage('Datos Guardados Satisfactoriamente');
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
edtservicio.Visible:=False;
  end
  else
  begin

    // Muestra el dialogo
  Dialogo := messagedlg('�Desea Agregar un Servicio Para Este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
  cbbservicios.Visible:=True;
  edtservicio.Visible:=True;
  end;
  if Dialogo = mrno    then
  begin
    if(cbbRango.ItemIndex=-1)or(Length(edtCodsoldado.Text)<>13)or(cbbcompania.ItemIndex=-1)or(cbbcuerpo.ItemIndex=-1)or(cbbcuartel.ItemIndex=-1)or(cbbLugar_de_Nac_s.ItemIndex=-1)or(edtNombre.Text='')or(edtApellido.Text='')or(edtDireccion.Text='')or(edtTelefono.Text='')or(cbbprofesion.ItemIndex=-1) then
 begin
   ShowMessage('Debe llenar Todos Los Campos');
   Exit;
 end else
   tmp1:= ShortDateFormat;
  try
    ShortDateFormat:= 'yyyy-MM-dd';
    edtFechaingreso.Text:= DateToStr(dtp1.DateTime);

     finally
  end;

  tmp2:= ShortDateFormat;
  try
    ShortDateFormat:= 'yyyy-MM-dd';
    edtFecha_de_Nac.Text := DateToStr(dtp2.DateTime);

     finally
  end;
   cmd1.CommandText := 'insert into soldado (Nombre_s, Apellido_s, Direccion_s, Telefono_s, Profesion_s, Lugar_de_Nac_s, Fecha_de_ingreso_s, Rango_s, fecha_Nac_s, CodCuerpo1, Codcompa�ia1, Codcuartel1, Codsoldado) values ("'+edtnombre.Text+'", "'+edtApellido.Text+'", "'+edtdireccion.Text+'", "'+edttelefono.Text+'", "'+cbbprofesion.Text+'", "'+cbbLugar_de_Nac_s.Text+'", "'+edtFechaingreso.Text+'", "'+cbbrango.Text+'", "'+edtfecha_de_nac.Text+'", "'+cbbcuerpo.Text+'", "'+cbbcompania.Text+'", "'+cbbcuartel.Text+'", "'+edtcodsoldado.Text+'")';
cmd1.Execute;
tbl1.Requery();
showmessage('Datos Guardados Satisfactoriamente');
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
  end
   end;

    end;


procedure TForm1.btn3Click(Sender: TObject);
var dialogo:Integer;
begin  if (cbbRango.ItemIndex<>-1)or(Length(edtCodsoldado.Text)=13)or(cbbcompania.ItemIndex<>-1)or(cbbcuerpo.ItemIndex<>-1)or(cbbcuartel.ItemIndex<>-1)or(cbbLugar_de_Nac_s.ItemIndex<>-1)or(edtNombre.Text<>'')or(edtApellido.Text<>'')or(edtDireccion.Text<>'')or(edtTelefono.Text<>'')or(cbbprofesion.ItemIndex<>-1) then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('�Desea Salir sin Terminar de Agregar este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
Form1.Hide;
form4.show;
  end;
    if Dialogo = mrno    then
  begin
ShowMessage('Termine de Llenar Todos Los Campos');
Exit;
  end;

 end else
 begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
cbbprofesion.ItemIndex:=-1;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
Form1.Hide;
form4.show;
end;
 end;

procedure TForm1.btn4Click(Sender: TObject);
var Dialogo:Integer;
begin
if (cbbRango.ItemIndex<>-1)or(Length(edtCodsoldado.Text)=13)or(cbbcompania.ItemIndex<>-1)or(cbbcuerpo.ItemIndex<>-1)or(cbbcuartel.ItemIndex<>-1)or(cbbLugar_de_Nac_s.ItemIndex<>-1)or(edtNombre.Text<>'')or(edtApellido.Text<>'')or(edtDireccion.Text<>'')or(edtTelefono.Text<>'')or(cbbprofesion.ItemIndex<>-1) then
  begin
  // Muestra el dialogo
  Dialogo := messagedlg('�Desea Salir sin Terminar de Agregar este Soldado?',mtCustom,
                              [mbYes,mbNo], 0);

  // Aqui hace lo que quieres que haga
  if dialogo = mrYes    then
  begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
edttelefono.Text :='';
cbbprofesion.ItemIndex:=-1;;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
 form1.Hide;
form3.Show;
  end;
    if Dialogo = mrno    then
  begin
ShowMessage('Termine de Llenar Todos Los Campos');
Exit;
  end;

 end else
 begin
edtnombre.Text :='';
edtApellido.Text :='';
edtdireccion.Text :='';
edttelefono.Text :='';
edtcuartel.Clear;
edtcompania.Clear;
edtservicio.Clear;
edtcuerpo.Clear;
cbbprofesion.ItemIndex:=-1;;
cbbLugar_de_Nac_s.ItemIndex:=-1;
edtFechaingreso.Text :='';
cbbRango.ItemIndex:=-1;
edtfecha_de_nac.Text :='';
cbbcuerpo.ItemIndex:=-1;
cbbcompania.ItemIndex:=-1;
cbbcuartel.ItemIndex:=-1;
edtcodsoldado.Text :='';
cbbservicios.ItemIndex:=-1;
cbbservicios.Visible:=False;
 form1.Hide;
form3.Show;
 end;
end;

procedure TForm1.create(Sender: TObject);
begin
qry1.SQL.Text := 'select Codcompa�ia from Compa�ia';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbcompania.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;

qry1.SQL.Text := 'select Codcuartel from Cuartel';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbcuartel.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;

  qry1.SQL.Text := 'select Codcuerpo from Cuerpo_del_ejercito';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbcuerpo.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;

qry1.SQL.Text := 'select Codservicios from servicios';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbservicios.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;
end;

procedure TForm1.edtCodsoldadoChange(Sender: TObject);
begin
 if Length(edtCodsoldado.Text)=13 then
 begin
edtNombre.Visible:= True;
edtApellido.Visible:=True;
edtDireccion.Visible:=True;
edtTelefono.Visible:=True;
dtp2.Visible:=True;
cbbprofesion.Visible:=True;
dtp1.Visible:=True;
cbbRango.Visible:=True;
cbbLugar_de_Nac_s.Visible:=True;
cbbcompania.Visible:=True;
cbbcuerpo.Visible:=True;
cbbcuartel.Visible:=True;
edtcuartel.Visible :=True;
edtcuerpo.Visible :=True;
edtcompania.Visible :=True;
 end else
        begin
edtNombre.Visible:= False;
edtApellido.Visible:=False;
edtDireccion.Visible:=False;
edtTelefono.Visible:=False;
dtp2.Visible:=False;
cbbprofesion.Visible:=False;
dtp1.Visible:=False;
cbbRango.Visible:=False;
cbbLugar_de_Nac_s.Visible:=False;
cbbcompania.Visible:=False;
cbbcuerpo.Visible:=False;
cbbcuartel.Visible:=False;
 end;
       end;
procedure TForm1.KeyPress1(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.','-',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite N�meros')
    end;
end;

procedure TForm1.edtNombreKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm1.edtApellidoKeyPress(Sender: TObject; var Key: Char);
begin
with Sender as TEdit do
         if (Text = '')
         or (Text[SelStart] = ' ')
         or (SelLength = Length(Text)) then
            if Key in ['a'..'z'] then  Key := UpCase(Key);
end;

procedure TForm1.cbbcompaniaChange(Sender: TObject);
begin
qry2.SQL.Clear;
qry2.SQL.Add('select * from compa�ia ');
qry2.SQL.Add(' where codcompa�ia = "'+ cbbcompania.Text +'" ');
qry2.Open;
if  (ds2.DataSet.FieldValues['codcompa�ia']) = cbbcompania.Text then
begin
 edtcompania.Text := ds2.DataSet.FieldValues['actividad'];
end;
end;
procedure TForm1.cbbcuerpoChange(Sender: TObject);
begin
qry2.SQL.Clear;
qry2.SQL.Add('select * from cuerpo_del_ejercito');
qry2.SQL.Add(' where codcuerpo = "'+ cbbcuerpo.Text +'" ');
qry2.Open;
if  (ds2.DataSet.FieldValues['codcuerpo']) = cbbcuerpo.Text then
begin
 edtcuerpo.Text := ds2.DataSet.FieldValues['denominacion'];
end;
end;

procedure TForm1.cbbcuartelChange(Sender: TObject);
begin
qry2.SQL.Clear;
qry2.SQL.Add('select * from cuartel');
qry2.SQL.Add(' where codcuartel = "'+ cbbcuartel.Text +'" ');
qry2.Open;
if  (ds2.DataSet.FieldValues['codcuartel']) = cbbcuartel.Text then
begin
 edtcuartel.Text := ds2.DataSet.FieldValues['nombre_c'];
end;
end;



procedure TForm1.cbbserviciosChange(Sender: TObject);
begin
begin
qry2.SQL.Clear;
qry2.SQL.Add('select * from servicios ');
qry2.SQL.Add(' where codservicios = "'+ cbbservicios.Text +'" ');
qry2.Open;
if  (ds2.DataSet.FieldValues['codservicios']) = cbbservicios.Text then
begin
 edtservicio.Text := ds2.DataSet.FieldValues['actividad'];
end;
end;
end;

end.
