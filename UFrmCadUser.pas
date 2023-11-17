unit UFrmCadUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UFrmUsuario, UFrmCadPais, UFrmCadEstado, UFrmCadCidade, UFrmCadCliente;

type
  Tlogin = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    USURIO1: TMenuItem;
    CIDADE1: TMenuItem;
    ESTADO1: TMenuItem;
    PAS1: TMenuItem;
    CLIENTE1: TMenuItem;
    procedure USURIO1Click(Sender: TObject);
    procedure PAS1Click(Sender: TObject);
    procedure ESTADO1Click(Sender: TObject);
    procedure CIDADE1Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

{$R *.dfm}

procedure Tlogin.CIDADE1Click(Sender: TObject);
begin
    cadcidade.ShowModal;
end;

procedure Tlogin.CLIENTE1Click(Sender: TObject);
begin
    cadcliente.ShowModal;
end;

procedure Tlogin.ESTADO1Click(Sender: TObject);
begin
       cadestado.ShowModal;
end;

procedure Tlogin.PAS1Click(Sender: TObject);
begin
    cadpais.ShowModal;
end;

procedure Tlogin.USURIO1Click(Sender: TObject);
begin
       caduser.ShowModal;
end;

end.
