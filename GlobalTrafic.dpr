program GlobalTrafic;

uses
  Vcl.Forms,
  f_main in 'form\f_main.pas' {main},
  Vcl.Themes,
  Vcl.Styles,
  f_login in 'form\f_login.pas' {login},
  c_dm in 'form\c_dm.pas' {DATAS: TDataModule},
  c_data in 'form\c_data.pas',
  f_cliente in 'form\f_cliente.pas' {cliente},
  v_consulta_cliente in 'form\v_consulta_cliente.pas' {consulta_cliente},
  f_recole_entrega in 'form\f_recole_entrega.pas' {recole_entrega},
  f_enlace in 'form\f_enlace.pas' {enlace},
  v_consulta_enlace in 'form\v_consulta_enlace.pas' {consulta_enlace},
  f_unidades_enlace in 'form\f_unidades_enlace.pas' {alta_unidades_enlace},
  f_cotizaciones in 'form\f_cotizaciones.pas' {cotizaciones},
  v_consulta_recole_entrega in 'form\v_consulta_recole_entrega.pas' {consulta_recole_entrega},
  f_unidades_propias in 'form\f_unidades_propias.pas' {unidades_propias},
  v_consulta_cotizacion in 'form\v_consulta_cotizacion.pas' {consulta_cotizaciones},
  f_programaciones in 'form\f_programaciones.pas' {programaciones};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(TDATAS, DATAS);
  Application.CreateForm(Tconsulta_cliente, consulta_cliente);
  Application.CreateForm(Tconsulta_enlace, consulta_enlace);
  Application.CreateForm(Tconsulta_recole_entrega, consulta_recole_entrega);
  Application.CreateForm(Tconsulta_cotizaciones, consulta_cotizaciones);
  Application.Run;
end.
