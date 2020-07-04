unit f_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tlogin = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    procedure FormResize(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Label2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;


implementation

{$R *.dfm}

uses c_data, f_main;

procedure Tlogin.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  data :Clogin;
begin
  if Key = #13 then
  begin

    data.acceso(Edit1.Text, Edit2.Text);

    if  usuario.resultado = True then
    begin
     main.Label2.Caption := usuario.nombre;
     main.CategoryPanel3.Collapsed := false;
     Close;
    end
    else
    begin
      ShowMessage('Datos Incorrectos');
      Edit1.Clear;
      Edit2.Clear;
      Edit1.SetFocus;
    end;
  end;
end;

procedure Tlogin.FormResize(Sender: TObject);
begin
  Panel1.Left := (login.Width  div 2) - (Panel1.Width div 2); // asi va al centro horizontal
  Panel1.Top := (login.Height  div 2) - (Panel1.Height div 2);
end;

procedure Tlogin.FormShow(Sender: TObject);
begin
  main.Show;
end;

procedure Tlogin.Label2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
