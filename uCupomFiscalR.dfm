object fCupomFiscalR: TfCupomFiscalR
  Left = 192
  Top = 124
  Width = 605
  Height = 563
  Caption = 'fCupomFiscalR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 16
    Width = 559
    Height = 794
    DataSource = DMCupom.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 3.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    PageSetup.PaperSize = fpA5
    RecordRange = rrCurrentOnly
    object RLSubDetail1: TRLSubDetail
      Left = 11
      Top = 19
      Width = 510
      Height = 214
      DataSource = DMCupom.dsCupomFiscal
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 510
        Height = 121
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText2: TRLDBText
          Left = 96
          Top = 16
          Width = 74
          Height = 15
          DataField = 'NUMCUPOM'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 46
          Top = 16
          Width = 50
          Height = 15
          Alignment = taRightJustify
          Caption = 'CUPOM:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 60
          Top = 31
          Width = 36
          Height = 15
          Alignment = taRightJustify
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 96
          Top = 31
          Width = 71
          Height = 15
          DataField = 'DTEMISSAO'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 17
          Top = 75
          Width = 79
          Height = 15
          Alignment = taRightJustify
          Caption = 'PAGAMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 96
          Top = 75
          Width = 63
          Height = 15
          DataField = 'TIPOPGTO'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 271
          Top = 30
          Width = 131
          Height = 15
          Alignment = taRightJustify
          DataField = 'USUARIO'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'VENDEDOR: '
        end
        object RLLabel5: TRLLabel
          Left = 39
          Top = 45
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 96
          Top = 45
          Width = 93
          Height = 15
          DataField = 'NOME_PESSOA'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 40
          Top = 60
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'CRACH'#193':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 96
          Top = 60
          Width = 64
          Height = 15
          DataField = 'APEL_EBS'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 2
          Top = 104
          Width = 63
          Height = 15
          Caption = 'PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 246
          Top = 104
          Width = 31
          Height = 15
          Caption = 'QTD.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 290
          Top = 104
          Width = 53
          Height = 15
          Caption = 'VLR. UN.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 362
          Top = 104
          Width = 40
          Height = 15
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 66
          Top = 1
          Width = 30
          Height = 15
          Alignment = taRightJustify
          Caption = 'PDV:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 96
          Top = 1
          Width = 58
          Height = 15
          DataField = 'FANTASIA'
          DataSource = DMCupom.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 121
        Width = 510
        Height = 64
        DataSource = DMCupom.dsCupomFiscalIt
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 510
          Height = 17
          object RLDBText7: TRLDBText
            Left = 2
            Top = 1
            Width = 231
            Height = 14
            AutoSize = False
            DataField = 'lkNomeProduto'
            DataSource = DMCupom.dsCupomFiscalIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 240
            Top = 1
            Width = 42
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMCupom.dsCupomFiscalIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 293
            Top = 1
            Width = 49
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRUNIT'
            DataSource = DMCupom.dsCupomFiscalIt
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 354
            Top = 1
            Width = 49
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = DMCupom.dsCupomFiscalIt
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
end
