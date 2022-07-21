unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB, jpeg, DBTables, StdCtrls;

type
  TForm10 = class(TForm)
    qckrp1: TQuickRep;
    qrbnd1: TQRBand;
    qrbnd2: TQRBand;
    qrbnd4: TQRBand;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrsysdt1: TQRSysData;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl8: TQRLabel;
    qrdbtxtNombre_s: TQRDBText;
    qrdbtxtApellido_s: TQRDBText;
    qrdbtxtRango_s: TQRDBText;
    qrdbtxtLugar_de_Nac_s: TQRDBText;
    ds1: TDataSource;
    tbl1: TADOTable;
    qrbnd3: TQRBand;
    qrsysdt2: TQRSysData;
    qrlbl6: TQRLabel;
    qrsysdt3: TQRSysData;
    img2: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

end.
