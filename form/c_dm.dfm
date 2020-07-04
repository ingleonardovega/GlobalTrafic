object DATAS: TDATAS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 365
  Width = 217
  object conexion: TUniConnection
    LoginPrompt = False
    Left = 40
    Top = 80
  end
  object MySQL: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object Q1: TUniQuery
    Connection = conexion
    Left = 40
    Top = 144
  end
  object Q2: TUniQuery
    Connection = conexion
    Left = 40
    Top = 208
  end
end
