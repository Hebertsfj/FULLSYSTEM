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
    ADOQuery1pesco�o: TWideStringField;
    ADOQuery1ombro: TWideStringField;
    ADOQuery1bra�orelaxado: TWideStringField;
    ADOQuery1bra�ocontraido: TWideStringField;
    ADOQuery1antebra�o: TWideStringField;
    ADOQuery1t�raxrelaxado: TWideStringField;
    ADOQuery1t�raxinspirado: TWideStringField;
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
