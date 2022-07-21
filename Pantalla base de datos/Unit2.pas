unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    img1: TImage;
    edt1: TEdit;
    lblApellido: TLabel;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TADOConnection;
    qry1: TADOQuery;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cbb1: TComboBox;
    lbl2: TLabel;
    lblNombre: TLabel;
    lblCedula: TLabel;
    qry2: TADOQuery;
    ds2: TDataSource;
    lbl1: TLabel;
    cbb2: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit4, Unit1, Unit3, Unit5, Unit6, Unit10;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
ds1.Enabled:=False;
edt1.Clear;
cbb1.ItemIndex:=0;
Form2.Hide;
form4.show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
ds1.Enabled:=False;
edt1.Clear;
cbb1.ItemIndex:=0;
Form2.Hide;
form3.Show;
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


procedure TForm2.cbb1Change(Sender: TObject);
begin
if cbb1.ItemIndex=0 then
begin
lblApellido.Visible:=True;
lblNombre.Visible:=False;
lblCedula.Visible:=False;
end else
begin
lblApellido.Visible:= False;
end;

if cbb1.ItemIndex=1 then
begin
 lblNombre.Visible:=True;
  lblCedula.Visible:=False;
  lblApellido.Visible:= False;
 end
else lblNombre.Visible:=False;

if cbb1.ItemIndex=2 then
begin
lblCedula.Visible:=True;
lblApellido.Visible:= False;
lblNombre.Visible:=False;
end
else lblCedula.Visible:=False;

  end;

  procedure TForm2.dbgrd1DblClick(Sender: TObject);
begin
if (ds1.Enabled=False) then ds1.Enabled:=True;
if cbb2.ItemIndex=-1 then
begin
  ShowMessage('Debes Elegir Una Opción a Seguir');
  Exit;
end;
if  cbb2.ItemIndex=0 then
begin
  if cbb1.ItemIndex=0 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Apellido_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
form6.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
Form6.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
form6.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form6.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form6.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form6.show;

end;

   if cbb1.ItemIndex=2 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Codsoldado like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
form6.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
Form6.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
form6.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form6.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form6.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form6.show;
end;

  if cbb1.ItemIndex=1 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Nombre_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
form6.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
Form6.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
form6.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form6.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form6.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form6.show;
end;
 end;

if  cbb2.ItemIndex=1 then
begin
  if cbb1.ItemIndex=0 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Apellido_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
Form5.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
form5.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
Form5.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form5.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form5.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form5.Show;
Form5.edt5.Text:=edt1.Text;
end;

   if cbb1.ItemIndex=2 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Codsoldado like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
Form5.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
form5.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
Form5.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form5.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form5.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form5.Show;
end;

  if cbb1.ItemIndex=1 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Nombre_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
Form5.edtcedula.Text:= ds1.DataSet.FieldValues ['codsoldado'];
form5.edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
Form5.edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
Form5.edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
Form5.edt4.Text := ds1.DataSet.FieldValues['Actividad'];
form2.Hide;
form5.Show;
end;
 end;
end;

procedure TForm2.edt1Change(Sender: TObject);
begin
if (ds1.Enabled=False) then ds1.Enabled:=True;
  if cbb1.ItemIndex=0 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Apellido_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
end;
   if cbb1.ItemIndex=2 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Codsoldado like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
end;
  if cbb1.ItemIndex=1 then
  begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add('select Codsoldado, Nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Nombre_s like ' +quotedstr('%' + edt1.Text + '%') + ' ');
qry1.open;
end;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
form10.qckrp1.Preview;
end;

end.
