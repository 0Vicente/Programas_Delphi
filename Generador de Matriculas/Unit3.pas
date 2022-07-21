unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
