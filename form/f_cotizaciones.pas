unit f_cotizaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Buttons, Vcl.Grids;

type
  Tcotizaciones = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    Panel1: TPanel;
    Label6: TLabel;
    Edit5: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    Salirconsulta1: TMenuItem;
    Guardar1: TMenuItem;
    Consultar1: TMenuItem;
    CategoryPanel2: TCategoryPanel;
    Panel2: TPanel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit9: TEdit;
    CategoryPanel3: TCategoryPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Memo1: TMemo;
    Label13: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Memo2: TMemo;
    Label14: TLabel;
    ComboBox4: TComboBox;
    Label15: TLabel;
    ComboBox5: TComboBox;
    Label16: TLabel;
    Memo3: TMemo;
    CategoryPanel4: TCategoryPanel;
    Panel4: TPanel;
    Label17: TLabel;
    ComboBox6: TComboBox;
    Edit10: TEdit;
    ComboBox7: TComboBox;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    StringGrid1: TStringGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CategoryPanel5: TCategoryPanel;
    Panel5: TPanel;
    ComboBox8: TComboBox;
    Edit14: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    StringGrid2: TStringGrid;
    ComboBox9: TComboBox;
    StringGrid3: TStringGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    CategoryPanel6: TCategoryPanel;
    Panel6: TPanel;
    Edit15: TEdit;
    Label18: TLabel;
    Edit16: TEdit;
    Label19: TLabel;
    Edit17: TEdit;
    Button1: TButton;
    StringGrid4: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Enlace1: TMenuItem;
    Activar1: TMenuItem;
    CategoryPanel7: TCategoryPanel;
    CategoryPanel8: TCategoryPanel;
    Panel7: TPanel;
    StringGrid5: TStringGrid;
    Panel8: TPanel;
    ComboBox10: TComboBox;
    Edit18: TEdit;
    StringGrid6: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    Edit19: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Label24: TLabel;
    Edit23: TEdit;
    Label25: TLabel;
    Edit24: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Exportar1: TMenuItem;
    Correocliente1: TMenuItem;
    Correoenlace1: TMenuItem;
    Impresiones1: TMenuItem;
    cotizacion1: TMenuItem;
    ordendecargaenlace1: TMenuItem;
    correoordencargaenlace1: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CategoryPanel1Collapse(Sender: TObject);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure ComboBox4DropDown(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure ComboBox4Select(Sender: TObject);
    procedure ComboBox3DropDown(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ComboBox9DropDown(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid4DblClick(Sender: TObject);
    procedure StringGrid4SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CategoryPanel2Expand(Sender: TObject);
    procedure CategoryPanel3Expand(Sender: TObject);
    procedure CategoryPanel4Expand(Sender: TObject);
    procedure CategoryPanel5Expand(Sender: TObject);
    procedure CategoryPanel6Expand(Sender: TObject);
    procedure Salirconsulta1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Activar1Click(Sender: TObject);
    procedure CategoryPanel7Expand(Sender: TObject);
    procedure CategoryPanel8Expand(Sender: TObject);
    procedure StringGrid5DblClick(Sender: TObject);
    procedure StringGrid5SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure StringGrid6DblClick(Sender: TObject);
    procedure StringGrid6KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure StringGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure limpiar(Sender: TObject);
    procedure Edit23DblClick(Sender: TObject);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24Change(Sender: TObject);
    procedure Guardar1Click(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure ComboBox4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    var
    id_recole_entrega, n_cotizacion, id_cliente, id_enlace, rfc_cliente, id_estado_rec,
    id_estado_entr, estado_recolectar, estado_entr, id_cotizacion : String;
    List: TStrings;
    row : Integer;

    { Public declarations }
  end;
  type
      borragrid = class(TStringGrid);

var
  cotizaciones: Tcotizaciones;




implementation

{$R *.dfm}

uses v_consulta_cliente, c_data, v_consulta_enlace, v_consulta_recole_entrega,
  v_consulta_cotizacion;

procedure Tcotizaciones.limpiar(Sender: TObject);
var
  i :Integer;
  I2, I3: Integer;
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
    if Components[i] is TStringGrid then
    begin
      for I2 := 0 to TStringGrid(Components[i]).RowCount do
      begin
        for I3 := 0 to TStringGrid(Components[i]).ColCount do
        begin
          TStringGrid(Components[i]).Cells[I3,I2] := '';
        end;
      end;
      TStringGrid(Components[i]).RowCount := 1;
    end;
  end;
end;

procedure Tcotizaciones.Activar1Click(Sender: TObject);
var
  I: Integer;
  suma :Ccotizacion;
  I2: Integer;
begin
  if Activar1.Checked = false then
  begin
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
  end
  else
  begin
    Activar1.Checked := false;
    CategoryPanel6.Visible := false;
    CategoryPanel7.Visible := True;
    CategoryPanel8.Visible := True;
    Edit15.Text := '0';
  end;
  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
  Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
end;

procedure Tcotizaciones.BitBtn1Click(Sender: TObject);
var
  i :Integer;
  suma :Ccotizacion;
begin
  i := StringGrid6.RowCount - 1;
  StringGrid6.RowCount := StringGrid6.RowCount + 1;
  StringGrid6.Cells[0,i] := ComboBox10.Text;
  StringGrid6.Cells[1,i] := Edit18.Text;

  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
  Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
  ComboBox10.ItemIndex := -1;
  Edit18.Clear;
end;

procedure Tcotizaciones.BitBtn2Click(Sender: TObject);
var
  i : Integer;
begin
  i := StringGrid1.RowCount - 1;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
  StringGrid1.Cells[0,i] := Edit10.Text;
  StringGrid1.Cells[1,i] := ComboBox7.Text;
  StringGrid1.Cells[2,i] := Edit11.Text;
  StringGrid1.Cells[3,i] := Edit12.Text;
  StringGrid1.Cells[4,i] := Edit13.Text;
  Edit10.Clear; Edit11.Clear; Edit12.Clear; Edit13.Clear;
  ComboBox7.ItemIndex := -1;

end;

procedure Tcotizaciones.BitBtn3Click(Sender: TObject);
begin
  borragrid(StringGrid1).Rows[row].Clear;
  borragrid(StringGrid1).DeleteRow(row);
end;

procedure Tcotizaciones.BitBtn4Click(Sender: TObject);
var
  i :Integer;
  suma :Ccotizacion;
begin
  i := StringGrid2.RowCount - 1;
  StringGrid2.RowCount := StringGrid2.RowCount + 1;
  StringGrid2.Cells[0,i] := ComboBox8.Text;
  StringGrid2.Cells[1,i] := Edit14.Text;

  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
  Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
  ComboBox8.ItemIndex := -1;
  Edit14.Clear;
end;

procedure Tcotizaciones.BitBtn5Click(Sender: TObject);
var
  suma :Ccotizacion;
begin
  borragrid(StringGrid2).Rows[row].Clear;
  borragrid(StringGrid2).DeleteRow(row);
  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
  Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
end;

procedure Tcotizaciones.BitBtn6Click(Sender: TObject);
begin
  borragrid(StringGrid3).Rows[row].Clear;
  borragrid(StringGrid3).DeleteRow(row);

end;

procedure Tcotizaciones.BitBtn7Click(Sender: TObject);
var
  i :Integer;
begin
  i := StringGrid3.RowCount - 1;
  StringGrid3.RowCount := StringGrid3.RowCount + 1;
  StringGrid3.Cells[0,i] := ComboBox9.Text;
end;

procedure Tcotizaciones.BitBtn8Click(Sender: TObject);
var
  suma :Ccotizacion;
begin
  borragrid(StringGrid6).Rows[row].Clear;
  borragrid(StringGrid6).DeleteRow(row);
  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
  Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
end;

procedure Tcotizaciones.Button1Click(Sender: TObject);
begin
  consulta_enlace.activo_form := 3;
  consulta_enlace.Show;
end;

procedure Tcotizaciones.Button2Click(Sender: TObject);
begin
  consulta_cliente.activo_form := 3;
  consulta_cliente.Show;
end;

procedure Tcotizaciones.Button3Click(Sender: TObject);
var
  regresa : Ccliente;
begin
  regresa.regresa_reco_entrega(Edit4.Text, consulta_recole_entrega.StringGrid5);
  consulta_recole_entrega.Show;
end;

procedure Tcotizaciones.CategoryPanel1Collapse(Sender: TObject);
begin
   if CategoryPanel1.Collapsed = true then
  begin
    CategoryPanel1.Collapsed := false;
  end;
end;

procedure Tcotizaciones.CategoryPanel2Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel6.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel8.Collapsed := True;
end;

procedure Tcotizaciones.CategoryPanel3Expand(Sender: TObject);
begin
  CategoryPanel2.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel6.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel8.Collapsed := True;
end;

procedure Tcotizaciones.CategoryPanel4Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel2.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel6.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel8.Collapsed := True;
end;

procedure Tcotizaciones.CategoryPanel5Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel2.Collapsed := true;
  CategoryPanel6.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel8.Collapsed := True;
end;

procedure Tcotizaciones.CategoryPanel6Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel2.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel8.Collapsed := True;
end;

procedure Tcotizaciones.CategoryPanel7Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel2.Collapsed := true;
  CategoryPanel6.Collapsed := True;
  CategoryPanel8.Collapsed := True;
  StringGrid5.Cells[6,0] := 'Selec.';
end;

procedure Tcotizaciones.CategoryPanel8Expand(Sender: TObject);
begin
  CategoryPanel3.Collapsed := true;
  CategoryPanel4.Collapsed := true;
  CategoryPanel5.Collapsed := true;
  CategoryPanel2.Collapsed := true;
  CategoryPanel7.Collapsed := True;
  CategoryPanel6.Collapsed := True;
end;

procedure Tcotizaciones.ComboBox2DropDown(Sender: TObject);
var
  estado : Cestado_muni;
begin
  estado.llena_estado(comboBox2);
end;

procedure Tcotizaciones.ComboBox2Exit(Sender: TObject);
begin
    ComboBox2.Text := estado_recolectar;
end;

procedure Tcotizaciones.ComboBox2Select(Sender: TObject);
begin
  List := TStringList.Create;
  ExtractStrings(['-'], [], PChar(ComboBox2.Text), List);
  id_estado_rec := list[0];
  estado_recolectar := list[1];

end;

procedure Tcotizaciones.ComboBox3DropDown(Sender: TObject);
var
  municipio : Cestado_muni;
begin

   municipio.llena_municipio(id_estado_rec, ComboBox3);
end;

procedure Tcotizaciones.ComboBox4DropDown(Sender: TObject);
var
  estado : Cestado_muni;
begin
  estado.llena_estado(comboBox4);
end;

procedure Tcotizaciones.ComboBox4Exit(Sender: TObject);
begin
  ComboBox4.Text := estado_entr;
end;

procedure Tcotizaciones.ComboBox4Select(Sender: TObject);
begin
  List := TStringList.Create;
  ExtractStrings(['-'], [], PChar(ComboBox4.Text), List);
  id_estado_entr := list[0];
  estado_entr := list[1];

end;

procedure Tcotizaciones.ComboBox5DropDown(Sender: TObject);
var
  municipio : Cestado_muni;
begin
   municipio.llena_municipio(id_estado_entr, ComboBox5);
end;

procedure Tcotizaciones.ComboBox9DropDown(Sender: TObject);
var
  llena_unidades :Cunidades;
begin
  llena_unidades.llena_unidades(ComboBox9);
end;

procedure Tcotizaciones.Consultar1Click(Sender: TObject);
begin
  Salirconsulta1.Visible := True;
  consulta_cotizaciones.Show;
end;

procedure Tcotizaciones.Edit15Change(Sender: TObject);
var
  suma :Ccotizacion;
begin
  if Edit15.Text = '' then
  begin
    Edit15.Text := '0';
  end;
  Edit3.Text := Edit15.Text;
  suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
  Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
end;

procedure Tcotizaciones.Edit23DblClick(Sender: TObject);
begin
  if Edit23.ReadOnly = false then
  begin
    Edit23.ReadOnly := true;
  end
  else
  begin
    Edit23.ReadOnly := False;
  end;
end;

procedure Tcotizaciones.Edit23KeyPress(Sender: TObject; var Key: Char);
var
  guarda :Cdatos_combustible;
begin
  if key = #13 then
  begin
    guarda.guarda_costo(Edit22.Text, StrToFloat(Edit23.Text));
    Edit23.ReadOnly := false;
  end;
end;

procedure Tcotizaciones.Edit24Change(Sender: TObject);
var
  rend, costo, kl, resultado :double;
begin
  if Edit24.Text = '' then
  begin
    Edit24.Text := '0';
    Label26.Caption := '000';

  end
  else
  begin
    rend := StrToFloat(Edit21.Text);
    costo := StrToFloat(Edit23.Text);
    kl := StrToFloat(Edit24.Text);
    resultado := ((kl / rend) * costo);
    Label26.Caption := FormatFloat('#,##0.00', resultado);
  end;
end;

procedure Tcotizaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tcotizaciones.FormResize(Sender: TObject);
begin
   Panel1.Left := (CategoryPanel1.Width div 2) - (Panel1.Width div 2); // asi va al centro horizontal
   Panel1.Top := (CategoryPanel1.Height  div 2) - (Panel1.Height div 2);

//   Panel2.Left := (CategoryPanel2.Width div 2) - (Panel2.Width div 2); // asi va al centro horizontal
//   Panel2.Top := (CategoryPanel2.Height  div 2) - (Panel2.Height div 2);
//   Panel3.Left := (CategoryPanel3.Width div 2) - (Panel3.Width div 2); // asi va al centro horizontal
//   Panel3.Top := (CategoryPanel3.Height  div 2) - (Panel3.Height div 2);
end;

procedure Tcotizaciones.FormShow(Sender: TObject);
var
  genera_numero :Ccotizacion;
  regresa : Cunidad_propia;
begin
  genera_numero.generanumero_cotizacion();
  n_cotizacion := datos_cotizacion.numero_cotizacion;
  Label4.Caption := n_cotizacion;
  id_cotizacion := '0';
  Edit3.Text := '0';
  Edit2.Text := '0';
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  Salirconsulta1.Visible := False;
  ComboBox1.ItemIndex := 1;
  CategoryPanel6.Visible := false;
  CategoryPanel7.Visible := True;
  CategoryPanel8.Visible := True;
  regresa.regresa_unidad_propia(StringGrid5);
  Caption := 'Cotizaciones operativas';
end;

procedure Tcotizaciones.Guardar1Click(Sender: TObject);
var
  guardar_cotizacion :Ccotizacion;
  datos : Tdatos_cotizacion;
  I: integer;
begin

  with datos do
  begin
    numero_cotizacion := Label4.Caption;
    fecha_cotizacion := FormatDateTime('yyyy-mm-dd', now());
    status_cotizacion := ComboBox1.ItemIndex;
    costo_cotizacion := StrToFloat(Edit5.Text);
    utilidad := StrToFloat(Edit1.Text);
    costo_enlace := StrToFloat(Edit3.Text);
    costo_operativo := StrToFloat(Edit2.Text);
    rfc_cliente := Edit4.Text;
    razon_social := Edit6.Text;
    correo_cliente := Edit7.Text;
    contacto_cliente := Edit8.Text;
    tel_cliente := Edit9.Text;
    dir_rec := Memo1.Text;
    estado_rec := ComboBox2.Text;
    muni_rec := ComboBox3.Text;
    dir_entrega:= Memo2.Text;
    estado_entrega := ComboBox4.Text;
    muni_entrega := ComboBox5.Text;
    inst_especiales := Memo3.Text;
    tipo_servicio := ComboBox6.Text;
    unidad_cot := StringGrid3.Cells[0,0];
    enlace := Edit16.Text;
    rfc_enlace := Edit17.Text;

    if Activar1.Checked = true then
    begin
      enlace_propia := true;
      for I := 1 to StringGrid4.RowCount - 1 do
      begin
        if StringGrid4.Cells[6,I] = 'X' then
        begin
          id_unidad_enlace := StrToInt(StringGrid4.Cells[0,I]);
          eco_enlace := StringGrid4.Cells[1,I];
          modelo_enlace := StringGrid4.Cells[2,I];
          unidad_enlace := StringGrid4.Cells[3,I];
          operador_enlace := StringGrid4.Cells[4,I];
          placas_enlace := StringGrid4.Cells[5,I];
        end;
      end;
    end
    else
    begin
      enlace_propia := False;
      for I := 1 to StringGrid5.RowCount - 1 do
      begin
        if StringGrid5.Cells[6,I] = 'X' then
        begin
          id_unidad_propia := StrToInt(StringGrid5.Cells[0,I]);
          eco_propia := StringGrid5.Cells[1,I];
          modelo_propia := StringGrid5.Cells[2,I];
          unidad_propia := StringGrid5.Cells[3,I];
          operador_propia := StringGrid5.Cells[4,I];
          placas_propia := StringGrid5.Cells[5,I];
        end;
      end;
      odometro_inicial := StrToFloat(Edit19.Text);
      odometro_final := StrToFloat(Edit20.Text);
      rendimiento := StrToFloat(edit21.Text);
    end;
  end;

  guardar_cotizacion.guarda_cotizacion(datos, id_cotizacion, StringGrid1, StringGrid6, StringGrid2);
  limpiar(Sender);
  FormShow(Sender);
end;

procedure Tcotizaciones.Salirconsulta1Click(Sender: TObject);
begin
    limpiar(Sender);
    FormShow(Sender);
end;

procedure Tcotizaciones.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
end;

procedure Tcotizaciones.StringGrid2DblClick(Sender: TObject);
begin
  StringGrid2.Options := StringGrid2.Options - [goRowSelect];
  StringGrid2.Options := StringGrid2.Options + [goEditing];
end;

procedure Tcotizaciones.StringGrid2KeyPress(Sender: TObject; var Key: Char);
var
  suma :Ccotizacion;
begin
  if  Key = #13 then
  begin
    StringGrid2.Options := StringGrid2.Options + [goRowSelect];
    StringGrid2.Options := StringGrid2.Options - [goEditing];
    suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
    Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
    Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
    Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
  end;
end;

procedure Tcotizaciones.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
end;

procedure Tcotizaciones.StringGrid3SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
end;

procedure Tcotizaciones.StringGrid4DblClick(Sender: TObject);
  var
  I :Integer;
begin

  if not (StringGrid4.Cells[6,row] = 'X') then
  begin
    for I := 1 to StringGrid4.RowCount do
    begin
      StringGrid4.Cells[6,I] := ''
    end;
    StringGrid4.Cells[6,row] := 'X';
  end
  else
  begin
    StringGrid4.Cells[6,row] := '';
  end;
end;

procedure Tcotizaciones.StringGrid4SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
  StringGrid4.Hint := StringGrid4.Cells[ACol,row];
end;

procedure Tcotizaciones.StringGrid5DblClick(Sender: TObject);
  var
  I :Integer;
  consulta_propia :Cunidad_propia;
  consulta_combustible :Cdatos_combustible;
begin
  if not (StringGrid5.Cells[6,row] = 'X') then
  begin
    for I := 1 to StringGrid5.RowCount do
    begin
      StringGrid5.Cells[6,I] := ''
    end;
    StringGrid5.Cells[6,row] := 'X';
    consulta_propia.consulta_unidad_propia(StringGrid5.Cells[0,row]);
    Edit19.Text := datos_unidad_propia.odometro;
    Edit20.Text := '0';
    Edit21.Text := datos_unidad_propia.rendimiento;
    Edit22.Text := datos_unidad_propia.combustible;
    consulta_combustible.regresa_costo();
    if datos_unidad_propia.combustible = 'Magna' then
    begin
      Edit23.Text := datos_combustible.magna;
    end;
    if datos_unidad_propia.combustible = 'Premium' then
    begin
      Edit23.Text := datos_combustible.premium;
    end;
    if datos_unidad_propia.combustible = 'Diesel' then
    begin
      Edit23.Text := datos_combustible.diesel;
    end;
  end
  else
  begin
    StringGrid5.Cells[6,row] := '';
  end;
end;

procedure Tcotizaciones.StringGrid5SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
end;

procedure Tcotizaciones.StringGrid6DblClick(Sender: TObject);
begin
  StringGrid6.Options := StringGrid6.Options - [goRowSelect];
  StringGrid6.Options := StringGrid6.Options + [goEditing];
end;

procedure Tcotizaciones.StringGrid6KeyPress(Sender: TObject; var Key: Char);
var
  suma :Ccotizacion;
begin
  if  Key = #13 then
  begin
    StringGrid6.Options := StringGrid6.Options + [goRowSelect];
    StringGrid6.Options := StringGrid6.Options - [goEditing];
    suma.suma_cotizacion(StringGrid2, StringGrid6, StrToFloat(Edit3.Text), StrToFloat(Edit2.Text));
    Edit5.Text := FloatToStr(datos_cotizacion.suma_cotiza);
    Edit1.Text := FloatToStr(datos_cotizacion.suma_utilidad);
    Edit2.Text := FloatToStr(datos_cotizacion.suma_operativo);
  end;
end;

end.
