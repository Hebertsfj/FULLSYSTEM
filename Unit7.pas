unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
form3.Show;
form7.Visible:=false;
end;

procedure TForm7.Button1Click(Sender: TObject);
var
consulta : string;
BEGIN
if ( (edit1.Text <>'') ) then
Begin
consulta:= edit1.Text;
with ADOQuery1  do
begin
Close;
SQL.Clear;
SQL.Add('Select * from tbterceiros where nome LIKE' + QuotedStr('%' + consulta + '%'));
Open;
end;
end;

end;
procedure TForm7.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels [0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
statusbar1.Panels [2].Text:='FullSystem';
end;

end.
