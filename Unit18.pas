unit Unit18;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule18 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule18: TDataModule18;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit17;

{$R *.dfm}

end.
