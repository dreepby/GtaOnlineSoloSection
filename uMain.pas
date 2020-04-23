unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, VCLTee.TeCanvas, cxButtons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ShellApi;

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
var
  Dir: String;
begin
  Dir := ExtractFilePath(Application.ExeName);

  ShellExecute(Handle, nil, PChar(Dir + 'src\suspend.exe'), 'GTA5.exe', PChar(Dir + 'src\'), SW_SHOWNORMAL);
  Sleep(10000);
  ShellExecute(Handle, nil, PChar(Dir + 'src\suspend.exe'), '-r GTA5.exe', PChar(Dir + 'src\'), SW_SHOWNORMAL);
  Sleep(1000);
  Application.Terminate;
end;

end.
