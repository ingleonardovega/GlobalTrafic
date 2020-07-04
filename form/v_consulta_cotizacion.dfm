object consulta_cotizaciones: Tconsulta_cotizaciones
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'CONSULTA COTIZACIONES'
  ClientHeight = 439
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 343
    Top = 114
    Width = 20
    Height = 19
    Caption = 'DE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 524
    Top = 114
    Width = 11
    Height = 19
    Caption = 'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 681
    Height = 81
    Caption = 'FILTRO DE BUSQUEDA'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'TODOS'
      'PENDIENTES'
      'PROGRAMADO'
      'FINALIZADO'
      'CANCELADO')
    ParentFont = False
    TabOrder = 0
  end
  object DateTimePicker1: TDateTimePicker
    Left = 369
    Top = 111
    Width = 137
    Height = 27
    Date = 43854.446082025460000000
    Format = 'yyyy-MM-dd'
    Time = 43854.446082025460000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 552
    Top = 111
    Width = 137
    Height = 27
    Date = 43853.446082025460000000
    Format = 'yyyy-MM-dd'
    Time = 43853.446082025460000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 8
    Top = 114
    Width = 321
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'BUSQUEDA EN COTIZACION'
  end
  object BitBtn2: TBitBtn
    Left = 711
    Top = 8
    Width = 186
    Height = 130
    Caption = 'CONSULTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkRetry
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 168
    Width = 889
    Height = 249
    ColCount = 6
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    TabOrder = 5
    OnDblClick = StringGrid1DblClick
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      48
      153
      112
      108
      319
      125)
  end
end
