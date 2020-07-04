unit f_unidades_enlace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, Vcl.Menus, Vcl.Grids, ShellApi;

type
  Talta_unidades_enlace = class(TForm)
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    Salirconsulta1: TMenuItem;
    Guardar1: TMenuItem;
    Consultar1: TMenuItem;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RzButtonEdit1: TRzButtonEdit;
    RzButtonEdit2: TRzButtonEdit;
    RzButtonEdit3: TRzButtonEdit;
    RzButtonEdit4: TRzButtonEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    StringGrid1: TStringGrid;
    Label15: TLabel;
    Edit8: TEdit;
    Image1: TImage;
    open: TOpenDialog;
    save: TSaveDialog;
    NuevoRegistro1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure RzButtonEdit2ButtonClick(Sender: TObject);
    procedure RzButtonEdit3ButtonClick(Sender: TObject);
    procedure RzButtonEdit4ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Guardar1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NuevoRegistro1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    id, id_enlace :String;
    { Public declarations }
  end;

var
  alta_unidades_enlace: Talta_unidades_enlace;

implementation

{$R *.dfm}

uses c_data, v_consulta_enlace;

procedure Talta_unidades_enlace.Button1Click(Sender: TObject);
var
  muestra :Carchivos;
begin
  if RzButtonEdit1.TextHint = '' then
  begin
    ShowMessage('No hay archivo');
    Abort;
  end;
  open.FileName := RzButtonEdit1.TextHint;
  open.Execute();
  muestra.abrir_archivo(ExtractFileDir(open.FileName),RzButtonEdit1.TextHint, id, 'poliza_seguro', 'Select * from unidades_enlace where id = ');
  ShellExecute(Handle, 'open', PChar(open.FileName),nil,nil,SW_SHOWNORMAL);
end;

procedure Talta_unidades_enlace.Button2Click(Sender: TObject);
var
  muestra :Carchivos;
begin
  if RzButtonEdit2.TextHint = '' then
  begin
    ShowMessage('No hay archivo');
    Abort;
  end;
  open.FileName := RzButtonEdit2.TextHint;
  open.Execute();
  muestra.abrir_archivo(ExtractFileDir(open.FileName),RzButtonEdit2.TextHint, id, 'tarjeta_circulacion', 'Select * from unidades_enlace where id = ');
  ShellExecute(Handle, 'open', PChar(open.FileName),nil,nil,SW_SHOWNORMAL);

end;

procedure Talta_unidades_enlace.Button3Click(Sender: TObject);
var
  muestra :Carchivos;
begin
  if RzButtonEdit3.TextHint = '' then
  begin
    ShowMessage('No hay archivo');
    Abort;
  end;
  open.FileName := RzButtonEdit3.TextHint;
  open.Execute();
  muestra.abrir_archivo(ExtractFileDir(open.FileName),RzButtonEdit3.TextHint, id, 'licencia', 'Select * from unidades_enlace where id = ');
  ShellExecute(Handle, 'open', PChar(open.FileName),nil,nil,SW_SHOWNORMAL);

end;

procedure Talta_unidades_enlace.Button4Click(Sender: TObject);
var
  muestra :Carchivos;
begin
  if RzButtonEdit4.TextHint = '' then
  begin
    ShowMessage('No hay archivo');
    Abort;
  end;
  open.FileName := RzButtonEdit4.TextHint;
  open.Execute();
  muestra.abrir_archivo(ExtractFileDir(open.FileName),RzButtonEdit4.TextHint, id, 'foto_unidad', 'Select * from unidades_enlace where id = ');
  ShellExecute(Handle, 'open', PChar(open.FileName),nil,nil,SW_SHOWNORMAL);
end;

procedure Talta_unidades_enlace.ComboBox1DropDown(Sender: TObject);
var
  llena_unidades :Cunidades;
begin
  llena_unidades.llena_unidades(ComboBox1);
end;

procedure Talta_unidades_enlace.Consultar1Click(Sender: TObject);
begin
  consulta_enlace.activo_form := 2;
  Salirconsulta1.Visible := True;
  consulta_enlace.Show;
