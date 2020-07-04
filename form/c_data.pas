unit c_data;

interface
uses
  Vcl.StdCtrls, System.SysUtils, Vcl.Dialogs, System.Classes, StrUtils, Vcl.Controls, Vcl.Forms,
  Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Graphics, Vcl.Grids, DATA.DB, ShellApi,
  Vcl.ComCtrls, Vcl.ComStrs, Vcl.ExtCtrls, RzGrids;

  //------------------------------------------------records

type
  TResult = Record
    nombre : String;
    resultado : Boolean;
  End;
  var
    usuario :TResult;

  type
    Tdatos_combustible = Record
    magna, premium, diesel :string;
  End;
  var
    datos_combustible :Tdatos_combustible;

  type
  Tdatos_cliente = Record
    rfc, razonsocial, d_usoCFDI, direccion, correo_factura, correo_op, contactos, c_usoCFDI,
    recentestado, rec_ent_municipio, dir_recoentre, telefono: String;
    status, reco_entre : Integer;
  End;
  var
    datos_clientes : Tdatos_cliente;

  type
  Tdatos_enlace = Record
    rfc, nombre, direccion, colonia, cp, estado, municipio, telefono, contacto, correo1, correo2,
    banco, titular, clabeint, cuenta, operador, economico, celular, ano_modelo, unidad, placas,
    placas_rem, poliza_seg, tarj_cir, licencia, foto_unidad :String;
    //a_poliza_seg, a_tarj_cir, a_licencia, a_foto_unidad :TStream;
    archivo, c_poliza, c_tarjeta, c_licencia, c_foto :Boolean;
    status, rankin : Integer
  End;
  var
    datos_enlace : Tdatos_enlace;

  type
  Tdatos_unidad_propia = Record
    operador, celular, unidad, modelo_ano, economico, placas, placas_remolque, combustible, rendimiento,
    poliza_seg, tarjeta_circulacion, licencia, foto_unidad, vigencia_poliza, vigencia_licencia, odometro :String;
    archivo, c_poliza, c_tarjeta, c_licencia, c_foto :Boolean;
    status :Integer;
  End;
  var
    datos_unidad_propia : Tdatos_unidad_propia;


    type
    Tdatos_cotizacion = Record
      numero_cotizacion, fecha_cotizacion, fecha_programacion, rfc_cliente, contacto_cliente,
      razon_social, tel_cliente, correo_cliente, dir_rec, estado_rec, muni_rec, dir_entrega, estado_entrega,
      muni_entrega, inst_especiales, tipo_servicio, unidad_cot, enlace, rfc_enlace, eco_enlace, modelo_enlace,
      unidad_enlace, operador_enlace, placas_enlace, eco_propia, modelo_propia, unidad_propia,
      operador_propia, placas_propia, cantidad, embalaje, descripcion, concepto_serv, gasto_ope, eir, documentos :String;

      status_cotizacion, id_unidad_enlace, id_unidad_propia, id_servicio, id_mercancia,
      id_gasto_op :Integer;

      enlace_propia :Boolean;

      suma_cotiza, suma_utilidad, suma_operativo, suma_enlace, costo_cotizacion,
      utilidad, costo_enlace, costo_operativo, odometro_inicial, odometro_final,
      peso, volumen, costo_serv, costo_ope, rendimiento :Double;

    End;
    var
      datos_cotizacion :Tdatos_cotizacion;

  // -------------------------------------------------class

type
  Cstatus_carga = class(TObject)
  public
    function llena_status(status :TComboBox) : Boolean;
  end;

type
  Cprograma_carga = class(TObject)
  public
    function consulta_programa(filtro, busqueda, f_ini, f_fin :String; consulta: TCategoryPanelGroup): Boolean;
    function seleccion_cotizacion(id :String) : Boolean;
    procedure accion(Sender :TObject);

  end;

type
  Cdatos_combustible = class(Tobject)
    public
    function regresa_costo() : Tdatos_combustible;
    function guarda_costo(combustible :String; costo: double) : Boolean;
  end;

type
  Cunidad_propia = class(TObject)
    public
    function guarda_unidad_propia(datos_unidad_propia : Tdatos_unidad_propia; id: String) : Boolean;
    function regresa_unidad_propia(grid: TStringGrid) : Boolean;
    function consulta_unidad_propia(id :String): Tdatos_unidad_propia;
  end;

type
  Ccotizacion = class(TObject)
    public
    function consulta_cotizacion(status, busqueda, f_ini, f_fin : String; grid_consulta : TStringGrid) : Boolean;
    function regresa_cotizacion(id :String; grid_mercancia, grid_servicios, grid_operativo :TStringGrid) :  Tdatos_cotizacion;
    function generanumero_cotizacion : Tdatos_cotizacion;
    function suma_cotizacion(grid, grid2 :TStringGrid; enlace, operativo :Double) : Tdatos_cotizacion;
    function guarda_cotizacion(datos_cotizacion :Tdatos_cotizacion; id_cotizacion :String;grid_mercancia, grid_operativo, grid_servicios :TStringGrid) :Boolean;
end;

type
    Cbanco = class(TObject)
    public
      function llena_banco(banco :TComboBox) : Boolean;
end;

type
    Carchivos = Class(TObject)
      public
        function guarda_archivo(ruta :String; field:TField) : Boolean;
        function abrir_archivo(ruta, nombre, id, col, sql: String) : Boolean;
End;

type
    Cunidades = class(TObject)
    public
      function llena_unidades(unidades :TComboBox) : Boolean;
end;

type
  Cenlace = class(TObject)
  public
  function guarda_enlace(datos_enlace :Tdatos_enlace; id :String) : Boolean;
  function consulta_enlace(consulta :String; grid: TStringGrid): Boolean;
  function regresa_enlace(id :String) : Tdatos_enlace;
  function guarda_banco_enlace(datos_enlace :Tdatos_enlace; id :String) :Boolean;
  function recarga_banco_enlace(rfc :String; grid : TStringGrid) : Boolean;
  function guarda_unidad_enlace(datos_enlace :Tdatos_enlace; id :String) : Boolean;
  function regresa_unidad_enlace(rfc :String; grid: TStringGrid) : Boolean;
  function consulta_unidad_enlace(id :String) : Tdatos_enlace;
end;

type
  Clogin = class(TObject)
  public
      function acceso (us :String; pa :String) : TResult;
end;

type
  Cusocfdi = class(TObject)
  public
    function llena_usoCFDI(rfc :TEdit; var combo : TComboBox) :Boolean;
end;

type
  Ccliente = class(TObject)
  public
    function guarda_cliente(datos_clientes :Tdatos_cliente; id : String) : Boolean;
    function consulta_cliente(consulta :String; grid :TStringGrid) : Boolean;
    function regresa_cliente(id :String) : Tdatos_cliente;
    function guarda_reco_entrega(datos_clientes :Tdatos_cliente; id : String) : Boolean;
    function regresa_reco_entrega(d_rfc: String; grid :TStringGrid) : Boolean;
    function consulta_reco_entrega(id :String) : Tdatos_cliente;
    function elimina_reco_entrega(id :String) :Boolean;
end;

type
  Cestado_muni = class(TObject)
    public
      function llena_estado (estado :TComboBox) : Boolean;
      function llena_municipio(id :String;  municipio :TComboBox) :Boolean;
end;




implementation

uses c_dm, f_programaciones;
function Cprograma_carga.seleccion_cotizacion(id :String) : Boolean;
var
  sql :String;
begin
  sql := 'SELECT id, num_cotizacion, fecha_cotizacion, status_cotizacion, fecha_programa, eir, documentos '+
         'FROM cotizacion '+
         'WHERE id = '+id;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add(sql);
  DATAS.Q1.Open;

    programaciones.Edit5.Text := DATAS.Q1.FieldByName('eir').AsString;
    programaciones.Edit1.Text := DATAS.Q1.FieldByName('documentos').AsString;
    if not DATAS.Q1.FieldByName('fecha_programa').AsVariant = '' then
    begin
      programaciones.DateTimePicker1.Date := StrToDate( formatdatetime('dd/mm/yyyy', DATAS.Q1.FieldByName('fecha_programa').AsDateTime));
    end;
    programaciones.ComboBox1.ItemIndex := DATAS.Q1.FieldByName('status_cotizacion').AsInteger;

