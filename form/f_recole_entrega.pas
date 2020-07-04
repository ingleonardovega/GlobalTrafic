unit f_recole_entrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Menus;

type
  Trecole_entrega = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    MainMenu1: TMainMenu;
    Guardar1: TMenuItem;
    Consultar1: TMenuItem;
    Eliminar1: TMenuItem;
    StringGrid1: TStringGrid;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    NuevoRegistro1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Guardar1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure NuevoRegistro1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var
    List: TStrings;
    id, id_cliente, id_estado, n_estado :String;

    { Public declarations }
  end;

var
  recole_entrega: Trecole_entrega;

implementation

{$R *.dfm}

uses c_data, v_consulta_cliente;

procedure Trecole_entrega.ComboBox1Select(Sender: TObject);
begin
  List := TStringList.Create;
  ExtractStrings(['-'], [], PChar(ComboBox1.Text), List);
  id_estado := list[0];
  n_estado := list[1];
end;

procedure Trecole_entrega.ComboBox2DropDown(Sender: TObject);
var
  municipio : Cestado_muni;
begin
   municipio.llena_municipio(id_estado, ComboBox2);
end;

procedure Trecole_entrega.Consultar1Click(Sender: TObject);
begin
  consulta_cliente.activo_form := 2;
  consulta_cliente.Show;
end;

procedure Trecole_entrega.Eliminar1Click(Sender: TObject);
var
  eliminar :Ccliente;
begin
  if MessageDlg('Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    eliminar.elimina_reco_entrega(id);
  end;
end;

procedure Trecole_entrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure Trecole_entrega.FormShow(Sender: TObject);
var
  estado : Cestado_muni;
  I : Integer;
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
    if Components[i] is TRadioGroup then
    begin
      TRadioGroup(Components[i]).ItemIndex := -1;
    end;
  end;
  estado.llena_estado(comboBox1);
  id_estado := '0';
  id := '0';
  ComboBox2.Text := '';
  ComboBox2.TextHint := 'Selecciona un estado primero';
end;

procedure Trecole_entrega.Guardar1Click(Sender: TObject);
var
  datos_clientes : Tdatos_cliente;
  guardar : Ccliente;
begin

  with datos_clientes do
  begin
    rfc := Edit1.Text;
    recentestado := n_estado;
    rec_ent_municipio := ComboBox2.Text;
    reco_entre := RadioGroup1.ItemIndex;
    dir_recoentre := Memo1.Text;
  end;

  guardar.guarda_reco_entrega(datos_clientes, id);
  guardar.regresa_reco_entrega(Edit1.Text, StringGrid1);
  //FormShow(Sender);
end;

procedure Trecole_entrega.NuevoRegistro1Click(Sender: TObject);
begin
  FormShow(Sender);
end;

procedure Trecole_entrega.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  var
    consulta :Ccliente;
begin
  id := stringGrid1.Cells[0,ARow];
  consulta.consulta_reco_entrega(id);
  combobox1.text := datos_clientes.recentestado;
  combobox2.text := datos_clientes.rec_ent_municipio;
  memo1.text := datos_clientes.dir_recoentre;
  RadioGroup1.ItemIndex := datos_clientes.reco_entre;
end;

end.