end;

procedure Talta_unidades_enlace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Talta_unidades_enlace.FormCreate(Sender: TObject);
begin
  Consultar1Click(Sender);
end;

procedure Talta_unidades_enlace.FormResize(Sender: TObject);
begin
  Panel2.Left := (Width div 2) - (Panel2.Width div 2); // asi va al centro horizontal
  Panel2.Top := (Height  div 2) - (Panel2.Height div 2);
end;

procedure Talta_unidades_enlace.FormShow(Sender: TObject);
begin
  Salirconsulta1.Visible := False;
  id_enlace := '0';
  id := '0';
  Edit1.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  RzButtonEdit1.Clear;
  RzButtonEdit2.Clear;
  RzButtonEdit3.Clear;
  RzButtonEdit4.Clear;
  RzButtonEdit1.TextHint := '';
  RzButtonEdit2.TextHint := '';
  RzButtonEdit3.TextHint := '';
  RzButtonEdit4.TextHint := '';
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  CheckBox3.Checked := False;
  CheckBox4.Checked := False;
  ComboBox1.Text := '';

end;

procedure Talta_unidades_enlace.Guardar1Click(Sender: TObject);
var
  guardar_unidad :Cenlace;
  datos :Tdatos_enlace;
begin

  with datos do
  begin
    rfc := Edit3.Text;
    operador := Edit1.Text;
    unidad := ComboBox1.Text;
    ano_modelo := Edit4.Text;
    economico := Edit5.Text;
    celular := Edit8.Text;
    placas := Edit6.Text;
    placas_rem := Edit7.Text;

    c_poliza := CheckBox1.Checked;
    poliza_seg := RzButtonEdit1.Text;
    c_tarjeta := CheckBox2.Checked;
    tarj_cir := RzButtonEdit2.Text;
    c_licencia := CheckBox3.Checked;
    licencia := RzButtonEdit3.Text;
    c_foto := CheckBox4.Checked;
    foto_unidad := RzButtonEdit4.Text;
  end;

  guardar_unidad.guarda_unidad_enlace(datos, id);
  FormShow(Sender);
end;

procedure Talta_unidades_enlace.NuevoRegistro1Click(Sender: TObject);
begin
  FormShow(Sender);
end;

procedure Talta_unidades_enlace.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda Poliza seguro unidad enlace';
  save.Execute;
  RzButtonEdit1.Text := save.FileName;
  save.Free;
end;

procedure Talta_unidades_enlace.RzButtonEdit2ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda tarjeta circulacion unidad enlace';
  save.Execute;
  RzButtonEdit2.Text := save.FileName;
  save.Free;
end;

procedure Talta_unidades_enlace.RzButtonEdit3ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda licencia operador enlace';
  save.Execute;
  RzButtonEdit3.Text := save.FileName;
  save.Free;
end;

procedure Talta_unidades_enlace.RzButtonEdit4ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda fotografia de la unidad enlace';
  save.Execute;
  RzButtonEdit4.Text := save.FileName;
  save.Free;
end;

procedure Talta_unidades_enlace.StringGrid1DblClick(Sender: TObject);
var
  consulta_unidad :Cenlace;
begin
  consulta_unidad.consulta_unidad_enlace(id);

  Edit1.Text := datos_enlace.operador;
  ComboBox1.Text := datos_enlace.unidad;
  Edit4.Text := datos_enlace.ano_modelo;
  Edit5.Text := datos_enlace.economico;
  Edit8.Text := datos_enlace.celular;
  Edit6.Text := datos_enlace.placas;
  Edit7.Text := datos_enlace.placas_rem;

  RzButtonEdit1.TextHint := datos_enlace.poliza_seg;
  RzButtonEdit2.TextHint := datos_enlace.tarj_cir;
  RzButtonEdit3.TextHint := datos_enlace.licencia;
  RzButtonEdit4.TextHint := datos_enlace.foto_unidad;

end;

procedure Talta_unidades_enlace.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  id := StringGrid1.Cells[0,ARow];
end;

end.
