object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 508
  Width = 561
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 352
    Top = 216
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 368
    Top = 144
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\20.0\Sampl' +
        'es\Data\RMSID.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 136
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'BOOK_SEQ'
    UpdateOptions.UpdateTableName = 'BOOK_LOG'
    TableName = 'BOOK_LOG'
    Left = 256
    Top = 216
  end
  object DataSource1: TDataSource
    Left = 168
    Top = 200
  end
end