end;

procedure Cprograma_carga.accion(Sender :TObject);
var
  id_cotiza : string;
begin
  id_cotiza := copy((Sender as TButton).Name,3,10);
//  ShowMessage(id_cotiza);
  seleccion_cotizacion(id_cotiza);
end;

//-----------------------------------------------------------function

function Cprograma_carga.consulta_programa(filtro, busqueda, f_ini, f_fin :String; consulta: TCategoryPanelGroup) : Boolean;
var
  sql, filtro_status :String;
  I: Integer;
  CPanel :TCategoryPanel;
  Panel :TPanel;
  memo :Tmemo;
begin



  sql := 'SELECT id, num_cotizacion, fecha_cotizacion, fecha_programa, status_cotizacion, razon_social, telefono_cliente, dir_recole, estado_recole, municipio_recole, dir_entrega, municipio_entrega, estado_entrega, enlace_propia,'+
          ' concat(enlace,'+chr(39)+' Eco. '+chr(39)+', eco_enlace ,'+chr(39)+' Placas: '+chr(39)+', placas_enlace ) as foraneo, concat(eco_unidad_propia,'+chr(39)+' placas: '+chr(39)+', placas_propias, '+chr(39)+' Operador: '+chr(39)+', operador_propio) as propio'+
          ' FROM cotizacion '+
          'WHERE '+
          ' CONCAT(rfc_cliente,'+chr(39)+' '+chr(39)+','+
                  'razon_social,'+chr(39)+' '+chr(39)+','+
                  'contacto_cliente,'+chr(39)+' '+chr(39)+','+
                  'instr_especiales,'+chr(39)+' '+chr(39)+','+
                  'tipo_servicio,'+chr(39)+' '+chr(39)+','+
                  'unidad_cotizacion,'+chr(39)+' '+chr(39)+','+
                  'enlace,'+chr(39)+' '+chr(39)+','+
                  'rfc_enlace,'+chr(39)+' '+chr(39)+','+
                  'operador_enlace,'+chr(39)+' '+chr(39)+','+
                  'placas_enlace,'+chr(39)+' '+chr(39)+','+
                  'eco_unidad_propia,'+chr(39)+' '+chr(39)+','+
                  'operador_propio,'+chr(39)+' '+chr(39)+','+
                  'placas_propias,'+chr(39)+' '+chr(39)+','+
                  'costo_cotizacion,'+chr(39)+' '+chr(39)+','+
                  'costo_enlace) LIKE '+chr(39)+'%'+busqueda+'%'+chr(39)+' AND '+
                  'fecha_cotizacion BETWEEN '+chr(39)+f_ini+chr(39)+' AND '+chr(39)+f_fin+chr(39)+
                  ' order by id, fecha_cotizacion asc';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add(sql);
  DATAS.Q1.Open;

  DATAS.Q2.SQL.Clear;
  DATAS.Q2.SQL.Add('Select * from cotizacion_mercancia where n_cotizacion = '+
                    chr(39)+DATAS.Q1.FieldByName('num_cotizacion').AsString+chr(39));
  DATAS.Q2.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
//    grid_consulta.Cells[0,I] := datas.Q1.FieldByName('id').AsString;
//    grid_consulta.Cells[1,I] := DATAS.Q1.FieldByName('num_cotizacion').AsString;
//    grid_consulta.Cells[2,I] := DATAS.Q1.FieldByName('fecha_cotizacion').AsString;
//    grid_consulta.Cells[3,I] := DATAS.Q1.FieldByName('fecha_programa').AsString;
//    grid_consulta.Cells[4,I] := DATAS.Q1.FieldByName('razon_social').AsString;
//    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 0 then
//    begin
//      grid_consulta.Cells[5,I] := 'CANCELADA';
//    end;
//    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 1 then
//    begin
//      grid_consulta.Cells[5,I] := 'PENDIENTE';
//    end;
//    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 2 then
//    begin
//      grid_consulta.Cells[5,I] := 'PROGRAMADA';
//    end;
//    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 3 then
//    begin
//      grid_consulta.Cells[5,I] := 'FINALIZADA';
//    end;

    CPanel := consulta.CreatePanel(consulta) as TCategoryPanel;
    if DATAS.Q1.FieldByName('fecha_programa').AsString = '' then
    begin
      if DATAS.Q1.FieldByName('enlace_propia').AsInteger = 0 then
      begin
        CPanel.Caption :='Programacion: N/P - Cliente: '+
        DATAS.Q1.FieldByName('razon_social').AsString+
        ' Unidad: '+DATAS.Q1.FieldByName('propio').AsString;
      end
      else
      begin
        CPanel.Caption :='Programacion: N/P - Cliente: '+
        DATAS.Q1.FieldByName('razon_social').AsString+' Unidad: '+
        DATAS.Q1.FieldByName('foraneo').AsString;
      end;
    end
    else
    begin
      if DATAS.Q1.FieldByName('enlace_propia').AsInteger = 0 then
      begin
        CPanel.Caption :='Programacion: '+
        FormatDateTime('dddddd', DATAS.Q1.FieldByName('fecha_programa').AsDateTime)+
        ' - Cliente: '+DATAS.Q1.FieldByName('razon_social').AsString+
        ' Unidad: '+DATAS.Q1.FieldByName('propio').AsString;
      end
      else
      begin
        CPanel.Caption :='Programacion: '+
        FormatDateTime('dddddd', DATAS.Q1.FieldByName('fecha_programa').AsDateTime)+
        ' - Cliente: '+DATAS.Q1.FieldByName('razon_social').AsString+
        ' Unidad: '+DATAS.Q1.FieldByName('foraneo').AsString;
      end;
    end;
    CPanel.Name := 'cp'+DATAS.Q1.FieldByName('id').AsString;
    CPanel.Font.Size := 9;
    CPanel.Collapsed := true;
    CPanel.Height := 400;

    panel := Tpanel.Create(nil);
    memo := TMemo.Create(nil);
    with panel do
    begin
      Caption := '';
      Parent := CPanel;
      Align := alClient;
    end;

    with TButton.Create(nil) do
    begin

      Caption := 'seleccionar';
      Name := 'id'+DATAS.Q1.FieldByName('id').AsString;
      Parent := Panel;
      SetBounds (10, 10, Width, Height);
      Align := alTop;
      OnClick := accion;
    end;

    with memo do
    begin
      Parent := Panel;
      Align := alClient;
      ReadOnly := True;
      ScrollBars := ssBoth;
      Clear;
      Font.Size := 14;
      Font.Style := [fsBold];
      Lines.Add('Cotizacion: '+DATAS.Q1.FieldByName('num_cotizacion').AsString);
      Lines.Add('Mercancia: '+DATAS.Q2.FieldByName('descripcion').AsString+' Peso: '+DATAS.Q2.FieldByName('peso').AsString+' KG Vol: '+DATAS.Q2.FieldByName('volumen').AsString+' M3');
      Lines.Add('Origen: '+DATAS.Q1.FieldByName('dir_recole').AsString+' '+DATAS.Q1.FieldByName('municipio_recole').AsString+', '+DATAS.Q1.FieldByName('estado_recole').AsString);
      Lines.Add('Destino: '+DATAS.Q1.FieldByName('dir_entrega').AsString+' '+DATAS.Q1.FieldByName('municipio_entrega').AsString+', '+DATAS.Q1.FieldByName('estado_entrega').AsString);
      Lines.Add('Telefono Cliente: '+DATAS.Q1.FieldByName('telefono_cliente').AsString);
    end;

    DATAS.Q1.Next;
  end;


