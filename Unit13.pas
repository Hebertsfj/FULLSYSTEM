unit Unit13;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule13 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1matricula: TWideStringField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1pescoço: TWideStringField;
    ADOQuery1ombro: TWideStringField;
    ADOQuery1braçorelaxado: TWideStringField;
    ADOQuery1braçocontraido: TWideStringField;
    ADOQuery1antebraço: TWideStringField;
    ADOQuery1tóraxrelaxado: TWideStringField;
    ADOQuery1tóraxinspirado: TWideStringField;
    ADOQuery1cintura: TWideStringField;
    ADOQuery1abdome: TWideStringField;
    ADOQuery1quadril: TWideStringField;
    ADOQuery1coxa: TWideStringField;
    ADOQuery1panturrilha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule13: TDataModule13;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
