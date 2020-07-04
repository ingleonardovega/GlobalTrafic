unit f_unidades_propias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, ShellApi;

type
  Tunidades_propias = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
    Edit8: TEdit;
    MainMenu1: TMainMenu;
    Guardar1: TMenuItem;
    NuevoRegistro1: TMenuItem;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label16: TLabel;
    save: TSaveDialog;
    open: TOpenDialog;
    Edit3: TEdit;
    Label17: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure RzButtonEdit2ButtonClick(Sender: TObject);
    procedure RzButtonEdit3ButtonClick(Sender: TObject);
    procedure RzButtonEdit4ButtonClick(Sender: TObject);
    procedure Guardar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NuevoRegistro1Click(Sender: TObject);
  private
    var
      id :String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unidades_propias: Tunidades_propias;

implementation

{$R *.dfm}

uses c_data;

procedure Tunidades_propias.Button1Click(Sender: TObject);
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
  muestra.abrir_archivo(ExtractFileDir(open.FileName),RzButtonEdit1.TextHint, id, 'poliza_seguro', 'Select * from unidades_propias where id = ');
  ShellExecute(Handle, 'open', PChar(open.FileName),nil,nil,SW_SHOWNORMAL);

end;

procedure Tunidades_propias.ComboBox1DropDown(Sender: TObject);
var
  llena_unidades :Cunidades;
begin
  llena_unidades.llena_unidades(ComboBox1);

end;

procedure Tunidades_propias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tunidades_propias.FormResize(Sender: TObject);
begin
  Panel2.Left := (Width div 2) - (Panel2.Width div 2); // asi va al centro horizontal
  Panel2.Top := (Height  div 2) - (Panel2.Height div 2);
end;

procedure Tunidades_propias.FormShow(Sender: TObject);
var
  regresa :Cunidad_propia;
begin
  id := '0';
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
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
  ComboBox2.Text := '';
  regresa.regresa_unidad_propia(StringGrid1);
end;

procedure Tunidades_propias.Guardar1Click(Sender: TObject);
var
  guardar_unidad :Cunidad_propia;
  datos :Tdatos_unidad_propia;
begin
   with datos do
  begin
    operador := Edit1.Text;
    unidad := ComboBox1.Text;
    modelo_ano := Edit4.Text;
    economico := Edit5.Text;
    celular := Edit8.Text;
    placas := Edit6.Text;
    placas_remolque := Edit7.Text;
    combustible := ComboBox2.Text;
    rendimiento := Edit2.Text;
    odometro := Edit3.Text;
    vigencia_poliza := DateTimeToStr(DateTimePicker1.Date);
    vigencia_licencia := DateTimeToStr(DateTimePicker2.Date);

    c_poliza := CheckBox1.Checked;
    poliza_seg := RzButtonEdit1.Text;
    c_tarjeta := CheckBox2.Checked;
    tarjeta_circulacion := RzButtonEdit2.Text;
    c_licencia := CheckBox3.Checked;
    licencia := RzButtonEdit3.Text;
    c_foto := CheckBox4.Checked;
    foto_unidad := RzButtonEdit4.Text;
  end;

  guardar_unidad.guarda_unidad_propia(datos, id);
  FormShow(Sender);
end;

procedure Tunidades_propias.NuevoRegistro1Click(Sender: TObject);
begin
  FormShow(Sender);
end;

procedure Tunidades_propias.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda Poliza seguro unidad';
  save.Execute;
  RzButtonEdit1.Text := save.FileName;
  save.Free;
end;

procedure Tunidades_propias.RzButtonEdit2ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda Tarjeta de circulacion';
  save.Execute;
  RzButtonEdit2.Text := save.FileName;
  save.Free;
end;

procedure Tunidades_propias.RzButtonEdit3ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda licencia de operador';
  save.Execute;
  RzButtonEdit3.Text := save.FileName;
  save.Free;
end;

procedure Tunidades_propias.RzButtonEdit4ButtonClick(Sender: TObject);
begin
  save := TSaveDialog.Create(self);
  save.Title := 'Guarda foto de unidad';
  save.Execute;
  RzButtonEdit4.Text := save.FileName;
  save.Free;
end;

procedure Tunidades_propias.StringGrid1DblClick(Sender: TObject);
var
  consulta_unidad : Cunidad_propia;
begin
  consulta_unidad.consulta_unidad_propia(id);

  Edit1.Text := datos_unidad_propia.operador;
  Edit8.Text := datos_unidad_propia.celular;
  ComboBox1.Text := datos_unidad_propia.unidad;
  Edit4.Text := datos_unidad_propia.modelo_ano;
  Edit5.Text := datos_unidad_propia.economico;
  Edit6.Text := datos_unidad_propia.placas;
  Edit7.Text := datos_unidad_propia.placas_remolque;
  ComboBox2.Text := datos_unidad_propia.combustible;
  Edit2.Text := datos_unidad_propia.rendimiento;
  Edit3.Text := datos_unidad_propia.odometro;

  DateTimePicker1.DateTime := StrToDate(datos_unidad_propia.vigencia_poliza);
  DateTimePicker2.DateTime := StrToDate(datos_unidad_propia.vigencia_licencia);

  RzButtonEdit1.TextHint := datos_unidad_propia.poliza_seg;
  RzButtonEdit2.TextHint := datos_unidad_propia.tarjeta_circulacion;
  RzButtonEdit3.TextHint := datos_unidad_propia.licencia;
  RzButtonEdit4.TextHint := datos_unidad_propia.foto_unidad;

end;

procedure Tunidades_propias.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  id := StringGrid1.Cells[0,ARow];
end;

end.
