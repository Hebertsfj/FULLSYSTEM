unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Aluno1: TMenuItem;
    Avaliao1: TMenuItem;
    Extras1: TMenuItem;
    Image1: TImage;
    Logoff1: TMenuItem;
    Login1: TMenuItem;
    Aluno2: TMenuItem;
    Avaliao2: TMenuItem;
    Agendamento1: TMenuItem;
    Medida1: TMenuItem;
    IMC1: TMenuItem;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Srie1: TMenuItem;
    SerieAluno1: TMenuItem;
    SrieFuncionrio1: TMenuItem;
    procedure Avaliao1Click(Sender: TObject);
    procedure Extras1Click(Sender: TObject);
    procedure Logoff1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure Aluno2Click(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure IMC1Click(Sender: TObject);
    procedure Medida1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SerieAluno1Click(Sender: TObject);
    procedure SrieFuncionrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit5, Unit6, Unit7, Unit8, Unit4, Unit2, Unit10, Unit9, Unit11, Unit12,
  Unit15, Unit13, Unit16, Unit17;

procedure TForm3.Agendamento1Click(Sender: TObject);
begin
form8.Show;
form3.Visible:=false;
end;

procedure TForm3.Aluno2Click(Sender: TObject);
begin
 form5.Show ;
form3.Visible:= false;
end;

procedure TForm3.Avaliao1Click(Sender: TObject);
begin
form6.Show ;
form3.Visible:=false;
end;

procedure TForm3.Extras1Click(Sender: TObject);
begin
form7.Show ;
form3.Visible:=false;
end;

procedure TForm3.IMC1Click(Sender: TObject);
begin
form11.Show;
form3.Enabled:=false
end;

procedure TForm3.Login1Click(Sender: TObject);
begin
form15.Show;
form3.Visible:=false;
begin

end;
end;
procedure TForm3.Logoff1Click(Sender: TObject);
begin
form3.Close;
form2.Show;
form2.Edit1.Clear;
form2.Edit2.Clear;

end;

procedure TForm3.Medida1Click(Sender: TObject);
begin
form12.Show;
end;

procedure TForm3.SerieAluno1Click(Sender: TObject);
begin
form3.Destroy;
Form16.Show;
end;

procedure TForm3.SrieFuncionrio1Click(Sender: TObject);
begin
Form3.Destroy;
form17.Show;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[0].Text:=''+formatdatetime ('hh:nn:ss',now);
statusbar1.Panels [1].Text:=''+formatdatetime('dddd, dd "de" mmm "de" yyy',now);
end;

end.
