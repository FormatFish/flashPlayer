unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShockwaveFlashObjects_TLB, Menus, ExtCtrls, OleCtrls, ComCtrls,
  WinSkinData;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    TrackBar1: TTrackBar;
    ShockwaveFlash1: TShockwaveFlash;
    timer1: TTimer;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    SkinData1: TSkinData;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure timer1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
   begin
     if OpenDialog1.FileName <>'' then
     begin
       ShockwaveFlash1.Movie:=OpenDialog1.FileName;
       timer1.Enabled:=true;
       TrackBar1.Max:=ShockwaveFlash1.TotalFrames;
       ShockwaveFlash1.Play;
     end;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
timer1.Enabled:=False;
end;

procedure TForm1.timer1Timer(Sender: TObject);
begin
    TrackBar1.Position:=TrackBar1.Position+1;//ÊÂ¼þÏìÓ¦
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  ShockwaveFlash1.Forward;
  ShockwaveFlash1.Play;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  ShockwaveFlash1.Back;
  ShockwaveFlash1.Play;
end;

procedure TForm1.N7Click(Sender: TObject);
begin

   ShockwaveFlash1.Stop;
   n7.Checked:=True;

end;

procedure TForm1.N8Click(Sender: TObject);
begin
   ShockwaveFlash1.Play;
   N7.Checked:=False;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  ShockwaveFlash1.Rewind;
  ShockwaveFlash1.Play;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
   close;
end;

end.
