unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.pngimage,mmsystem, Vcl.Menus, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    LB: TListBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    img: TImageList;
    ToolButton4: TToolButton;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Usuzdjcie1: TMenuItem;
    Dodajzdjecie1: TMenuItem;
    OPD: TOpenPictureDialog;
    ToolButton5: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Dodajzdjecie1Click(Sender: TObject);
    procedure Usuzdjcie1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
  ch:boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses f_2, Unit3;

procedure TForm1.Dodajzdjecie1Click(Sender: TObject);
begin
//OPD - OpenPictureDialog
If OPD.Execute then
   Image1.Picture.LoadFromFile(OPD.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
sndPlaySound('zwuk.wav',SND_ASYNC);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
LB.Items.LoadFromFile(OpenDialog1.FileName,TEncoding.UTF8);


end;

procedure TForm1.ToolButton2Click(Sender: TObject);
var
i,kol_user,wynik:Integer;
r:integer;


begin
if LB.count = 0 then
begin
  ch:=False;
  r:=MessageDlg('Załaduj plik',mtWarning,[mbYes,mbCancel],0); case r of
  mrYes:
  begin
   if OpenDialog1.Execute then
   LB.Items.LoadFromFile(OpenDialog1.FileName,TEncoding.UTF8);
  end;
  else
 MessageDlg('Dane nie załadowane',mtError,[mbOk],0);
 end;
end;
if LB.count > 0   then
 begin
  ch:=True;
  kol_user:=LB.Count;
     for i := 1 to 1 do
  begin
    wynik:= 1 + Random(kol_user); //

   ShowMessage('Konkurs wygrywa: '+(LB.Items.Strings[(wynik)]));
//
        Edit1.text:=(LB.Items.Strings[(wynik)]);
  end;
 end
 else
//     MessageDlg('Dane nie są załadowane',mtError,[mbOk],0);
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
LB.Items.Delete(LB.ItemIndex);
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
LB.Clear;
Edit1.Clear;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.Usuzdjcie1Click(Sender: TObject);
begin
  Image1.Picture.Bitmap := nil;
end;

end.
