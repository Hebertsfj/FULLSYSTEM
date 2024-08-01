unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    btncadastrar: TButton;
    Label1: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btncadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit10, Unit3, Unit2;

procedure TForm9.btncadastrarClick(Sender: TObject);
begin
form3.Show ;
form9.Visible:=false;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
if (dm.ADOQuery1nivel.Value=0)   then
begin
  btncadastrar.Enabled:=true;

  label1.Caption:='usuário comum';
  exit
  end
  else
  begin
  btncadastrar.Enabled:=true;
  label1.Caption:='adiministrador';
end;

end;

end.
