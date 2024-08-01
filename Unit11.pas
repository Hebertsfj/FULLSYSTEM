unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm11.BitBtn1Click(Sender: TObject);
var P,A,I : real;

begin
P:=strtofloat(dbedit4.Text);
A:=strtofloat(dbedit5.Text);


I:=P/(A*A);

dbedit6.Text:=  formatfloat('0.00',I);
if (I >40) then
begin
showmessage('OBESIDADE MÒRBIDA');
end
else if (I <=17) then
begin
showmessage('MUITO ABIXO DO PESO');
end
else if (I >17) and (I <18) then
begin
showmessage('ABAIXO DO PESO');
end
 else if (I >18) and (I <25) then
 begin
 showmessage('PESO NORMAL');
 end
 else if (I >25) and (I <30) then
 begin
 showmessage('OBESIDADE GRAU I');
 end
 else if (I >30) and (I <35) then
 begin
 showmessage('OBESIDADE GRAU SEVERA')
end;
end;


procedure TForm11.BitBtn2Click(Sender: TObject);
begin
Form3.Show;
form11.Visible:=false;
end;

procedure TForm11.Button1Click(Sender: TObject);
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
SQL.Add('Select * from tbIMC where nome LIKE' + QuotedStr('%' + consulta + '%'));
Open;
end;
end;

end;

procedure TForm11.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels [0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
statusbar1.Panels [2].Text:='FullSystem';
end;

end.
