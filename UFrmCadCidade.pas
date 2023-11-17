unit UFrmCadCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, DB, IBCustomDataSet, IBTable, IBDatabase, StdCtrls,
  Grids, DBGrids, UFrmCadEstado;

type
  Tcadcidade = class(TForm)
    DBGrid1: TDBGrid;
    Tbtnsalvar: TButton;
    Tbtnnovo: TButton;
    Tbtncancelar: TButton;
    Tbtnexcluir: TButton;
    Tbtneditar: TButton;
    consulta: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    IBDatabase2: TIBDatabase;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBTable1ID: TIntegerField;
    IBTable1ID_ESTADO: TIntegerField;
    IBTable1NOME: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Button1: TButton;
    TEdtDescricaoEstado: TEdit;
    procedure TbtnsalvarClick(Sender: TObject);
    procedure TbtnnovoClick(Sender: TObject);
    procedure TbtncancelarClick(Sender: TObject);
    procedure consultaClick(Sender: TObject);
    procedure TbtnexcluirClick(Sender: TObject);
    procedure TbtneditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadcidade: Tcadcidade;
  FrmCadEstado: Tcadestado;

implementation

{$R *.dfm}

procedure Tcadcidade.Button1Click(Sender: TObject);
begin
    FrmCadEstado:=Tcadestado.Create(nil);
    FrmCadEstado.ShowModal;
    TEdtDescricaoEstado.Text:=FrmCadEstado.IBTable1.FieldByName('NOME').AsString;
    DBEdit2.Text:=FrmCadEstado.IBTable1.FieldByName('ID').AsString;
    FrmCadEstado.Destroy;
end;

procedure Tcadcidade.consultaClick(Sender: TObject);
begin
  if Length(Edit2.Text)>=3 then
    begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit2.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcadcidade.TbtncancelarClick(Sender: TObject);
begin
    self.Close;
end;

procedure Tcadcidade.TbtneditarClick(Sender: TObject);
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

procedure Tcadcidade.TbtnexcluirClick(Sender: TObject);
begin
      if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!', mb_YesNo ) = mrYes then
        IBTable1.Delete;
end;

procedure Tcadcidade.TbtnnovoClick(Sender: TObject);
begin
      IBTable1.Open;
      IBTable1.Append;
      DBEdit3.SetFocus;
end;

procedure Tcadcidade.TbtnsalvarClick(Sender: TObject);
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
