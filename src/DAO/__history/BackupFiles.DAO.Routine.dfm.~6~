object DMRoutine: TDMRoutine
  Height = 480
  Width = 640
  object TabRotina: TFDQuery
    Connection = DM.database
    SQL.Strings = (
      'select * from rotina r')
    Left = 32
    Top = 16
  end
  object TabRotinaFiltrada: TFDQuery
    Connection = DM.database
    SQL.Strings = (
      'select * from rotina r'
      'where r.codigo = :codigo')
    Left = 120
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
        Value = Null
      end>
  end
end
