unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit10, Unit3;

procedure TForm5.Button1Click(Sender: TObject);
begin
form3.Show;
form5.Visible:=false;
end;

procedure TForm5.Button2Click(Sender: TObject);
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
SQL.Add('Select * from tbaluno where nome LIKE' + QuotedStr('%' + consulta + '%'));
Open;
end;
end;

end;
procedure TForm5.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels [0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
statusbar1.Panels [2].Text:='FullSystem';
end;

end.
