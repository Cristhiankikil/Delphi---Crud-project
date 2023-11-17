object cadpais: Tcadpais
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pa'#237's'
  ClientHeight = 463
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label6: TLabel
    Left = 24
    Top = 205
    Width = 57
    Height = 19
    Caption = 'Nome*'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 232
    Width = 649
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 59
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 96
    Width = 394
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Tbtneditar: TButton
    Left = 679
    Top = 250
    Width = 87
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 3
    OnClick = TbtneditarClick
  end
  object Tbtnexcluir: TButton
    Left = 679
    Top = 288
    Width = 87
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 4
    OnClick = TbtnexcluirClick
  end
  object Tbtnsalvar: TButton
    Left = 24
    Top = 430
    Width = 75
    Height = 25
    Caption = '&SALVAR'
    TabOrder = 5
    OnClick = TbtnsalvarClick
  end
  object Tbtnnovo: TButton
    Left = 309
    Top = 430
    Width = 75
    Height = 25
    Caption = '&NOVO'
    TabOrder = 6
    OnClick = TbtnnovoClick
  end
  object Tbtncancelar: TButton
    Left = 585
    Top = 430
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 7
    OnClick = TbtncancelarClick
  end
  object consulta: TButton
    Left = 309
    Top = 207
    Width = 84
    Height = 19
    Caption = 'CONSULTAR'
    TabOrder = 8
    OnClick = consultaClick
  end
  object Edit2: TEdit
    Left = 87
    Top = 205
    Width = 202
    Height = 21
    TabOrder = 9
    TextHint = 'Digite um nome'
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\teste\TESTE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    Left = 720
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase2
    AutoStopAction = saRollback
    Left = 720
    Top = 80
  end
  object IBTable1: TIBTable
    Database = IBDatabase2
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'PK_PAIS'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PAIS'
    Left = 728
    Top = 144
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 728
    Top = 200
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\teste\TESTE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 720
    Top = 32
  end
end
