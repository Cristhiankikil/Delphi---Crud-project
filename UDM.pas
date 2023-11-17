unit UDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBDatabase;

type
  TForm1 = class(TForm)
    IBTable1: TIBTable;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    DataSource1: TDataSource;
    IBTable2: TIBTable;
    IntegerField1: TIntegerField;
    IBTable1ID_ESTADO: TIntegerField;
    IBStringField1: TIBStringField;
    DataSource2: TDataSource;
    IBTable3: TIBTable;
    IntegerField2: TIntegerField;
    IBTable1ID_PAIS: TIntegerField;
    IBStringField2: TIBStringField;
    DataSource3: TDataSource;
    IBTable4: TIBTable;
    IBTable1CPF: TIBStringField;
    IBStringField3: TIBStringField;
    IBTable1TELEFONE: TIntegerField;
    IBTable1ENDERECO: TIBStringField;
    IBTable1RG: TIntegerField;
    IBTable1CNH: TIntegerField;
    IBTable1NOME_DA_MAE: TIBStringField;
    IBTable1NOME_DO_PAI: TIBStringField;
    IBTable1SEXO: TIBStringField;
    DataSource4: TDataSource;
    IBTable5: TIBTable;
    IntegerField3: TIntegerField;
    IBStringField4: TIBStringField;
    IBTable1USERNAME: TIBStringField;
    IBTable1PASSWORD: TIBStringField;
    DataSource5: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
