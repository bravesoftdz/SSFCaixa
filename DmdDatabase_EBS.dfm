object dmDatabase_EBS: TdmDatabase_EBS
  OldCreateOrder = False
  Left = 352
  Top = 221
  Height = 216
  Width = 204
  object adoEBS: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=MASTER;Persist Security Info=True;Da' +
      'ta Source=SSFCaixa'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 64
    Top = 48
  end
end
