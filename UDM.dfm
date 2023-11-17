object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 636
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IBTable1: TIBTable
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
  object IBTable2: TIBTable
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_ESTADO'
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
        Name = 'PK_CIDADE'
        Fields = 'ID'
        Options = [ixUnique]
      end
      item
        Name = 'FK_CIDADE_2'
        Fields = 'ID_ESTADO'
      end>
    StoreDefs = True
    TableName = 'CIDADE'
    Left = 672
    Top = 144
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1ID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = IBTable2
    Left = 672
    Top = 200
  end
  object IBTable3: TIBTable
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
    Left = 616
    Top = 144
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1ID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = IBTable3
    Left = 616
    Top = 200
  end
  object IBTable4: TIBTable
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
    Left = 560
    Top = 144
    object IBTable1CPF: TIBStringField
      FieldName = 'CPF'
      Required = True
      Size = 11
    end
    object IBStringField3: TIBStringField
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
  object DataSource4: TDataSource
    DataSet = IBTable4
    Left = 560
    Top = 200
  end
  object IBTable5: TIBTable
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
    Left = 504
    Top = 144
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey, pfHidden]
      ReadOnly = True
      Required = True
    end
    object IBStringField4: TIBStringField
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
  object DataSource5: TDataSource
    DataSet = IBTable5
    Left = 496
    Top = 200
  end
  object IBDatabase1: TIBDatabase
    Left = 544
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    Left = 608
    Top = 64
  end
end
