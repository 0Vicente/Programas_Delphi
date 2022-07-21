unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB;

type
  TForm9 = class(TForm)
    img1: TImage;
    edtCedula: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbServicio: TComboBox;
    lbl4: TLabel;
    cbbubicacionservicio: TComboBox;
    btn1: TButton;
    btn2: TButton;
    ds1: TDataSource;
    qry1: TADOQuery;
    tbl1: TADOTable;
    cmd1: TADOCommand;
    ds2: TDataSource;
    cmd2: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
begin
qry1.SQL.Text := 'select Codservicios from servicios';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbServicio.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;

qry1.SQL.Text := 'select codcuartel from cuartel';
   qry1.Active := True;
   While not qry1.Eof do
   begin
      cbbubicacionservicio.Items.Add(qry1.Fields[0].Text);
       qry1.Next;
   end;
qry1.Active := False;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
cmd1.CommandText :=  'insert into relacion_servicio_soldado (Codsoldado1, CodServicios1) values ("'+ edtCedula.Text +'", "'+ cbbServicio.Text +'")';
cmd1.Execute;
tbl1.Requery();
cmd2.CommandText := 'update soldado set Codcuartel1= '+ cbbubicacionservicio.Text +' where codsoldado = '#39+ edtCedula.Text +#39'';
cmd2.Execute;
showmessage('Datos Guardados Satisfactoriamente');
edtCedula.Clear;
cbbServicio.ItemIndex:=-1;
cbbubicacionservicio.ItemIndex:=-1;
Form5.Show;
Form9.Hide;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
edtCedula.Clear;
cbbServicio.ItemIndex:=-1;
cbbubicacionservicio.ItemIndex:=-1;
Form9.Hide;
form5.Show;
end;
end.
