unit UFrmCadEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBTable, IBDatabase,
  Mask, DBCtrls, UFrmCadPais;

type
  Tcadestado = class(TForm)
    IBDatabase2: TIBDatabase;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Tbtnsalvar: TButton;
    Tbtnnovo: TButton;
    Tbtncancelar: TButton;
    Tbtnexcluir: TButton;
    Tbtneditar: TButton;
    consulta: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    IBTable1ID: TIntegerField;
    IBTable1ID_PAIS: TIntegerField;
    IBTable1NOME: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    TEdtDescricaoPais: TEdit;
    Button1: TButton;
    procedure TbtnsalvarClick(Sender: TObject);
    procedure TbtnnovoClick(Sender: TObject);
    procedure TbtncancelarClick(Sender: TObject);
    procedure consultaClick(Sender: TObject);
    procedure TbtneditarClick(Sender: TObject);
    procedure TbtnexcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadestado: Tcadestado;
  FrmCadPais: Tcadpais;

implementation

{$R *.dfm}

procedure Tcadestado.Button1Click(Sender: TObject);
begin
    FrmCadPais:=Tcadpais.Create(nil);
    FrmCadPais.ShowModal;
    TEdtDescricaoPais.Text:=FrmCadPais.IBTable1.FieldByName('NOME').AsString;
    DBEdit2.Text:=FrmCadPais.IBTable1.FieldByName('ID').AsString;
    FrmCadPais.Destroy;
end;

procedure Tcadestado.consultaClick(Sender: TObject);
begin
   if Length(Edit2.Text)>=3 then
  begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit2.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcadestado.DBGrid1DblClick(Sender: TObject);
begin
          self.Close;
end;

procedure Tcadestado.TbtncancelarClick(Sender: TObject);
begin
    self.Close;
end;

procedure Tcadestado.TbtneditarClick(Sender: TObject);
begin
  try
     if MessageBox(handle, 'Deseja editar o registro?', 'ATENÇÃO!', mb_YesNo) = mrYes then
     begin
       IBTable1.Edit;
       IBTable1NOME.Value:=DBEdit3.Text;
       IBTable1.Post;
       IBTable1.Close;
       IBTable1.Open;
       ShowMessage('Registro Editado!');
     end;
  except
        ShowMessage('Erro ao executar atualização!');
  end;
end;

procedure Tcadestado.TbtnexcluirClick(Sender: TObject);
begin
      if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!', mb_YesNo ) = mrYes then
        IBTable1.Delete;
end;

procedure Tcadestado.TbtnnovoClick(Sender: TObject);
begin
      IBTable1.Open;
      IBTable1.Append;
      DBEdit3.SetFocus;
end;

procedure Tcadestado.TbtnsalvarClick(Sender: TObject);
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
