unit f_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tcliente = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    MainMenu1: TMainMenu;
    Guardar1: TMenuItem;
    Consultar1: TMenuItem;
    SalirConsulta1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    Edit5: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Guardar1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure SalirConsulta1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var
    id, id_usocfdi, usocfdi : String;
    List: TStrings;
    { Public declarations }
  end;

var
  cliente: Tcliente;

implementation

{$R *.dfm}

uses c_data, v_consulta_cliente;

procedure Tcliente.ComboBox1DropDown(Sender: TObject);
var
  data :Cusocfdi;
begin
  data.llena_usoCFDI(Edit1, ComboBox1);
end;

procedure Tcliente.ComboBox1Select(Sender: TObject);
begin
  List := TStringList.Create;
  ExtractStrings(['-'], [], PChar(ComboBox1.Text), List);
  id_usocfdi := list[0];
  usocfdi := list[1];
end;

procedure Tcliente.Consultar1Click(Sender: TObject);
begin
  consulta_cliente.activo_form := 1;
  consulta_cliente.Show;
  SalirConsulta1.Visible := True;
end;

procedure Tcliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure Tcliente.FormShow(Sender: TObject);
var
  i : Integer;
begin
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
end;

procedure Tcliente.Guardar1Click(Sender: TObject);
var
  datos_cliente : Tdatos_cliente;
  guardar : Ccliente;
begin

  with datos_cliente do
  begin
    rfc := Edit1.Text;
    razonsocial := Edit2.Text;
    c_usoCFDI := id_usocfdi;
    d_usoCFDI := usocfdi;
    direccion := Memo1.Text;
    status := CheckBox1.Checked.ToInteger;
    correo_op := Edit4.Text;
    correo_factura := Edit3.Text;
    contactos := Memo2.Text;
    telefono := Edit5.Text;
  end;

  guardar.guarda_cliente(datos_cliente, id);
  FormShow(Sender);
end;

procedure Tcliente.SalirConsulta1Click(Sender: TObject);
begin
  FormShow(Sender);
end;

end.