end;

function Cstatus_carga.llena_status(status :TComboBox) : Boolean;
var
  I: Integer;
begin
  status.Clear;
  status.TextHint := 'Status de carga';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from status_carga order by id asc');
  DATAS.Q1.Open;

  for I := 0 to datas.Q1.RecordCount - 1 do
  begin
    status.Items.Add(DATAS.Q1.FieldByName('status_nombre').AsString);
    DATAS.Q1.Next;
  end;
end;

function Ccotizacion.regresa_cotizacion(id :String; grid_mercancia, grid_servicios, grid_operativo :TStringGrid) :  Tdatos_cotizacion;
var
  I, I2 :Integer;
begin

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('select * from cotizacion where id = '+id);
  DATAS.Q1.Open;

  with DATAS.Q1 do
  begin
    datos_cotizacion.numero_cotizacion := FieldByName('num_cotizacion').AsString;
    datos_cotizacion.fecha_cotizacion := FieldByName('fecha_cotizacion').AsString;
    datos_cotizacion.status_cotizacion := FieldByName('status_cotizacion').AsInteger;
    datos_cotizacion.fecha_programacion := FieldByName('fecha_programa').AsString;
    datos_cotizacion.costo_cotizacion := FieldByName('costo_cotizacion').AsFloat;
    datos_cotizacion.utilidad := FieldByName('utilidad').AsFloat;
    datos_cotizacion.costo_enlace := FieldByName('costo_enlace').AsFloat;
    datos_cotizacion.costo_operativo := FieldByName('gasto_operativo').AsFloat;
    datos_cotizacion.rfc_cliente := FieldByName('rfc_cliente').AsString;
    datos_cotizacion.razon_social := FieldByName('razon_social').AsString;
    datos_cotizacion.tel_cliente := FieldByName('telefono_cliente').AsString;
    datos_cotizacion.correo_cliente := FieldByName('correo_cliente').AsString;
    datos_cotizacion.contacto_cliente := FieldByName('contacto_cliente').AsString;
    datos_cotizacion.dir_rec := FieldByName('dir_recole').AsString;
    datos_cotizacion.estado_rec := FieldByName('estado_recole').AsString;
    datos_cotizacion.muni_rec := FieldByName('municipio_recole').AsString;
    datos_cotizacion.dir_entrega := FieldByName('dir_entrega').AsString;
    datos_cotizacion.estado_entrega := FieldByName('estado_entrega').AsString;
    datos_cotizacion.muni_entrega := FieldByName('municipio_entrega').AsString;
    datos_cotizacion.inst_especiales := FieldByName('instr_especiales').AsString;
    datos_cotizacion.tipo_servicio := FieldByName('tipo_servicio').AsString;
    datos_cotizacion.unidad_cot := FieldByName('unidad_cotizacion').AsString;
    datos_cotizacion.enlace := FieldByName('enlace').AsString;
    datos_cotizacion.rfc_enlace := FieldByName('rfc_enlace').AsString;
    datos_cotizacion.id_unidad_enlace := FieldByName('id_unidad_enlace').AsInteger;
    datos_cotizacion.eco_enlace := FieldByName('eco_enlace').AsString;
    datos_cotizacion.modelo_enlace := FieldByName('modeloano_enlace').AsString;
    datos_cotizacion.unidad_enlace := FieldByName('unidad_enlace').AsString;
    datos_cotizacion.operador_enlace := FieldByName('operador_enlace').AsString;
    datos_cotizacion.placas_enlace := FieldByName('placas_enlace').AsString;
    datos_cotizacion.id_unidad_propia := FieldByName('id_unidad_propia').AsInteger;
    datos_cotizacion.eco_propia := FieldByName('eco_unidad_propia').AsString;
    datos_cotizacion.modelo_propia := FieldByName('modeloano_propia').AsString;
    datos_cotizacion.unidad_propia := FieldByName('unidad_propia').AsString;
    datos_cotizacion.operador_propia := FieldByName('operador_propio').AsString;
    datos_cotizacion.placas_propia := FieldByName('placas_propias').AsString;
    datos_cotizacion.odometro_inicial := FieldByName('odometro_inicial').AsFloat;
    datos_cotizacion.odometro_final := FieldByName('odometro_final').AsFloat;
    datos_cotizacion.rendimiento := FieldByName('rendimeinto').AsFloat;
    datos_cotizacion.enlace_propia := FieldByName('enlace_propia').AsBoolean;
  end;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_mercancia where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39)+' order by id asc');
  DATAS.Q1.Open;
  DATAS.Q1.First;
  grid_mercancia.RowCount := DATAS.Q1.RecordCount;

  for I := 0 to grid_mercancia.RowCount do
  begin
    grid_mercancia.Cells[0,I] := DATAS.Q1.FieldByName('cantidad').AsString;
    grid_mercancia.Cells[1,I] := DATAS.Q1.FieldByName('embalaje').AsString; //datos_cotizacion.embalaje;
    grid_mercancia.Cells[2,I] := DATAS.Q1.FieldByName('descripcion').AsString; //datos_cotizacion.descripcion;
    grid_mercancia.Cells[3,I] := DATAS.Q1.FieldByName('peso').AsString; //datos_cotizacion.peso;
    grid_mercancia.Cells[4,I] := DATAS.Q1.FieldByName('volumen').AsString; //datos_cotizacion.volumen;
    DATAS.Q1.next;
  end;


  for I := 0 to grid_servicios.RowCount do
  begin
    for I2 := 0 to grid_servicios.ColCount do
    begin
      grid_servicios.Cells[I2,I] := '';
    end;
  end;
  grid_servicios.RowCount := 1;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_servicios where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39)+' order by id asc');
  DATAS.Q1.Open;
  DATAS.Q1.First;
  grid_servicios.RowCount := DATAS.Q1.RecordCount;

  for I := 0 to grid_servicios.RowCount - 1 do
  begin
    grid_servicios.Cells[0,I] := DATAS.Q1.FieldByName('concepto').AsString; //datos_cotizacion.concepto_serv;
    grid_servicios.Cells[1,I] := DATAS.Q1.FieldByName('costo').AsString; //datos_cotizacion.costo_serv;
    DATAS.Q1.next;
  end;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_gastos_operativos where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39)+' order by id asc');
  DATAS.Q1.Open;
  DATAS.Q1.First;
  grid_operativo.RowCount := DATAS.Q1.RecordCount;

  for I := 0 to grid_operativo.RowCount - 1 do
  begin
    grid_operativo.Cells[0,I] := DATAS.Q1.FieldByName('gasto_operativo').AsString; //datos_cotizacion.gasto_ope;
    grid_operativo.Cells[1,I] := DATAS.Q1.FieldByName('costo_operativo').AsString; //datos_cotizacion.costo_ope;
    DATAS.Q1.Next;
  end;

end;

function Ccotizacion.consulta_cotizacion(status, busqueda, f_ini, f_fin : String; grid_consulta : TStringGrid) : Boolean;
var
  sql, filtro_status :String;
  I,I2: Integer;
