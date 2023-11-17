unit UFrmCadPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBTable, IBDatabase, StdCtrls,
  Mask, DBCtrls;

type
  Tcadpais = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBDatabase2: TIBDatabase;
    DBGrid1: TDBGrid;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Tbtneditar: TButton;
    Tbtnexcluir: TButton;
    Tbtnsalvar: TButton;
    Tbtnnovo: TButton;
    Tbtncancelar: TButton;
    consulta: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    procedure TbtnsalvarClick(Sender: TObject);
    procedure TbtnnovoClick(Sender: TObject);
    procedure TbtneditarClick(Sender: TObject);
    procedure consultaClick(Sender: TObject);
    procedure TbtnexcluirClick(Sender: TObject);
    procedure TbtncancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadpais: Tcadpais;

implementation

{$R *.dfm}


procedure Tcadpais.consultaClick(Sender: TObject);
begin
       if Length(Edit2.Text)>=3 then
  begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit2.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcadpais.DBGrid1DblClick(Sender: TObject);
begin
    Self.Close;
end;

procedure Tcadpais.TbtncancelarClick(Sender: TObject);
begin
    SELF.Close;
end;

procedure Tcadpais.TbtneditarClick(Sender: TObject);
begin
try
     if MessageBox(handle, 'Deseja editar o registro?', 'ATENÇÃO!', mb_YesNo) = mrYes then
     begin
       IBTable1.Edit;
       IBTable1NOME.Value:=DBEdit2.Text;
       IBTable1.Post;
       IBTable1.Close;
       IBTable1.Open;
       ShowMessage('Registro Editado!');
     end;
  except
        ShowMessage('Erro ao executar atualização!');
  end;
end;

procedure Tcadpais.TbtnexcluirClick(Sender: TObject);
begin
      if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!', mb_YesNo ) = mrYes then
        IBTable1.Delete;
end;

procedure Tcadpais.TbtnnovoClick(Sender: TObject);
begin
      IBTable1.Open;
      IBTable1.Append;
      DBEdit1.SetFocus;
end;

procedure Tcadpais.TbtnsalvarClick(Sender: TObject);
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
