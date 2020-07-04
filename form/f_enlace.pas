unit f_enlace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Grids, Vcl.Buttons;

type
  Tenlace = class(TForm)
    MainMenu1: TMainMenu;
    Guardar1: TMenuItem;
    Consultar1: TMenuItem;
    SalirConsulta1: TMenuItem;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    Label12: TLabel;
    ComboBox3: TComboBox;
    Label13: TLabel;
    Edit10: TEdit;
    CheckBox2: TCheckBox;
    Label14: TLabel;
    Edit11: TEdit;
    Label15: TLabel;
    Edit12: TEdit;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    CategoryPanel2: TCategoryPanel;
    procedure ComboBox3DropDown(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Guardar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SalirConsulta1Click(Sender: TObject);
    procedure CategoryPanel2Expand(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
  var
    List: TStrings;
    id, id_banco_enlace, id_estado, n_estado :String;
    { Public declarations }
  end;

var
  enlace: Tenlace;

implementation

{$R *.dfm}

uses c_data, v_consulta_enlace;

procedure Tenlace.BitBtn1Click(Sender: TObject);
var
  guarda_banco, consulta_banco :Cenlace;
  datos : Tdatos_enlace;
begin
  with datos do
  begin
    rfc := Edit1.Text;
    banco := ComboBox3.Text;
    titular := Edit10.Text;
    clabeint := Edit11.Text;
    cuenta := Edit12.Text;
  end;
  guarda_banco.guarda_banco_enlace(datos, id_banco_enlace);
  consulta_banco.recarga_banco_enlace(Edit1.Text, StringGrid1);
end;

procedure Tenlace.CategoryPanel2Expand(Sender: TObject);
var
  consulta_banco :Cenlace;
begin
  if Edit1.Text = '' then
  begin
    Abort;
  end;
  if CategoryPanel2.Collapsed = false then
  begin
    id_banco_enlace := '0';
    consulta_banco.recarga_banco_enlace(Edit1.Text, StringGrid1);
  end;
end;

procedure Tenlace.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
  begin
    Edit10.Text := Edit2.Text;
  end
  else
  begin
    Edit10.Clear;
  end;
end;

procedure Tenlace.ComboBox1DropDown(Sender: TObject);
var
  llena_estado :Cestado_muni;
begin
  llena_estado.llena_estado(ComboBox1);
end;

procedure Tenlace.ComboBox1Select(Sender: TObject);
begin
  List := TStringList.Create;
  ExtractStrings(['-'], [], PChar(ComboBox1.Text), List);
  id_estado := list[0];
  n_estado := list[1];
end;

procedure Tenlace.ComboBox2DropDown(Sender: TObject);
var
  municipio : Cestado_muni;
begin
   municipio.llena_municipio(id_estado, ComboBox2);
end;

procedure Tenlace.ComboBox3DropDown(Sender: TObject);
var
  llena_banco :Cbanco;
begin
  llena_banco.llena_banco(ComboBox3);
end;

procedure Tenlace.Consultar1Click(Sender: TObject);
begin
  consulta_enlace.activo_form := 1;
  SalirConsulta1.Visible := True;
  consulta_enlace.Show;
end;

procedure Tenlace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tenlace.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  ComboBox3.Clear;
  CategoryPanel2.Collapsed := true;
  for i := 0 to ComponentCount -1 do
  begin
    if Components[i] is TEdit then
    begin
      TEdit(Components[i]).Clear;
    end;
    if Components[i] is TComboBox then
    begin
      TComboBox(Components[i]).ItemIndex := -1;
    end;
    if Components[i] is TCheckBox then
    begin
      TCheckBox(Components[i]).Checked := false;
    end;
    if Components[i] is TMemo then
    begin
      TMemo(Components[i]).Clear;
    end;
  end;
  CheckBox1.Checked := True;
  SalirConsulta1.Visible := False;
  id := '0';
  id_banco_enlace := '0';
end;

procedure Tenlace.Guardar1Click(Sender: TObject);
var
  guardar :Cenlace;
  datos :Tdatos_enlace;
begin
  with datos do
  begin
    rfc := Edit1.Text;
    nombre := Edit2.Text;
    direccion := Edit3.Text;
    colonia := Edit4.Text;
    cp := Edit5.Text;
    estado := n_estado;
    municipio := ComboBox2.Text;
    telefono := Edit6.Text;
    contacto := Edit7.Text;
    correo1 := Edit8.Text;
    correo2 := Edit9.Text;
    status := CheckBox1.Checked.ToInteger;
  end;
  guardar.guarda_enlace(datos, id);
  FormShow(Sender);

end;

procedure Tenlace.SalirConsulta1Click(Sender: TObject);
begin
  FormShow(Sender);
end;

procedure Tenlace.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  id_banco_enlace := StringGrid1.Cells[0,ARow];
  ComboBox3.Text := StringGrid1.Cells[1,ARow];
  Edit10.Text := StringGrid1.Cells[2,ARow];
  Edit11.Text := StringGrid1.Cells[3,ARow];
  Edit12.Text := StringGrid1.Cells[4,ARow];
end;

end.