begin
for I := 0 to grid_consulta.RowCount do
  begin
    for I2 := 0 to grid_consulta.ColCount do
    begin
      grid_consulta.Cells[I2,I] := '';
    end;
  end;
  grid_consulta.RowCount := 2;
  grid_consulta.FixedRows := 1;
  grid_consulta.Cells[0,0] := 'ID';
  grid_consulta.Cells[1,0] := '# COTIZACION';
  grid_consulta.Cells[2,0] := 'FECHA COTIZA';
  grid_consulta.Cells[3,0] := 'FECHA PROGRAMA';
  grid_consulta.Cells[4,0] := 'CLIENTE';
  grid_consulta.Cells[5,0] := 'STATUS';

  if status = '5' then
  begin
    filtro_status := ' ';
  end
  else
  begin
    filtro_status := 'status_cotizacion = '+status+' AND ';
  end;

  sql := 'SELECT id, num_cotizacion, fecha_cotizacion, fecha_programa, status_cotizacion, razon_social FROM cotizacion '+
          'WHERE '+
          ' CONCAT(rfc_cliente,'+chr(39)+' '+chr(39)+','+
                  'razon_social,'+chr(39)+' '+chr(39)+','+
                  'contacto_cliente,'+chr(39)+' '+chr(39)+','+
                  'instr_especiales,'+chr(39)+' '+chr(39)+','+
                  'tipo_servicio,'+chr(39)+' '+chr(39)+','+
                  'unidad_cotizacion,'+chr(39)+' '+chr(39)+','+
                  'enlace,'+chr(39)+' '+chr(39)+','+
                  'rfc_enlace,'+chr(39)+' '+chr(39)+','+
                  'operador_enlace,'+chr(39)+' '+chr(39)+','+
                  'placas_enlace,'+chr(39)+' '+chr(39)+','+
                  'eco_unidad_propia,'+chr(39)+' '+chr(39)+','+
                  'operador_propio,'+chr(39)+' '+chr(39)+','+
                  'placas_propias,'+chr(39)+' '+chr(39)+','+
                  'costo_cotizacion,'+chr(39)+' '+chr(39)+','+
                  'costo_enlace) LIKE '+chr(39)+'%'+busqueda+'%'+chr(39)+' AND '+
                  filtro_status +
                  'fecha_cotizacion BETWEEN '+chr(39)+f_ini+chr(39)+' AND '+chr(39)+f_fin+chr(39)+
                  ' order by id, fecha_cotizacion asc';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add(sql);
  DATAS.Q1.Open;
  grid_consulta.RowCount := DATAS.Q1.RecordCount + 1;

  for I := 1 to grid_consulta.RowCount - 1 do
  begin
    grid_consulta.Cells[0,I] := datas.Q1.FieldByName('id').AsString;
    grid_consulta.Cells[1,I] := DATAS.Q1.FieldByName('num_cotizacion').AsString;
    grid_consulta.Cells[2,I] := DATAS.Q1.FieldByName('fecha_cotizacion').AsString;
    grid_consulta.Cells[3,I] := DATAS.Q1.FieldByName('fecha_programa').AsString;
    grid_consulta.Cells[4,I] := DATAS.Q1.FieldByName('razon_social').AsString;
    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 0 then
    begin
      grid_consulta.Cells[5,I] := 'CANCELADA';
    end;
    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 1 then
    begin
      grid_consulta.Cells[5,I] := 'PENDIENTE';
    end;
    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 2 then
    begin
      grid_consulta.Cells[5,I] := 'PROGRAMADA';
    end;
    if DATAS.Q1.FieldByName('status_cotizacion').AsInteger = 3 then
    begin
      grid_consulta.Cells[5,I] := 'FINALIZADA';
    end;
    DATAS.Q1.Next;
  end;

end;

function Ccotizacion.guarda_cotizacion(datos_cotizacion :Tdatos_cotizacion; id_cotizacion :String; grid_mercancia, grid_operativo, grid_servicios :TStringGrid) :Boolean;
var
  I: Integer;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('select * from cotizacion where id = '+id_cotizacion);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
     DATAS.Q1.Edit;
  end;

  with DATAS.Q1 do
  begin
    FieldByName('num_cotizacion').AsString := datos_cotizacion.numero_cotizacion;
    FieldByName('fecha_cotizacion').AsVariant := datos_cotizacion.fecha_cotizacion;
    FieldByName('status_cotizacion').AsInteger := datos_cotizacion.status_cotizacion;
    //FieldByName('fecha_programa').AsVariant := datos_cotizacion.fecha_programacion;
    FieldByName('costo_cotizacion').AsFloat := datos_cotizacion.costo_cotizacion;
    FieldByName('utilidad').AsFloat := datos_cotizacion.utilidad;
    FieldByName('costo_enlace').AsFloat := datos_cotizacion.costo_enlace;
    FieldByName('gasto_operativo').AsFloat := datos_cotizacion.costo_operativo;
    FieldByName('rfc_cliente').AsString := datos_cotizacion.rfc_cliente;
    FieldByName('razon_social').AsString := datos_cotizacion.razon_social;
    FieldByName('telefono_cliente').AsString := datos_cotizacion.tel_cliente;
    FieldByName('correo_cliente').AsString := datos_cotizacion.correo_cliente;
    FieldByName('contacto_cliente').AsString := datos_cotizacion.contacto_cliente;
    FieldByName('dir_recole').AsString := datos_cotizacion.dir_rec;
    FieldByName('estado_recole').AsString := datos_cotizacion.estado_rec;
    FieldByName('municipio_recole').AsString := datos_cotizacion.muni_rec;
    FieldByName('dir_entrega').AsString := datos_cotizacion.dir_entrega;
    FieldByName('estado_entrega').AsString := datos_cotizacion.estado_entrega;
    FieldByName('municipio_entrega').AsString := datos_cotizacion.muni_entrega;
    FieldByName('instr_especiales').AsString := datos_cotizacion.inst_especiales;
    FieldByName('tipo_servicio').AsString := datos_cotizacion.tipo_servicio;
    FieldByName('unidad_cotizacion').AsString := datos_cotizacion.unidad_cot;
    FieldByName('enlace').AsString := datos_cotizacion.enlace;
    FieldByName('rfc_enlace').AsString := datos_cotizacion.rfc_enlace;
    FieldByName('id_unidad_enlace').AsInteger := datos_cotizacion.id_unidad_enlace;
    FieldByName('eco_enlace').AsString := datos_cotizacion.eco_enlace;
    FieldByName('modeloano_enlace').AsString := datos_cotizacion.modelo_enlace;
    FieldByName('unidad_enlace').AsString := datos_cotizacion.unidad_enlace;
    FieldByName('operador_enlace').AsString := datos_cotizacion.operador_enlace;
    FieldByName('placas_enlace').AsString := datos_cotizacion.placas_enlace;
    FieldByName('id_unidad_propia').AsInteger := datos_cotizacion.id_unidad_propia;
    FieldByName('eco_unidad_propia').AsString := datos_cotizacion.eco_propia;
    FieldByName('modeloano_propia').AsString := datos_cotizacion.modelo_propia;
    FieldByName('unidad_propia').AsString := datos_cotizacion.unidad_propia;
    FieldByName('operador_propio').AsString := datos_cotizacion.operador_propia;
    FieldByName('placas_propias').AsString := datos_cotizacion.placas_propia;
    FieldByName('odometro_inicial').AsFloat := datos_cotizacion.odometro_inicial;
    FieldByName('odometro_final').AsFloat := datos_cotizacion.odometro_final;
    FieldByName('rendimeinto').AsFloat := datos_cotizacion.rendimiento;
    FieldByName('enlace_propia').AsBoolean := datos_cotizacion.enlace_propia;
    Post;
  end;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Delete from cotizacion_mercancia where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39));
  DATAS.Q1.ExecSQL;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_mercancia');
  DATAS.Q1.Open;
  DATAS.Q1.Edit;

  for I := 0 to grid_mercancia.RowCount do
  begin
    if not(grid_mercancia.Cells[0,I] = '') then
    begin
      DATAS.Q1.Append;
      DATAS.Q1.FieldByName('n_cotizacion').AsString := datos_cotizacion.numero_cotizacion;
      DATAS.Q1.FieldByName('cantidad').AsFloat := StrToFloat(grid_mercancia.Cells[0,I]); //datos_cotizacion.cantidad;
      DATAS.Q1.FieldByName('embalaje').AsString := grid_mercancia.Cells[1,I]; //datos_cotizacion.embalaje;
      DATAS.Q1.FieldByName('descripcion').AsString := grid_mercancia.Cells[2,I]; //datos_cotizacion.descripcion;
      DATAS.Q1.FieldByName('peso').AsFloat := StrToFloat(grid_mercancia.Cells[3,I]); //datos_cotizacion.peso;
      DATAS.Q1.FieldByName('volumen').AsFloat := StrToFloat(grid_mercancia.Cells[4,I]); //datos_cotizacion.volumen;
      DATAS.Q1.Post;
    end;
  end;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Delete from cotizacion_gastos_operativos where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39));
  DATAS.Q1.ExecSQL;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_gastos_operativos');
  DATAS.Q1.Open;
  DATAS.Q1.Edit;

  for I := 0 to grid_operativo.RowCount do
  begin
    if not(grid_operativo.Cells[0,I] = '') then
    begin
      DATAS.Q1.Append;
      DATAS.Q1.FieldByName('n_cotizacion').AsString := datos_cotizacion.numero_cotizacion;
      DATAS.Q1.FieldByName('gasto_operativo').AsString := grid_operativo.Cells[0,I]; //datos_cotizacion.gasto_ope;
      DATAS.Q1.FieldByName('costo_operativo').AsFloat := StrToFloat(grid_operativo.Cells[1,I]); //datos_cotizacion.costo_ope;
      DATAS.Q1.Post;
    end;
  end;


  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Delete from cotizacion_servicios where n_cotizacion = '+chr(39)+datos_cotizacion.numero_cotizacion+chr(39));
  DATAS.Q1.ExecSQL;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cotizacion_servicios');
  DATAS.Q1.Open;
  DATAS.Q1.Edit;

  for I := 0 to grid_servicios.RowCount do
  begin
    if not(grid_servicios.Cells[0,I] = '') then
    begin
      DATAS.Q1.Append;
      DATAS.Q1.FieldByName('n_cotizacion').AsString := datos_cotizacion.numero_cotizacion;
      DATAS.Q1.FieldByName('concepto').AsString := grid_servicios.Cells[0,I]; //datos_cotizacion.concepto_serv;
      DATAS.Q1.FieldByName('costo').AsFloat := StrToFloat(grid_servicios.Cells[1,I]); //datos_cotizacion.costo_serv;
      DATAS.Q1.Post;
    end;
  end;

  ShowMessage('Cotizacion guardada con exito!!!');
