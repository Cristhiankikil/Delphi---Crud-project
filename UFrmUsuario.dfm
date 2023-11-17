object caduser: Tcaduser
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 597
  ClientWidth = 760
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
    Top = -48
    Width = 23
    Height = 23
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 39
    Width = 19
    Height = 19
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 97
    Width = 48
    Height = 19
    Caption = 'NOME'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 151
    Width = 92
    Height = 19
    Caption = 'USERNAME'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 95
    Height = 19
    Caption = 'PASSWORD'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 288
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
  object Edit1: TEdit
    Left = 53
    Top = -48
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 24
    Top = 328
    Width = 636
    Height = 219
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Tbtnsalvar: TButton
    Left = 24
    Top = 553
    Width = 75
    Height = 25
    Caption = '&SALVAR'
    TabOrder = 2
    OnClick = TbtnsalvarClick
  end
  object Tbtnnovo: TButton
    Left = 309
    Top = 553
    Width = 75
    Height = 25
    Caption = '&NOVO'
    TabOrder = 3
    OnClick = TbtnnovoClick
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 64
    Width = 134
    Height = 27
    DataField = 'ID'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 118
    Width = 360
    Height = 24
    DataField = 'NOME'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 176
    Width = 360
    Height = 24
    DataField = 'USERNAME'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 233
    Width = 360
    Height = 24
    DataField = 'PASSWORD'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Tbtneditar: TButton
    Left = 666
    Top = 282
    Width = 87
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 8
    OnClick = TbtneditarClick
  end
  object Tbtnexcluir: TButton
    Left = 666
    Top = 328
    Width = 87
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 9
    OnClick = TbtnexcluirClick
  end
  object Tbtncancelar: TButton
    Left = 585
    Top = 553
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 10
    OnClick = TbtneditarClick
  end
  object Edit2: TEdit
    Left = 87
    Top = 288
    Width = 202
    Height = 21
    TabOrder = 11
    TextHint = 'Digite um nome'
    OnKeyPress = Edit2KeyPress
  end
  object consulta: TButton
    Left = 309
    Top = 289
    Width = 84
    Height = 19
    Caption = 'CONSULTAR'
    TabOrder = 12
    OnClick = consultaClick
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\teste\TESTE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 720
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saRollback
    Left = 720
    Top = 80
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
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
        Size = 50
      end
      item
        Name = 'USERNAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'PASSWORD'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'PK_USER'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'USER'
    Left = 712
    Top = 160
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey, pfHidden]
      ReadOnly = True
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object IBTable1USERNAME: TIBStringField
      FieldName = 'USERNAME'
      Required = True
      Size = 15
    end
    object IBTable1PASSWORD: TIBStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 712
    Top = 224
  end
end
