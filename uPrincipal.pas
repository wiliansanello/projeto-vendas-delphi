unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Movimentao2: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Categoria2: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Clientes1: TMenuItem;
    N3: TMenuItem;
    Produtos1: TMenuItem;
    N4: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
    {
    dtmPrincipal := TdtmPrincipal.Create(Self);
    dtmPrincipal.ConexaoDB.SQLHourGlass := True;
    dtmPrincipal.ConexaoDB.Protocol := 'mssql';
    dtmPrincipal.ConexaoDB.LibraryLocation := 'C:\Users\wilia\delphi-projects\ntwdblib.dll';
    dtmPrincipal.ConexaoDB.HostName := '.';
    dtmPrincipal.ConexaoDB.Port := 1433;
    dtmPrincipal.ConexaoDB.User := 'production';
    dtmPrincipal.ConexaoDB.Password := 'production';
    dtmPrincipal.ConexaoDB.Database := 'VENDAS';
    dtmPrincipal.ConexaoDB.Connected := True;
    }

    dtmPrincipal := TdtmPrincipal.Create(Self);
    with dtmPrincipal.ConexaoDB do begin
      SQLHourGlass := True;
      Protocol := 'mssql';
      LibraryLocation := 'C:\Users\wilia\delphi-projects\ntwdblib.dll';
      HostName := '.';
      Port := 1433;
      User := 'production';
      Password := 'Wansanello@01#';
      Database := 'VENDAS';
      Connected := True;
    end;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Application.Terminate;
  //Close;
end;

end.
