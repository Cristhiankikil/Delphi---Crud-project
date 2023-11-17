object cadcliente: Tcadcliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 565
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 288
    Top = 454
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
    Top = 8
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 128
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 168
    Width = 14
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 24
    Top = 208
    Width = 21
    Height = 13
    Caption = 'CNH'
    FocusControl = DBEdit6
  end
  object Label8: TLabel
    Left = 24
    Top = 248
    Width = 76
    Height = 13
    Caption = 'NOME_DA_MAE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel
    Left = 24
    Top = 288
    Width = 73
    Height = 13
    Caption = 'NOME_DO_PAI'
    FocusControl = DBEdit8
  end
  object Label10: TLabel
    Left = 24
    Top = 328
    Width = 26
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit9
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 24
    Width = 577
    Height = 416
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Tbtnsalvar: TButton
    Left = 22
    Top = 415
    Width = 75
    Height = 25
    Caption = '&SALVAR'
    TabOrder = 1
    OnClick = TbtnsalvarClick
  end
  object Tbtnnovo: TButton
    Left = 134
    Top = 415
    Width = 75
    Height = 25
    Caption = '&NOVO'
    TabOrder = 2
    OnClick = TbtnnovoClick
  end
  object Tbtncancelar: TButton
    Left = 734
    Top = 521
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 3
    OnClick = TbtncancelarClick
  end
  object Tbtnexcluir: TButton
    Left = 22
    Top = 485
    Width = 78
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 4
  end
  object Tbtneditar: TButton
    Left = 134
    Top = 485
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 5
    OnClick = TbtneditarClick
  end
  object consulta: TButton
    Left = 559
    Top = 457
    Width = 84
    Height = 19
    Caption = 'CONSULTAR'
    TabOrder = 6
    OnClick = consultaClick
  end
  object Edit2: TEdit
    Left = 351
    Top = 456
    Width = 202
    Height = 21
    TabOrder = 7
    TextHint = 'Digite um nome'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 24
    Width = 147
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 64
    Width = 147
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 104
    Width = 134
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 141
    Width = 185
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 184
    Width = 134
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 224
    Width = 134
    Height = 21
    DataField = 'CNH'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit7: TDBEdit
    Left = 24
    Top = 264
    Width = 185
    Height = 21
    DataField = 'NOME_DA_MAE'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit8: TDBEdit
    Left = 24
    Top = 301
    Width = 185
    Height = 21
    DataField = 'NOME_DO_PAI'
    DataSource = DataSource1
    TabOrder = 15
  end
  object DBEdit9: TDBEdit
    Left = 24
    Top = 344
    Width = 185
    Height = 21
    DataField = 'SEXO'
    DataSource = DataSource1
    TabOrder = 16
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\teste\TESTE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 824
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saRollback
    Left = 824
    Top = 56
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'CPF'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TELEFONE'
        DataType = ftInteger
      end
      item
        Name = 'ENDERECO'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'RG'
        DataType = ftInteger
      end
      item
        Name = 'CNH'
        DataType = ftInteger
      end
      item
        Name = 'NOME_DA_MAE'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'NOME_DO_PAI'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'SEXO'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'PK_CLIENTE'
        Fields = 'CPF'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLIENTE'
    Left = 832
    Top = 120
    object IBTable1CPF: TIBStringField
      FieldName = 'CPF'
      Required = True
      Size = 11
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object IBTable1TELEFONE: TIntegerField
      FieldName = 'TELEFONE'
    end
    object IBTable1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object IBTable1RG: TIntegerField
      FieldName = 'RG'
    end
    object IBTable1CNH: TIntegerField
      FieldName = 'CNH'
    end
    object IBTable1NOME_DA_MAE: TIBStringField
      FieldName = 'NOME_DA_MAE'
      Size = 30
    end
    object IBTable1NOME_DO_PAI: TIBStringField
      FieldName = 'NOME_DO_PAI'
      Size = 30
    end
    object IBTable1SEXO: TIBStringField
      FieldName = 'SEXO'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 832
    Top = 176
  end
end
