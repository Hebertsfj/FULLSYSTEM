unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm6.BitBtn1Click(Sender: TObject);
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
SQL.Add('Select * from tbfuncionario where nome LIKE' + QuotedStr('%' + consulta + '%'));
Open;
end;
end;

end;
procedure TForm6.BitBtn2Click(Sender: TObject);
begin
form3.Show;
form6.Visible:=false;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels [0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
statusbar1.Panels [2].Text:='FullSystem';
end;

end.
