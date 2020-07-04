unit v_consulta_enlace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  Tconsulta_enlace = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  var
      activo_form :Integer;  // 1 enlace 2 unidades
    { Public declarations }
  end;

var
  consulta_enlace: Tconsulta_enlace;

implementation

{$R *.dfm}

uses f_enlace, c_data, f_unidades_enlace, f_cotizaciones;

procedure Tconsulta_enlace.Edit1Change(Sender: TObject);
var
  consulta :Cenlace;
begin
  consulta.consulta_enlace(Edit1.Text, StringGrid1);
end;

procedure Tconsulta_enlace.FormShow(Sender: TObject);
var
  regresa : Cenlace;
begin
  if activo_form = 1 then
  begin
    regresa.regresa_enlace(enlace.id);
  end;
end;

procedure Tconsulta_enlace.StringGrid1DblClick(Sender: TObject);
var
  regresa : Cenlace;
begin
  if activo_form = 1 then
  begin
    regresa.regresa_enlace(enlace.id);
    enlace.Edit1.Text := datos_enlace.rfc;
    enlace.Edit2.Text := datos_enlace.nombre;
    enlace.Edit3.Text := datos_enlace.direccion;
    enlace.Edit4.Text := datos_enlace.colonia;
    enlace.Edit5.Text := datos_enlace.cp;
    enlace.ComboBox1.Text := datos_enlace.estado;
    enlace.ComboBox2.Text := datos_enlace.municipio;
    enlace.Edit6.Text := datos_enlace.telefono;
    enlace.Edit7.Text := datos_enlace.contacto;
    enlace.Edit8.Text := datos_enlace.correo1;
    enlace.Edit9.Text := datos_enlace.correo2;
    enlace.CheckBox1.Checked := StrToBool(IntToStr(datos_enlace.status));
  end;

  if activo_form = 2 then
  begin
    regresa.regresa_enlace(alta_unidades_enlace.id_enlace);
    alta_unidades_enlace.Edit3.Text := datos_enlace.rfc;
    alta_unidades_enlace.Edit2.Text := datos_enlace.nombre;
    regresa.regresa_unidad_enlace(datos_enlace.rfc, alta_unidades_enlace.StringGrid1);
  end;

   if activo_form = 3 then
  begin
    regresa.regresa_enlace(cotizaciones.id_enlace);
    cotizaciones.Edit16.Text := datos_enlace.nombre;
    cotizaciones.Edit17.Text := datos_enlace.rfc;
    regresa.regresa_unidad_enlace(datos_enlace.rfc, cotizaciones.StringGrid4);
    cotizaciones.StringGrid4.Cells[6,0] := 'Selec.';
  end;

  Close;
end;

procedure Tconsulta_enlace.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
   if activo_form = 1 then
  begin
    enlace.id := StringGrid1.Cells[0,ARow];
  end;
  if activo_form = 2 then
  begin
     alta_unidades_enlace.id_enlace := StringGrid1.Cells[0,ARow];
  end;
  if activo_form = 3 then
  begin
    cotizaciones.id_enlace := StringGrid1.Cells[0,ARow];
  end;
end;

end.
