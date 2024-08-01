unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit10, Unit9;

procedure TForm2.Button1Click(Sender: TObject);
begin
dm.ADOQuery1.Close;
dm.ADOQuery1.SQL.Text:='select * from tblogin where login ="'+edit1.Text+'" and senha = "'+edit2.Text+'"';
dm.ADOQuery1.Open;
if dm.ADOQuery1.RecordCount >0  then
begin
form3.Show;
form2.Visible:=false;
end
else
begin
showmessage('login ou senha incorretos');
edit1.SetFocus;
end;
  end;







procedure TForm2.Button2Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
if (dm.ADOQuery1nivel.value =1)then
begin
form3.Aluno1.Enabled:=true;
form3.Extras1.Enabled:=true;
form3.Login1.Enabled:=true;
form3.Avaliao1.Enabled:=true;
form3.StatusBar1.Panels [2].text :=('ADMINISTRADOR');
end
else
begin
if (dm.ADOQuery1nivel.Value  =0) then
form3.Aluno1.Enabled:=true;
form3.Extras1.Enabled:=true;
form3.Avaliao1.Enabled:=false;
form3.Login1.Enabled:=false;
form3.StatusBar1.Panels [2].Text :=('USUÁRIO COMUM');
end;
end;

end.

