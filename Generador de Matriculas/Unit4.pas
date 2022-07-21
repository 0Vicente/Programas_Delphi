unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    btn1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1, Unit5;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form2.Show;
form3.hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form1.Close;
form2.Close;
form3.Close;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('Select nombre, apellido, matricula, seccion from testudiantes');
adoquery1.SQL.Add(' where nombre like ' +quotedstr('%' + edit1.Text + '%') + ' ');
adoquery1.Open;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
form4.qckrp1.Preview;
end;

end.
