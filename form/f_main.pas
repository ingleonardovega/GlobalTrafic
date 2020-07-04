unit f_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Menus;

type
  Tmain = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    Image1: TImage;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    MainMenu1: TMainMenu;
    a1: TMenuItem;
    Timer1: TTimer;
    Button2: TButton;
    CategoryPanel4: TCategoryPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

uses f_login, f_cliente, f_recole_entrega, f_enlace, f_unidades_enlace,
  f_cotizaciones, f_unidades_propias, f_programaciones;


procedure Tmain.Button1Click(Sender: TObject);
begin
  if Self.MDIChildCount >= 1 then
  begin
    cliente.Close;
  end;
  Application.CreateForm(Tcliente, cliente);
end;

procedure Tmain.Button2Click(Sender: TObject);
begin
  if Self.MDIChildCount >= 1 then
  begin
    recole_entrega.Close;
  end;
  Application.CreateForm(Trecole_entrega, recole_entrega);
end;

procedure Tmain.Button3Click(Sender: TObject);
begin
   if Self.MDIChildCount >= 1 then
  begin
    enlace.Close;
  end;
  Application.CreateForm(Tenlace, enlace);
end;

procedure Tmain.Button4Click(Sender: TObject);
begin
  if Self.MDIChildCount >= 1 then
  begin
    alta_unidades_enlace.Close;
  end;
  Application.CreateForm(Talta_unidades_enlace, alta_unidades_enlace);
end;

procedure Tmain.Button5Click(Sender: TObject);
begin
  if Self.MDIChildCount >= 1 then
  begin
    cotizaciones.Close;
  end;
  Application.CreateForm(Tcotizaciones, cotizaciones);
end;

procedure Tmain.Button6Click(Sender: TObject);
begin
  if Self.MDIChildCount >= 1 then
  begin
    unidades_propias.Close;
  end;
  Application.CreateForm(Tunidades_propias, unidades_propias);
end;

procedure Tmain.Button7Click(Sender: TObject);
begin
   if Self.MDIChildCount >= 1 then
  begin
    programaciones.Close;
  end;
  Application.CreateForm(Tprogramaciones, programaciones);
end;

procedure Tmain.FormShow(Sender: TObject);
begin
  main.Label2.Caption := '';
  login.Show;
  
end;

procedure Tmain.Timer1Timer(Sender: TObject);
begin
  Caption :=' Global Trafic    '+
  FormatDatetime('dd - mmmm - yyyy', now)+'   '+
  FormatDatetime('hh:mm:ss', now);
end;

end.