end;

function Cdatos_combustible.regresa_costo() : Tdatos_combustible;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from combustibles');
  DATAS.Q1.Open;

  datos_combustible.magna := DATAS.Q1.FieldByName('Magna').AsString;
  datos_combustible.premium := DATAS.Q1.FieldByName('Premium').AsString;
  datos_combustible.diesel := DATAS.Q1.FieldByName('Diesel').AsString;

end;

function Cdatos_combustible.guarda_costo(combustible :String; costo: double) : Boolean;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from combustibles');
  DATAS.Q1.Open;
  DATAS.Q1.Edit;
  if combustible = 'MAGNA' then
  begin
    DATAS.Q1.FieldByName('Magna').AsFloat := costo;
  end;
  if combustible = 'PREMIUM' then
  begin
    DATAS.Q1.FieldByName('Premium').AsFloat := costo;
  end;
  if combustible = 'DIESEL' then
  begin
    DATAS.Q1.FieldByName('Diesel').AsFloat := costo;
  end;
  DATAS.Q1.Post;
   ShowMessage('Costo guadado con exito!!!');

end;

function Cunidad_propia.consulta_unidad_propia(id :String) : Tdatos_unidad_propia;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_propias where id = '+id);
  DATAS.Q1.Open;

  datos_unidad_propia.operador := DATAS.Q1.FieldByName('operador').AsString;
  datos_unidad_propia.celular := DATAS.Q1.FieldByName('celular').AsString;
  datos_unidad_propia.unidad := DATAS.Q1.FieldByName('unidad').AsString;
  datos_unidad_propia.modelo_ano := DATAS.Q1.FieldByName('modeloano').AsString;
  datos_unidad_propia.economico := DATAS.Q1.FieldByName('economico').AsString;
  datos_unidad_propia.placas := DATAS.Q1.FieldByName('placas').AsString;
  datos_unidad_propia.placas_remolque := DATAS.Q1.FieldByName('placas_remolque').AsString;
  datos_unidad_propia.combustible := DATAS.Q1.FieldByName('combustible').AsString;
  datos_unidad_propia.rendimiento := DATAS.Q1.FieldByName('rendimiento').AsString;
  datos_unidad_propia.odometro := DATAS.Q1.FieldByName('odometro_actual').AsString;

  datos_unidad_propia.poliza_seg  := DATAS.Q1.FieldByName('ext_poliza_seguro').AsString;
  datos_unidad_propia.tarjeta_circulacion := DATAS.Q1.FieldByName('ext_tarjeta_circulacion').AsString;
  datos_unidad_propia.licencia := DATAS.Q1.FieldByName('ext_licencia').AsString;
  datos_unidad_propia.foto_unidad := DATAS.Q1.FieldByName('ext_foto_unidad').AsString;

  datos_unidad_propia.vigencia_poliza := DATAS.Q1.FieldByName('vigencia_poliza').AsString;
  datos_unidad_propia.vigencia_licencia := DATAS.Q1.FieldByName('vigencia_licencia').AsString;

end;

function Cunidad_propia.regresa_unidad_propia(grid: TStringGrid) : Boolean;
var
  I: Integer;
  I2: Integer;
begin

  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'ECO.';
  grid.Cells[2,0] := 'MODELO/AÑO';
  grid.Cells[3,0] := 'UNIDAD';
  grid.Cells[4,0] := 'OPERADOR';
  grid.Cells[5,0] := 'PLACAS';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_propias order by economico asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;
  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('economico').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('modeloano').AsString;
    grid.Cells[3,I] := DATAS.Q1.FieldByName('unidad').AsString;
    grid.Cells[4,I] := DATAS.Q1.FieldByName('operador').AsString;
    grid.Cells[5,I] := DATAS.Q1.FieldByName('placas').AsString;
    DATAS.Q1.Next;
  end;


end;

function Cunidad_propia.guarda_unidad_propia(datos_unidad_propia : Tdatos_unidad_propia; id: String) : Boolean;
var
  archivo :Carchivos;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_propias where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;


  DATAS.Q1.FieldByName('operador').AsString := datos_unidad_propia.operador;
  DATAS.Q1.FieldByName('celular').AsString := datos_unidad_propia.celular;
  DATAS.Q1.FieldByName('unidad').AsString := datos_unidad_propia.unidad;
  DATAS.Q1.FieldByName('modeloano').AsString := datos_unidad_propia.modelo_ano;
  DATAS.Q1.FieldByName('economico').AsString := datos_unidad_propia.economico;
  DATAS.Q1.FieldByName('placas').AsString := datos_unidad_propia.placas;
  DATAS.Q1.FieldByName('placas_remolque').AsString := datos_unidad_propia.placas_remolque;
  DATAS.Q1.FieldByName('combustible').AsString := datos_unidad_propia.combustible;
  DATAS.Q1.FieldByName('rendimiento').AsString := datos_unidad_propia.rendimiento;
  DATAS.Q1.FieldByName('odometro_actual').AsFloat := StrToFloat(datos_unidad_propia.odometro);


  if (datos_unidad_propia.c_poliza = true) or not(datos_unidad_propia.poliza_seg = '') then
  begin
    DATAS.Q1.FieldByName('ext_poliza_seguro').AsString := ExtractFileName(datos_unidad_propia.poliza_seg);
    archivo.guarda_archivo(datos_unidad_propia.poliza_seg, DATAS.Q1.FieldByName('poliza_seguro'));
    DATAS.Q1.FieldByName('vigencia_poliza').AsVariant := datos_unidad_propia.vigencia_poliza;
  end;

  if (datos_unidad_propia.c_tarjeta = true) or not(datos_unidad_propia.tarjeta_circulacion = '') then
  begin
    DATAS.Q1.FieldByName('ext_tarjeta_circulacion').AsString := ExtractFileName(datos_unidad_propia.tarjeta_circulacion);
    archivo.guarda_archivo(datos_unidad_propia.tarjeta_circulacion, DATAS.Q1.FieldByName('tarjeta_circulacion'));
  end;

  if (datos_unidad_propia.c_licencia = true) or not(datos_unidad_propia.licencia = '') then
  begin
    DATAS.Q1.FieldByName('ext_licencia').AsString := ExtractFileName(datos_unidad_propia.licencia);
    archivo.guarda_archivo(datos_unidad_propia.licencia, DATAS.Q1.FieldByName('licencia'));
    DATAS.Q1.FieldByName('vigencia_licencia').AsVariant := datos_unidad_propia.vigencia_licencia;
  end;

  if (datos_unidad_propia.c_foto = true) or not(datos_unidad_propia.foto_unidad = '') then
  begin
    DATAS.Q1.FieldByName('ext_foto_unidad').AsString := ExtractFileName(datos_unidad_propia.foto_unidad);
    archivo.guarda_archivo(datos_unidad_propia.foto_unidad, DATAS.Q1.FieldByName('foto_unidad'));
  end;

  DATAS.Q1.Post;
  ShowMessage('Unidad guardada con exito!!!');
