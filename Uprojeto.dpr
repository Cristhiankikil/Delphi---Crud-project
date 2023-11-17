program Uprojeto;

uses
  Forms,
  UFrmCadUser in 'UFrmCadUser.pas' {login},
  UFrmUsuario in 'UFrmUsuario.pas' {caduser},
  UPessoa in 'Classes\UPessoa.pas',
  UPais in 'Classes\UPais.pas',
  UCliente in 'Classes\UCliente.pas',
  UEstado in 'Classes\UEstado.pas',
  UFrmCadPais in 'UFrmCadPais.pas' {cadpais},
  UFrmCadEstado in 'UFrmCadEstado.pas' {cadestado},
  UFrmCadCidade in 'UFrmCadCidade.pas' {cadcidade},
  UFrmCadCliente in 'UFrmCadCliente.pas' {cadcliente},
  UDM in 'UDM.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Tcaduser, caduser);
  Application.CreateForm(Tcadpais, cadpais);
  Application.CreateForm(Tcadestado, cadestado);
  Application.CreateForm(Tcadcidade, cadcidade);
  Application.CreateForm(Tcadcliente, cadcliente);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
