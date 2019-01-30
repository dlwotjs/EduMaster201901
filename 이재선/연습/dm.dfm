object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 273
  Width = 461
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=moim')
    Connected = True
    LoginPrompt = False
    Left = 136
    Top = 48
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 352
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 256
    Top = 40
  end
  object user: TFDTable
    Active = True
    IndexFieldNames = 'name'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '"user"'
    TableName = '"user"'
    Left = 136
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = user
    Left = 216
    Top = 120
  end
  object login: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'LOGIN'
    TableName = 'LOGIN'
    Left = 136
    Top = 184
  end
  object DataSource2: TDataSource
    Left = 224
    Top = 184
  end
end
