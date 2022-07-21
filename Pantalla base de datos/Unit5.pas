unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, Grids, DBGrids, ADODB;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    edtcedula: TEdit;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    lbl4: TLabel;
    edt3: TEdit;
    lbl5: TLabel;
    edt4: TEdit;
    img1: TImage;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    ds1: TDataSource;
    con1: TADOConnection;
    qry1: TADOQuery;
    lbl7: TLabel;
    lbl8: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cmd1: TADOCommand;
    cmd2: TADOCommand;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4, Unit2;

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
Form5.Hide;
form4.Show;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
Form2.edt1.Clear;
Form5.Hide;
form2.show;
Form2.qry1.Close;
Form2.qry1.SQL.Clear;
edt2.Clear;
edt1.Clear;
edt3.Clear;
edt4.Clear;
edtcedula.Clear;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select codsoldado, nombre_s, Apellido_s, Ubicacion_c, Actividad from soldado inner join relacion_servicio_soldado on codsoldado=codsoldado1 inner join servicios on codservicios1=codservicios inner join cuartel on codcuartel1=codcuartel');
qry1.SQL.Add(' where Codsoldado like ' +quotedstr('%' + edtcedula.Text + '%') + '  ');
qry1.Open;
edt3.Text := ds1.DataSet.FieldValues ['Ubicacion_c'];
edt1.Text := ds1.DataSet.FieldValues['Nombre_s'];
edt2.Text := ds1.DataSet.FieldValues['Apellido_s'];
edt4.Text := ds1.DataSet.FieldValues['Actividad'];
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
cmd1.CommandText := 'update soldado set Codcuartel1= '+cbb1.Text+' where codsoldado = '#39+edtcedula.Text+#39'';
cmd1.Execute;
cmd2.CommandText := 'update relacion_servicio_soldado set CodServicios1= '+cbb2.Text+' where codsoldado1 = '#39+edtcedula.Text+#39'';
cmd2.Execute;
ShowMessage('Servicio Actualizado');
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
qry1.SQL.Text := 'select Codservicios from servicios';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbb2.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;

qry1.SQL.Text := 'select Codcuartel from Cuartel';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbb1.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;
end;

end.
