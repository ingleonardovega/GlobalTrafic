unit v_consulta_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, RzGrids, Vcl.StdCtrls;

type
  Tconsulta_cliente = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    var
      activo_form :Integer;  // 1 cliente 2 recole_entrega
    { Public declarations }
  end;

var
  consulta_cliente: Tconsulta_cliente;

implementation

{$R *.dfm}

uses c_data, f_cliente, f_recole_entrega, f_cotizaciones;

procedure Tconsulta_cliente.Edit1Change(Sender: TObject);
var
  consulta :Ccliente;
begin
  consulta.consulta_cliente(Edit1.Text, StringGrid1);
end;

procedure Tconsulta_cliente.FormShow(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure Tconsulta_cliente.StringGrid1DblClick(Sender: TObject);
var
  regresa :cCliente;
begin

  if activo_form = 1 then
  begin
    regresa.regresa_cliente(cliente.id);
    cliente.Edit1.Text := datos_clientes.rfc;
    cliente.Edit2.Text := datos_clientes.razonsocial;
    cliente.ComboBox1.Text := datos_clientes.c_usoCFDI+'-'+datos_clientes.d_usoCFDI;
    cliente.ComboBox1Select(Sender);
    cliente.Memo1.Text := datos_clientes.direccion;
    cliente.CheckBox1.Checked := StrToBool(IntToStr(datos_clientes.status));
    cliente.Edit3.Text := datos_clientes.correo_factura;
    cliente.Edit4.Text := datos_clientes.correo_op;
    cliente.Memo2.Text := datos_clientes.contactos;
    cliente.Edit5.Text := datos_clientes.telefono;
  end;
  if activo_form = 2 then
  begin
    regresa.regresa_cliente(recole_entrega.id_cliente);
    recole_entrega.Edit1.Text := datos_clientes.rfc;
    recole_entrega.Edit2.Text := datos_clientes.razonsocial;
    regresa.regresa_reco_entrega(datos_clientes.rfc, recole_entrega.StringGrid1);
  end;
  if activo_form = 3 then
  begin
    regresa.regresa_cliente(cotizaciones.id_cliente);
    cotizaciones.Edit4.Text := datos_clientes.rfc;
    cotizaciones.Edit6.Text := datos_clientes.razonsocial;
    cotizaciones.Edit7.Text := datos_clientes.correo_op+', '+datos_clientes.correo_factura;
    cotizaciones.Edit8.Text := datos_clientes.contactos;
    cotizaciones.Edit9.Text := datos_clientes.telefono;
  end;
  Close;
end;

procedure Tconsulta_cliente.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if activo_form = 1 then
  begin
    cliente.id := StringGrid1.Cells[0,ARow];
  end;
  if activo_form = 2 then
  begin
     recole_entrega.id_cliente := StringGrid1.Cells[0,ARow];
  end;
  if activo_form = 3 then
  begin
     cotizaciones.id_cliente := StringGrid1.Cells[0,ARow];
  end;
end;

end.
