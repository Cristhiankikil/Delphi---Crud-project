unit UFrmCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, DB, IBCustomDataSet, IBTable, IBDatabase, StdCtrls,
  Grids, DBGrids;

type
  Tcadcliente = class(TForm)
    DBGrid1: TDBGrid;
    Tbtnsalvar: TButton;
    Tbtnnovo: TButton;
    Tbtncancelar: TButton;
    Tbtnexcluir: TButton;
    Tbtneditar: TButton;
    consulta: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBTable1CPF: TIBStringField;
    IBTable1NOME: TIBStringField;
    IBTable1TELEFONE: TIntegerField;
    IBTable1ENDERECO: TIBStringField;
    IBTable1RG: TIntegerField;
    IBTable1CNH: TIntegerField;
    IBTable1NOME_DA_MAE: TIBStringField;
    IBTable1NOME_DO_PAI: TIBStringField;
    IBTable1SEXO: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    procedure TbtncancelarClick(Sender: TObject);
    procedure TbtnsalvarClick(Sender: TObject);
    procedure TbtnnovoClick(Sender: TObject);
    procedure TbtneditarClick(Sender: TObject);
    procedure consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadcliente: Tcadcliente;

implementation

{$R *.dfm}

procedure Tcadcliente.consultaClick(Sender: TObject);
begin
  if Length(Edit2.Text)>=3 then
    begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit2.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcadcliente.TbtncancelarClick(Sender: TObject);
begin
    SELF.Close;
end;

procedure Tcadcliente.TbtneditarClick(Sender: TObject);
begin
try
   if MessageBox(handle, 'Deseja editar o registro?', 'ATENÇÃO!', mb_YesNo) = mrYes then
     begin
       IBTable1.Edit;
       IBTable1CPF.Value:=DBEdit1.Text;
       IBTable1NOME.Value:=DBEdit2.Text;

       IBTable1TELEFONE.Value:=STRTOINT(DBEdit3.TEXT);
       IBTable1ENDERECO.Value:=DBEdit4.Text;
       IBTable1RG.Value:=STRTOINT(DBEdit5.TEXT);
       IBTable1CNH.Value:=STRTOINT(DBEdit6.TEXT);
       IBTable1NOME_DA_MAE.Value:=DBEdit7.Text;
       IBTable1NOME_DO_PAI.Value:=DBEdit8.Text;
       IBTable1SEXO.Value:=DBEdit9.Text;
       IBTable1.Post;
       IBTable1.Close;
       IBTable1.Open;
       ShowMessage('Registro Editado!');
     end;
  except
        ShowMessage('Erro ao executar atualização!');
  end;
end;

procedure Tcadcliente.TbtnnovoClick(Sender: TObject);
begin
      IBTable1.Open;
      IBTable1.Append;
      DBEdit3.SetFocus;
end;

procedure Tcadcliente.TbtnsalvarClick(Sender: TObject);
begin
 try
      if MessageBox(handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
      if IBTable1.State in [dsInsert] then
      begin
             IBTable1.Post;
             Tbtnnovo.SetFocus;
      end;
      IBTransaction1.CommitRetaining;
      IBTable1.Close;
      IBTable1.Open;
  finally
          IBTransaction1.RollbackRetaining;
end;
end;
end.
