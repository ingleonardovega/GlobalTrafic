unit f_programaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, RzGrids;

type
  Tprogramaciones = class(TForm)
    Panel1: TPanel;
    Edit5: TEdit;
    Edit1: TEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    ComboBox1: TComboBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    CategoryPanelGroup1: TCategoryPanelGroup;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure accion(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  programaciones: Tprogramaciones;

implementation

{$R *.dfm}

uses c_data;

procedure Tprogramaciones.Button1Click(Sender: TObject);
var
 busqueda :Cprograma_carga;
 I :Integer;
 CategoryPanelGroup1 :TCategoryPanelGroup;
 Titulo : String;
begin


  TCategoryPanelGroup(Self.FindComponent('CategoryPanelGroup1')).Free;
  CategoryPanelGroup1 := TCategoryPanelGroup.Create(programaciones);
  CategoryPanelGroup1.Parent := programaciones;
  CategoryPanelGroup1.Name := 'CategoryPanelGroup1';
  CategoryPanelGroup1.HeaderFont.Size := 14;
  //CategoryPanelGroup1.HeaderFont.Style := [fsBold];
  CategoryPanelGroup1.Align := alClient;

  Titulo := '';
  busqueda.consulta_programa('','',FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date), FormatDateTime('yyyy-mm-dd', DateTimePicker3.Date), CategoryPanelGroup1);

end;

procedure Tprogramaciones.accion(Sender :TObject);
begin
  if (Sender as TButton).Name = 'boton5' then
  begin
    
  end;

end;

procedure Tprogramaciones.ComboBox1DropDown(Sender: TObject);
var
  llena : Cstatus_carga;
begin
  llena.llena_status(ComboBox1);
end;

procedure Tprogramaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tprogramaciones.FormShow(Sender: TObject);
  var
  busqueda : Cprograma_carga;
begin

  DateTimePicker1.Date := NOW();
  DateTimePicker2.Date := NOW();
  DateTimePicker3.Date := NOW();
//  busqueda.consulta_programa('5','',FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date), FormatDateTime('yyyy-mm-dd', DateTimePicker3.Date), CategoryPanelGroup1);
  //busqueda.consulta_cotizacion('5', '', FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date), FormatDateTime('yyyy-mm-dd', DateTimePicker3.Date), StringGrid1 );
end;

end.
