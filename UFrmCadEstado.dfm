object cadestado: Tcadestado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 486
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 24
    Top = 205
    Width = 57
    Height = 19
    Caption = 'Nome*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
    Width = 40
    Height = 13
    Caption = 'ID_PAIS'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
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
  object Tbtnsalvar: TButton
    Left = 24
    Top = 430
    Width = 75
    Height = 25
    Caption = '&SALVAR'
    TabOrder = 1
    OnClick = TbtnsalvarClick
  end
  object Tbtnnovo: TButton
    Left = 309
    Top = 430
    Width = 75
    Height = 25
    Caption = '&NOVO'
    TabOrder = 2
    OnClick = TbtnnovoClick
  end
  object Tbtncancelar: TButton
    Left = 585
    Top = 430
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 3
    OnClick = TbtncancelarClick
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
  object Tbtneditar: TButton
    Left = 679
    Top = 250
    Width = 87
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 5
    OnClick = TbtneditarClick
  end
  object consulta: TButton
    Left = 309
    Top = 207
    Width = 84
    Height = 19
    Caption = 'CONSULTAR'
    TabOrder = 6
    OnClick = consultaClick
  end
  object Edit2: TEdit
    Left = 87
    Top = 205
    Width = 202
    Height = 21
    TabOrder = 7
    TextHint = 'Digite um nome'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 53
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_PAIS'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 139
    Width = 394
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 10
  end
  object TEdtDescricaoPais: TEdit
    Left = 176
    Top = 96
    Width = 137
    Height = 21
    TabOrder = 11
    Text = 'TEdtDescricaoPais'
  end
  object Button1: TButton
    Left = 319
    Top = 94
    Width = 105
    Height = 25
    Caption = 'BUSCAR PA'#205'S ->'
    TabOrder = 12
    OnClick = Button1Click
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\teste\TESTE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 720
    Top = 32
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
        Name = 'ID_PAIS'
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
        Name = 'PK_ESTADO'
        Fields = 'ID'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ESTADO_2'
        Fields = 'ID_PAIS'
      end>
    StoreDefs = True
    TableName = 'ESTADO'
    Left = 728
    Top = 144
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1ID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
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
end
