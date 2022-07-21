unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, DB, DBTables, QuickRpt, ExtCtrls, ADODB;

type
  TForm4 = class(TForm)
    qckrp1: TQuickRep;
    qrbnd3: TQRBand;
    qrlbl4: TQRLabel;
    qrbnd1: TQRBand;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrbnd2: TQRBand;
    ds1: TDataSource;
    qrbnd4: TQRBand;
    qrlbl1: TQRLabel;
    img1: TQRImage;
    tbl1: TADOTable;
    tbl1No: TIntegerField;
    tbl1Matricula: TStringField;
    tbl1Nombre: TStringField;
    tbl1Apellido: TStringField;
    tbl1Seccion: TStringField;
    qrsysdt1: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
