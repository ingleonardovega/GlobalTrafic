unit v_consulta_cotizacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Buttons, Vcl.ComCtrls;

type
  Tconsulta_cotizaciones = class(TForm)
    RadioGroup1: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    StringGrid1: TStringGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      id_cotizacion :String;
    { Public declarations }
  end;

var
  consulta_cotizaciones: Tconsulta_cotizaciones;

implementation

{$R *.dfm}

uses c_data, f_cotizaciones, f_enlace;

procedure Tconsulta_cotizaciones.BitBtn2Click(Sender: TObject);
var
  busqueda :Ccotizacion;
  filtro : String;
begin

  if RadioGroup1.ItemIndex = 0 then
  begin
    filtro := '5';
  end;
  if RadioGroup1.ItemIndex = 1 then
  begin
    filtro := '1';
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    filtro := '2';
  end;
  if RadioGroup1.ItemIndex = 3 then
  begin
    filtro := '3';
  end;
  if RadioGroup1.ItemIndex = 4 then
  begin
    filtro := '0';
  end;
  

  busqueda.consulta_cotizacion(filtro, Edit1.Text, FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date), FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date), StringGrid1 );


{TODOS
PENDIENTES
PROGRAMADO
FINALIZADO
CANCELADO} // filtro

{
CANCELADO
PENDIENTE
PROGRAMADO
FINALIZADO
            status cotizacion
}
end;

procedure Tconsulta_cotizaciones.FormShow(Sender: TObject);
var
  busqueda :Ccotizacion;
begin
  DateTimePicker1.Date := NOW();
  DateTimePicker2.Date := NOW();

  busqueda.consulta_cotizacion('5', Edit1.Text, FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date), FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date), StringGrid1 );
end;

procedure Tconsulta_cotizaciones.StringGrid1DblClick(Sender: TObject);
var
  consulta :Ccotizacion;
  I,I2 :integer;
begin


  consulta.regresa_cotizacion(id_cotizacion, cotizaciones.StringGrid1, cotizaciones.StringGrid2, cotizaciones.StringGrid6);

  with cotizaciones do
  begin
    cotizaciones.Label4.caption := datos_cotizacion.numero_cotizacion;
    cotizaciones.ComboBox1.ItemIndex := datos_cotizacion.status_cotizacion;
    Caption := 'Cotizaciones operativas CONSULTA' + FormatDateTime('dd/mm/yyyy', StrToDate(datos_cotizacion.fecha_cotizacion));
//    Edit5.Text := FloatToStr(datos_cotizacion.costo_cotizacion);
//    Edit1.Text := FloatToStr(datos_cotizacion.utilidad);
//    Edit3.Text := FloatToStr(datos_cotizacion.costo_enlace);
//    Edit2.Text := FloatToStr(datos_cotizacion.costo_operativo);

    Edit4.Text := datos_cotizacion.rfc_cliente;
    Edit6.Text := datos_cotizacion.razon_social;
    Edit7.Text := datos_cotizacion.correo_cliente;
    Edit8.Text := datos_cotizacion.contacto_cliente;
    Edit9.Text := datos_cotizacion.tel_cliente;

    Memo1.Text := datos_cotizacion.dir_rec;
    ComboBox2.Text := datos_cotizacion.estado_rec;
    ComboBox3.Text := datos_cotizacion.muni_rec;
    Memo2.Text := datos_cotizacion.dir_entrega;
    ComboBox4.Text := datos_cotizacion.estado_entrega;
    ComboBox5.Text := datos_cotizacion.muni_entrega;
    Memo3.Text := datos_cotizacion.inst_especiales;

    ComboBox6.ItemIndex := ComboBox6.Items.IndexOf(datos_cotizacion.tipo_servicio);

    StringGrid3.Cells[0,0] := datos_cotizacion.unidad_cot;

    if datos_cotizacion.enlace_propia = true then
    begin
      Edit16.Text := datos_cotizacion.enlace;
      Edit17.Text := datos_cotizacion.rfc_enlace;
      Edit15.Text := FloatToStr(datos_cotizacion.costo_enlace);
      StringGrid4.Cells[0,1] := IntToStr(datos_cotizacion.id_unidad_enlace);
      StringGrid4.Cells[1,1] := datos_cotizacion.eco_enlace;
      StringGrid4.Cells[2,1] := datos_cotizacion.modelo_enlace;
      StringGrid4.Cells[3,1] := datos_cotizacion.unidad_enlace;
      StringGrid4.Cells[4,1] := datos_cotizacion.operador_enlace;
      StringGrid4.Cells[5,1] := datos_cotizacion.placas_enlace;
      StringGrid4.Cells[6,1] := 'X';
      Activar1.Checked := true;
      CategoryPanel6.Visible := True;
      CategoryPanel7.Visible := False;
      CategoryPanel8.Visible := False;
      Edit2.Text := '0';
      for I := 0 to StringGrid6.RowCount do
      begin
       for I2 := 0 to StringGrid6.ColCount do
       begin
         StringGrid6.Cells[I2,I] := '';
       end;
      end;
      StringGrid6.RowCount := 1;
    end;

    if datos_cotizacion.enlace_propia = false then
    begin
      CategoryPanel6.Visible := false;
      CategoryPanel7.Visible := True;
      CategoryPanel8.Visible := True;
      Edit15.Text := '0';
      StringGrid5.Cells[0,1] := IntToStr(datos_cotizacion.id_unidad_propia);
      StringGrid5.Cells[1,1] := datos_cotizacion.eco_propia;
      StringGrid5.Cells[2,1] := datos_cotizacion.modelo_propia;
      StringGrid5.Cells[3,1] := datos_cotizacion.unidad_propia;
      StringGrid5.Cells[4,1] := datos_cotizacion.operador_propia;
      StringGrid5.Cells[5,1] := datos_cotizacion.placas_propia;
      StringGrid5.Cells[6,1] := 'X';
      Activar1.Checked := false;
    end;

    Edit19.Text := FloatToStr(datos_cotizacion.odometro_inicial);
    Edit20.Text := FloatToStr(datos_cotizacion.odometro_final);
    Edit21.Text := FloatToStr(datos_cotizacion.rendimiento);

    consulta.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
    Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
    Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
    Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
  end;

end;

procedure Tconsulta_cotizaciones.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  id_cotizacion := StringGrid1.Cells[0,ARow];
end;

end.