end;

function Ccotizacion.suma_cotizacion(grid, grid2 :TStringGrid; enlace, operativo :Double) : Tdatos_cotizacion;
var
  I: Integer;
  suma : Double;
begin
  suma := 0;
  operativo := 0;
  for I := 0 to grid.RowCount do
  begin
    if not(grid.Cells[1,I] = '') then
    begin
      suma := suma + StrToFloat(grid.Cells[1,I]);
    end;
  end;

  for I := 0 to grid2.RowCount do
  begin
    if not(grid2.Cells[1,I] = '') then
    begin
      operativo := operativo + StrToFloat(grid2.Cells[1,I]);
    end;
  end;

  datos_cotizacion.suma_cotiza := suma;
  datos_cotizacion.suma_operativo := operativo;
  datos_cotizacion.suma_utilidad := suma - (enlace + operativo);
end;

function Ccotizacion.generanumero_cotizacion : Tdatos_cotizacion;
var
  id : integer;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('select id from cotizacion order by id asc');
  DATAS.Q1.Open;
  DATAS.Q1.Last;

  if DATAS.Q1.IsEmpty then
  begin
    id := 1;
  end
  else
  begin
    id := DATAS.Q1.FieldByName('id').AsInteger + 1;
  end;
  datos_cotizacion.numero_cotizacion := 'C-'+FormatDateTime('yyyymmdd', now())+'/'+FormatFloat('0000',id);
end;

