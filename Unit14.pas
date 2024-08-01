unit Unit14;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule14 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1login: TWideStringField;
    ADOQuery1senha: TWideStringField;
    ADOQuery1nivel: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule14: TDataModule14;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
