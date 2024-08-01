unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses Unit14, Unit3, Unit2;

procedure TForm15.BitBtn1Click(Sender: TObject);
begin
form3.show;
form15.visible:=false;
end;

procedure TForm15.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
statusbar1.Panels [2].Text:='FullSystem';
end;

end.
