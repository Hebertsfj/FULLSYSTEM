unit Unit10;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id: TAutoIncField;
    ADOQuery1login: TWideStringField;
    ADOQuery1senha: TWideStringField;
    ADOQuery1nivel: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit2, Unit9;

{$R *.dfm}

end.
