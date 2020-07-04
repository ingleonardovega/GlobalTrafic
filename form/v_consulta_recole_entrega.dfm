object consulta_recole_entrega: Tconsulta_recole_entrega
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Recoleccion / entrega'
  ClientHeight = 273
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid5: TStringGrid
    Left = 8
    Top = 18
    Width = 816
    Height = 239
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    TabOrder = 0
    OnDblClick = StringGrid5DblClick
    OnSelectCell = StringGrid5SelectCell
    ColWidths = (
      28
      258
      394
      98)
  end
end