function Carchivos.abrir_archivo(ruta, nombre, id, col, sql: String) : Boolean;
var
  blob, fs :TStream;
  arch :String;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add(sql+id);
  DATAS.Q1.Open;

    arch := ruta+'\'+nombre;
    blob := DATAS.Q1.CreateBlobStream(DATAS.Q1.FieldByName(col), bmRead);
    try
      blob.Seek(0, soFromBeginning);
    with TFileStream.Create(arch , fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
    finally
      blob.Free
    end;
end;

function Cenlace.consulta_unidad_enlace(id :String) : Tdatos_enlace;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_enlace where id = '+id);
  DATAS.Q1.Open;

  datos_enlace.operador := DATAS.Q1.FieldByName('operador').AsString;
  datos_enlace.celular := DATAS.Q1.FieldByName('celular_operador').AsString;
  datos_enlace.unidad := DATAS.Q1.FieldByName('unidad').AsString;
  datos_enlace.ano_modelo := DATAS.Q1.FieldByName('modelo_ano').AsString;
  datos_enlace.economico := DATAS.Q1.FieldByName('economico').AsString;
  datos_enlace.placas := DATAS.Q1.FieldByName('placas').AsString;
  datos_enlace.placas_rem := DATAS.Q1.FieldByName('placas_remolque').AsString;

  datos_enlace.poliza_seg := DATAS.Q1.FieldByName('ext_poliza_seguro').AsString;
  datos_enlace.tarj_cir := DATAS.Q1.FieldByName('ext_tarjeta_circulacion').AsString;
  datos_enlace.licencia := DATAS.Q1.FieldByName('ext_licencia').AsString;
  datos_enlace.foto_unidad := DATAS.Q1.FieldByName('ext_foto_unidad').AsString;

end;

function Cenlace.regresa_unidad_enlace(rfc :String; grid: TStringGrid) : Boolean;
var
  I: Integer;
  I2: Integer;
begin

  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'ECO.';
  grid.Cells[2,0] := 'MODELO/AÑO';
  grid.Cells[3,0] := 'UNIDAD';
  grid.Cells[4,0] := 'OPERADOR';
  grid.Cells[5,0] := 'PLACAS';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_enlace where rfc_enlace = '+chr(39)+rfc+chr(39)+' order by economico asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;
  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('economico').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('modelo_ano').AsString;
    grid.Cells[3,I] := DATAS.Q1.FieldByName('unidad').AsString;
    grid.Cells[4,I] := DATAS.Q1.FieldByName('operador').AsString;
    grid.Cells[5,I] := DATAS.Q1.FieldByName('placas').AsString;
    DATAS.Q1.Next;
  end;


end;

function Carchivos.guarda_archivo(ruta :String; field: TField) :Boolean;
var
  blob, fs :TStream;
begin
  blob := DATAS.Q1.CreateBlobStream(field, bmWrite);
    try
      blob.Seek(0, soFromBeginning);
      fs := TFileStream.Create(ruta, fmOpenRead or
      fmShareDenyWrite);
      try
        blob.CopyFrom(fs, fs.Size)
      finally
        fs.Free
      end;
      finally
        blob.Free
    end;
end;

function Cenlace.guarda_unidad_enlace(datos_enlace :Tdatos_enlace; id :String) : Boolean;
var
  archivo :Carchivos;
begin


  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades_enlace where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;

  DATAS.Q1.FieldByName('rfc_enlace').AsString  := datos_enlace.rfc;
  DATAS.Q1.FieldByName('operador').AsString := datos_enlace.operador;
  DATAS.Q1.FieldByName('celular_operador').AsString := datos_enlace.celular;
  DATAS.Q1.FieldByName('unidad').AsString := datos_enlace.unidad;
  DATAS.Q1.FieldByName('modelo_ano').AsString := datos_enlace.ano_modelo;
  DATAS.Q1.FieldByName('economico').AsString := datos_enlace.economico;
  DATAS.Q1.FieldByName('placas').AsString := datos_enlace.placas;
  DATAS.Q1.FieldByName('placas_remolque').AsString := datos_enlace.placas_rem;

  if (datos_enlace.c_poliza = true) or not(datos_enlace.poliza_seg = '') then
  begin
    DATAS.Q1.FieldByName('ext_poliza_seguro').AsString := ExtractFileName(datos_enlace.poliza_seg);
    archivo.guarda_archivo(datos_enlace.poliza_seg, DATAS.Q1.FieldByName('poliza_seguro'));
  end;

  if (datos_enlace.c_tarjeta = true) or not(datos_enlace.tarj_cir = '') then
  begin
    DATAS.Q1.FieldByName('ext_tarjeta_circulacion').AsString := ExtractFileName(datos_enlace.tarj_cir);
    archivo.guarda_archivo(datos_enlace.tarj_cir, DATAS.Q1.FieldByName('tarjeta_circulacion'));
  end;

  if (datos_enlace.c_licencia = true) or not(datos_enlace.licencia = '') then
  begin
    DATAS.Q1.FieldByName('ext_licencia').AsString := ExtractFileName(datos_enlace.licencia);
    archivo.guarda_archivo(datos_enlace.licencia, DATAS.Q1.FieldByName('licencia'));
  end;

  if (datos_enlace.c_foto = true) or not(datos_enlace.foto_unidad = '') then
  begin
    DATAS.Q1.FieldByName('ext_foto_unidad').AsString := ExtractFileName(datos_enlace.foto_unidad);
    archivo.guarda_archivo(datos_enlace.foto_unidad, DATAS.Q1.FieldByName('foto_unidad'));
  end;

  DATAS.Q1.Post;
  ShowMessage('Unidad guardada con exito!!!');

end;

function Cunidades.llena_unidades(unidades :TComboBox) : Boolean;
var
  I :Integer;
begin
  unidades.Clear;
  unidades.Text := '';
  unidades.TextHint := 'selecciona una unidad';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from unidades order by nombre asc');
  DATAS.Q1.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
    unidades.Items.Add(DATAS.Q1.FieldByName('nombre').AsString);
    DATAS.Q1.Next;
  end;
end;

function Cenlace.recarga_banco_enlace(rfc :String; grid : TStringGrid) : Boolean;
var
  I: Integer;
  I2: Integer;
begin

  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'BANCO';
  grid.Cells[2,0] := 'TITULAR';
  grid.Cells[3,0] := 'CLABE INTERBANCARIA';
  grid.Cells[4,0] := 'CUENTA';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from detalle_bancos_enlaces where rfc_enlace = '+chr(39)+rfc+chr(39)+' order by banco asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;
  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('banco').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('titular').AsString;
    grid.Cells[3,I] := DATAS.Q1.FieldByName('clabe_inter').AsString;
    grid.Cells[4,I] := DATAS.Q1.FieldByName('cuenta').AsString;
    DATAS.Q1.Next;
  end;

end;

function Cenlace.guarda_banco_enlace(datos_enlace :Tdatos_enlace; id :String) :Boolean;
begin
  if datos_enlace.rfc = '' then
  begin
    Abort;
    ShowMessage('Selecciona un enlace primero');
  end;

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from detalle_bancos_enlaces where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;

  DATAS.Q1.FieldByName('rfc_enlace').AsString := datos_enlace.rfc;
  DATAS.Q1.FieldByName('banco').AsString := datos_enlace.banco;
  DATAS.Q1.FieldByName('titular').AsString := datos_enlace.titular;
  DATAS.Q1.FieldByName('clabe_inter').AsString := datos_enlace.clabeint;
  DATAS.Q1.FieldByName('cuenta').AsString := datos_enlace.cuenta;
  DATAS.Q1.Post;
  ShowMessage('Cuenta guardada con exito!!!');
end;

function Cenlace.regresa_enlace(id :String) : Tdatos_enlace;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from enlaces where id = '+id);
  DATAS.Q1.Open;

  datos_enlace.rfc := DATAS.Q1.FieldByName('rfc').AsString;
  datos_enlace.nombre := DATAS.Q1.FieldByName('nombre').AsString;
  datos_enlace.direccion := DATAS.Q1.FieldByName('direccion').AsString;
  datos_enlace.colonia := DATAS.Q1.FieldByName('colonia').AsString;
  datos_enlace.cp := DATAS.Q1.FieldByName('cp').AsString;
  datos_enlace.estado := DATAS.Q1.FieldByName('estado').AsString;
  datos_enlace.municipio := DATAS.Q1.FieldByName('municipio').AsString;
  datos_enlace.telefono := DATAS.Q1.FieldByName('telefonos').AsString;
  datos_enlace.contacto := DATAS.Q1.FieldByName('contacto').AsString;
  datos_enlace.correo1 := DATAS.Q1.FieldByName('correo_p1').AsString;
  datos_enlace.correo2 := DATAS.Q1.FieldByName('correo_p2').AsString;
  datos_enlace.status := DATAS.Q1.FieldByName('status_enlace').AsInteger;

end;

function Cenlace.consulta_enlace(consulta :String; grid: TStringGrid): Boolean;
var
  I: Integer;
  I2: Integer;
begin

  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'RFC';
  grid.Cells[2,0] := 'Razon Social';
  grid.Cells[3,0] := 'Status';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from enlaces where nombre like '+chr(39)+'%'+consulta+'%'+chr(39)+' or rfc like '+chr(39)+'%'+consulta+'%'+chr(39)+' order by nombre asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;
  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('rfc').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('nombre').AsString;
    if DATAS.Q1.FieldByName('status_enlace').AsInteger = 1 then
    begin
      grid.Cells[3,I] := 'Activo';
    end
    else
    begin
      grid.Cells[3,I] := 'Inactivo';
    end;
    DATAS.Q1.Next;
  end;

end;

function Cenlace.guarda_enlace(datos_enlace :Tdatos_enlace; id :String) : Boolean;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from enlaces where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;

  DATAS.Q1.FieldByName('rfc').AsString := datos_enlace.rfc;
  DATAS.Q1.FieldByName('nombre').AsString := datos_enlace.nombre;
  DATAS.Q1.FieldByName('direccion').AsString := datos_enlace.direccion;
  DATAS.Q1.FieldByName('colonia').AsString := datos_enlace.colonia;
  DATAS.Q1.FieldByName('cp').AsString := datos_enlace.cp;
  DATAS.Q1.FieldByName('estado').AsString := datos_enlace.estado;
  DATAS.Q1.FieldByName('municipio').AsString := datos_enlace.municipio;
  DATAS.Q1.FieldByName('telefonos').AsString := datos_enlace.telefono;
  DATAS.Q1.FieldByName('contacto').AsString := datos_enlace.contacto;
  DATAS.Q1.FieldByName('correo_p1').AsString := datos_enlace.correo1;
  DATAS.Q1.FieldByName('correo_p2').AsString := datos_enlace.correo2;
  DATAS.Q1.FieldByName('status_enlace').AsInteger := datos_enlace.status;
  DATAS.Q1.Post;
  ShowMessage('Enlace guardado con exito!!!');
end;

function Cbanco.llena_banco(banco :TComboBox) : Boolean;
var
  I :Integer;
begin
  banco.Clear;
  banco.Text := '';
  banco.TextHint := 'selecciona un Banco';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from bancos order by nombre asc');
  DATAS.Q1.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
    banco.Items.Add(DATAS.Q1.FieldByName('nombre').AsString);
    DATAS.Q1.Next;
  end;
end;

function Ccliente.elimina_reco_entrega(id :String) :Boolean;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('DELETE FROM recole_entregas WHERE recole_entregas.id = '+id);
  DATAS.Q1.ExecSQL;
  ShowMessage('Registro eliminado con exito!!!');
end;

function Ccliente.consulta_reco_entrega(id :String) : Tdatos_cliente;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('SELECT * FROM recole_entregas WHERE recole_entregas.id = '+id);
  DATAS.Q1.Open;

  datos_clientes.recentestado := DATAS.Q1.FieldByName('estado').AsString;
  datos_clientes.rec_ent_municipio := DATAS.Q1.FieldByName('municipio').AsString;
  datos_clientes.dir_recoentre := DATAS.Q1.FieldByName('direccion').AsString;
  datos_clientes.reco_entre := DATAS.Q1.FieldByName('recole_entrega').AsInteger;

end;

function Ccliente.regresa_reco_entrega(d_rfc: String; grid :TStringGrid) : Boolean;
var
  I, I2 :Integer;
begin
  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'Lugar';
  grid.Cells[2,0] := 'Direccion';
  grid.Cells[3,0] := 'Tipo';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from recole_entregas where rfc = '+chr(39)+d_rfc+chr(39)+' order by estado asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;

  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('municipio').AsString+', '+DATAS.Q1.FieldByName('estado').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('direccion').AsString;
    if DATAS.Q1.FieldByName('recole_entrega').AsInteger = 0 then
    begin
      grid.Cells[3,I] := 'Recoleccion';
    end
    else
    begin
      grid.Cells[3,I] := 'Entrega';
    end;
    DATAS.Q1.Next;
  end;
end;

function Ccliente.guarda_reco_entrega(datos_clientes :Tdatos_cliente; id : String) : Boolean;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from recole_entregas where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;

  DATAS.Q1.FieldByName('rfc').AsString := datos_clientes.rfc;
  DATAS.Q1.FieldByName('estado').AsString := datos_clientes.recentestado;
  DATAS.Q1.FieldByName('municipio').AsString := datos_clientes.rec_ent_municipio;
  DATAS.Q1.FieldByName('recole_entrega').AsInteger := datos_clientes.reco_entre;
  DATAS.Q1.FieldByName('direccion').AsString := datos_clientes.dir_recoentre;
  DATAS.Q1.Post;
  ShowMessage('Datos guadados con exito');
end;

function Cestado_muni.llena_estado (estado :TComboBox) : Boolean;
var
  I :Integer;
begin
  estado.Clear;
  estado.Text := '';
  estado.TextHint := 'Selecciona un estado';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select DISTINCT nom_ent, cve_ent from estados_muni order by nom_ent asc');
  DATAS.Q1.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
    estado.Items.Add(DATAS.Q1.FieldByName('CVE_ENT').AsString+'-'+DATAS.Q1.FieldByName('NOM_ENT').AsString);
    DATAS.Q1.Next;
  end;
end;

function Cestado_muni.llena_municipio(id :String;  municipio :TComboBox) :Boolean;
var
  I :Integer;
begin
  if id = '0' then
  begin
    ShowMessage('Selecciona un estado primero');
    Abort;
  end;
  municipio.Clear;
  municipio.Text := '';
  municipio.TextHint := 'Selecciona un municipio';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from estados_muni where cve_ent = '+id+' order by nom_mun asc');
  DATAS.Q1.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
    municipio.Items.Add(DATAS.Q1.FieldByName('NOM_MUN').AsString);
    DATAS.Q1.Next;
  end;

end;

function Clogin.acceso(us, pa :string) : TResult;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from usuarios where usuario = '+chr(39)+us+chr(39)+' and pass = '+chr(39)+pa+chr(39)+' and status_usuario = 1');
  DATAS.Q1.Open;
  if not (DATAS.Q1.IsEmpty) then
  begin
    usuario.resultado := True;
    usuario.nombre := '('+DATAS.Q1.FieldByName('nombre').AsString+')';
  end
  else
  begin
    usuario.resultado := False;
  end;

end;

function Cusocfdi.llena_usoCFDI (rfc :TEdit; var combo : TComboBox) :Boolean;
var
  I, band: Integer;
begin
  band := 0;
  combo.Clear;
  combo.Text := '';
  combo.TextHint := 'Selecciona un Uso de CFDI';
  if rfc.Text = '' then
  begin
    ShowMessage('Captura un RFC primero');
    rfc.SetFocus;
    abort;
  end;

  DATAS.Q1.SQL.Clear;
  if rfc.GetTextLen = 13 then
  begin
    DATAS.Q1.SQL.Add('Select * from usocfdi where fisica = '+chr(39)+'Sí'+chr(39)+' order by id asc');
    band := 1;
  end;
  if rfc.GetTextLen = 12 then
  begin
    DATAS.Q1.SQL.Add('Select * from usocfdi where moral = '+chr(39)+'Sí'+chr(39)+' order by id asc');
    band := 1;
  end;
  if band = 0 then
  begin
    ShowMessage('RFC invalido o incompleto');
    rfc.SetFocus;
    abort;
  end;
  DATAS.Q1.Open;

  for I := 0 to DATAS.Q1.RecordCount - 1 do
  begin
    combo.Items.Add(DATAS.Q1.FieldByName('id').AsString+'-'+DATAS.Q1.FieldByName('descripcion').AsString);
    DATAS.Q1.Next;
  end;

end;

function Ccliente.guarda_cliente(datos_clientes :Tdatos_cliente; id :String) : Boolean;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cliente where id = '+id);
  DATAS.Q1.Open;

  if DATAS.Q1.IsEmpty then
  begin
    DATAS.Q1.Edit;
    DATAS.Q1.Append;
  end
  else
  begin
    DATAS.Q1.Edit;
  end;

  DATAS.Q1.FieldByName('rfc').AsString := datos_clientes.rfc;
  DATAS.Q1.FieldByName('nombre').AsString := datos_clientes.razonsocial;
  DATAS.Q1.FieldByName('usocfdi').AsString := datos_clientes.d_usoCFDI;
  DATAS.Q1.FieldByName('direccion').AsString := datos_clientes.direccion;
  DATAS.Q1.FieldByName('correo_factura').AsString := datos_clientes.correo_factura;
  DATAS.Q1.FieldByName('correo_op').AsString := datos_clientes.correo_op;
  DATAS.Q1.FieldByName('contactos').AsString := datos_clientes.contactos;
  DATAS.Q1.FieldByName('status_cliente').AsInteger := datos_clientes.status;
  DATAS.Q1.FieldByName('id_usocfdi').AsString := datos_clientes.c_usoCFDI;
  DATAS.Q1.FieldByName('telefono').AsString := datos_clientes.telefono;
  DATAS.Q1.Post;
  ShowMessage('Datos guadados con exito');
end;

function Ccliente.consulta_cliente(consulta :String; grid :TStringGrid) : Boolean;
var
  I: Integer;
  I2: Integer;
begin

  for I := 0 to grid.RowCount do
  begin
    for I2 := 0 to grid.ColCount do
    begin
      grid.Cells[I2,I] := '';
    end;
  end;
  grid.RowCount := 2;
  grid.FixedRows := 1;
  grid.Cells[0,0] := 'ID';
  grid.Cells[1,0] := 'RFC';
  grid.Cells[2,0] := 'Razon Social';
  grid.Cells[3,0] := 'Status';

  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cliente where nombre like '+chr(39)+'%'+consulta+'%'+chr(39)+' or rfc like '+chr(39)+'%'+consulta+'%'+chr(39)+' order by nombre asc');
  DATAS.Q1.Open;

  grid.RowCount := DATAS.Q1.RecordCount + 1;
  for I := 1 to grid.RowCount do
  begin
    grid.Cells[0,I] := DATAS.Q1.FieldByName('id').AsString;
    grid.Cells[1,I] := DATAS.Q1.FieldByName('rfc').AsString;
    grid.Cells[2,I] := DATAS.Q1.FieldByName('nombre').AsString;
    if DATAS.Q1.FieldByName('status_cliente').AsInteger = 1 then
    begin
      grid.Cells[3,I] := 'Activo';
    end
    else
    begin
      grid.Cells[3,I] := 'Inactivo';
    end;
    DATAS.Q1.Next;
  end;

end;

function Ccliente.regresa_cliente(id :String) : Tdatos_cliente;
begin
  DATAS.Q1.SQL.Clear;
  DATAS.Q1.SQL.Add('Select * from cliente where id = '+id);
  DATAS.Q1.Open;

  datos_clientes.rfc := DATAS.Q1.FieldByName('rfc').AsString;
  datos_clientes.razonsocial := DATAS.Q1.FieldByName('nombre').AsString;
  datos_clientes.d_usoCFDI := DATAS.Q1.FieldByName('usocfdi').AsString;
  datos_clientes.c_usoCFDI := DATAS.Q1.FieldByName('id_usocfdi').AsString;
  datos_clientes.direccion := DATAS.Q1.FieldByName('direccion').AsString;
  datos_clientes.correo_factura := DATAS.Q1.FieldByName('correo_factura').AsString;
  datos_clientes.correo_op := DATAS.Q1.FieldByName('correo_op').AsString;
  datos_clientes.contactos := DATAS.Q1.FieldByName('contactos').AsString;
  datos_clientes.status := DATAS.Q1.FieldByName('status_cliente').AsInteger;
  datos_clientes.telefono := DATAS.Q1.FieldByName('telefono').AsString;
end;

end.
