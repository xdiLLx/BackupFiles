object dmSettings: TdmSettings
  OnCreate = DataModuleCreate
  Height = 510
  Width = 849
  object TabConfiguracao: TFDQuery
    Connection = DM.database
    SQL.Strings = (
      'select * from configuracao')
    Left = 56
    Top = 24
  end
end
