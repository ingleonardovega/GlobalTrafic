unit v_consulta_recole_entrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids;

type
  Tconsulta_recole_entrega = class(TForm)
    StringGrid5: TStringGrid;
    procedure StringGrid5DblClick(Sender: TObject);
    procedure StringGrid5SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    id :String;
    row :integer;
    { Public declarations }
  end;

var
  consulta_recole_entrega: Tconsulta_recole_entrega;

implementation

{$R *.dfm}

uses c_data, f_cotizaciones;

procedure Tconsulta_recole_entrega.StringGrid5DblClick(Sender: TObject);
var
  consulta :Ccliente;
begin
   id := stringGrid5.Cells[0,row];
  consulta.consulta_reco_entrega(id);

  if datos_clientes.reco_entre = 0 then
  begin
    cotizaciones.Memo1.Text := datos_clientes.dir_recoentre;
    cotizaciones.ComboBox2.Text := datos_clientes.recentestado;
    cotizaciones.ComboBox3.Text := datos_clientes.rec_ent_municipio;
  end;

  if datos_clientes.reco_entre = 1 then
  begin
    cotizaciones.Memo2.Text := datos_clientes.dir_recoentre;
    cotizaciones.ComboBox4.Text := datos_clientes.recentestado;
    cotizaciones.ComboBox5.Text := datos_clientes.rec_ent_municipio;
  end;
  Close;
end;

procedure Tconsulta_recole_entrega.StringGrid5SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  row := ARow;
end;

end.
