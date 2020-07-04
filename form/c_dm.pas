unit c_dm;

interface

uses
  System.SysUtils, System.Classes, DBAccess, UniDacVcl, UniProvider,
  MySQLUniProvider, Data.DB, Uni, MemDS;

type
  TDATAS = class(TDataModule)
    conexion: TUniConnection;
    MySQL: TMySQLUniProvider;
    Q1: TUniQuery;
    Q2: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DATAS: TDATAS;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDATAS.DataModuleCreate(Sender: TObject);
begin
   with conexion do
  begin
    ProviderName := 'MySQL';
    Server := 'www.transportes-halcones.com.mx';
    Username := 'globaltrafic';
    Password := '1q2w3e4rGlobalTrafic';
    Database := 'globaltrafic_19';
    Connect;
  end;
end;

end.
