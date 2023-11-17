unit UFrmUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBDatabase, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls;

type
  Tcaduser = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    Tbtnsalvar: TButton;
    Tbtnnovo: TButton;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1USERNAME: TIBStringField;
    IBTable1PASSWORD: TIBStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Tbtneditar: TButton;
    Tbtnexcluir: TButton;
    Tbtncancelar: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    consulta: TButton;
    procedure TbtnsalvarClick(Sender: TObject);
    procedure TbtnnovoClick(Sender: TObject);
    procedure TbtnexcluirClick(Sender: TObject);
    procedure TbtneditarClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidaCampos():Boolean;
  end;

var
  caduser: Tcaduser;

implementation

{$R *.dfm}

procedure Tcaduser.consultaClick(Sender: TObject);
begin
     if Length(Edit2.Text)>=3 then
  begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit1.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcaduser.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Length(Edit2.Text)>=3 then
  begin
      IBTable1.Filtered:=false;
      IBTable1.Filter:= 'NOME LIKE'+ QuotedStr('%'+Edit1.Text  +'%');
      IBTable1.Filtered:=true;
      IBTable1.Refresh;
  end;
end;

procedure Tcaduser.TbtneditarClick(Sender: TObject);
begin
  SELF.Close;
end;

procedure Tcaduser.TbtnexcluirClick(Sender: TObject);
begin
    if MessageBox(handle, 'Deseja excluir o registro?','ATENÇÃO!', mb_YesNo ) = mrYes then
      IBTable1.Delete;
end;

procedure Tcaduser.TbtnnovoClick(Sender: TObject);
begin
      IBTable1.Open;
      IBTable1.Append;
      DBEdit1.SetFocus;
end;

procedure Tcaduser.TbtnsalvarClick(Sender: TObject);
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

function Tcaduser.ValidaCampos(): Boolean;
var retorno:Boolean;
begin
     if (Length(DBEdit2.Text) > 6) and (Length(DBEdit3.Text) > 4) and (Length(DBEdit4.Text) > 5)  then
     begin
       retorno:=True;
       DBEdit4.Color:=clRed;
     end
     else
     begin
        retorno:=False;
        ShowMessage('Existem campos vazios!');
     end;
      result:=retorno;
end;

end.


