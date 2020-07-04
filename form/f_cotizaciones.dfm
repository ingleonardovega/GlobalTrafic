object cotizaciones: Tcotizaciones
  Left = 0
  Top = 0
  Caption = 'Cotizaciones operativas'
  ClientHeight = 633
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 999
    Height = 633
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 129
      Caption = 'Cotizacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnCollapse = CategoryPanel1Collapse
      object Panel1: TPanel
        Left = 8
        Top = 3
        Width = 937
        Height = 97
        TabOrder = 0
        object Label6: TLabel
          Left = 17
          Top = 22
          Width = 126
          Height = 25
          Caption = 'Cotizacion: $ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 40
          Top = 56
          Width = 96
          Height = 25
          Caption = 'Utilidad: $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 363
          Top = 18
          Width = 86
          Height = 25
          Caption = 'Enlace: $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 328
          Top = 52
          Width = 122
          Height = 25
          Caption = 'Gastos op.: $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 679
          Top = 7
          Width = 232
          Height = 25
          Caption = '-----------------------------'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 656
          Top = 53
          Width = 65
          Height = 25
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 149
          Top = 19
          Width = 161
          Height = 27
          Alignment = taRightJustify
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'costo'
        end
        object Edit1: TEdit
          Left = 149
          Top = 50
          Width = 161
          Height = 27
          Alignment = taRightJustify
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TextHint = 'utilidad'
        end
        object Edit2: TEdit
          Left = 461
          Top = 49
          Width = 161
          Height = 27
          Alignment = taRightJustify
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TextHint = 'gastos op'
        end
        object Edit3: TEdit
          Left = 461
          Top = 19
          Width = 161
          Height = 27
          Alignment = taRightJustify
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TextHint = 'costo enlace'
        end
        object ComboBox1: TComboBox
          Left = 727
          Top = 53
          Width = 184
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TextHint = 'Selecciona status'
          Items.Strings = (
            'CANCELADO'
            'PENDIENTE'
            'PROGRAMADO'
            'FINALIZADO')
        end
      end
    end
    object CategoryPanel8: TCategoryPanel
      Top = 309
      Height = 30
      Caption = 'Gastos operativos'
      Collapsed = True
      TabOrder = 0
      OnExpand = CategoryPanel8Expand
      ExpandedHeight = 292
      object Panel8: TPanel
        Left = 8
        Top = 11
        Width = 977
        Height = 246
        TabOrder = 0
        object Label20: TLabel
          Left = 492
          Top = 10
          Width = 214
          Height = 25
          Caption = 'Odometro actual (KM):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 508
          Top = 49
          Width = 198
          Height = 25
          Caption = 'Odometro final (KM):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 517
          Top = 84
          Width = 189
          Height = 25
          Caption = 'Rendimiento KM/LT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 433
          Top = 125
          Width = 122
          Height = 25
          Caption = 'Combustible:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 681
          Top = 125
          Width = 58
          Height = 25
          Caption = 'Costo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 580
          Top = 161
          Width = 204
          Height = 25
          Caption = 'Calcula $ combustible'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 723
          Top = 195
          Width = 11
          Height = 25
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 705
          Top = 195
          Width = 11
          Height = 25
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox10: TComboBox
          Left = 8
          Top = 7
          Width = 225
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'SERVICIOS'
          Items.Strings = (
            'CASETAS'
            'COMBUSTIBLE'
            'COMIDAS'
            'MULTAS'
            'REFACCIONES'
            'TALLER/TALACHAS'
            'TRANSITO/FEDERAL')
        end
        object Edit18: TEdit
          Left = 240
          Top = 7
          Width = 147
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TextHint = 'COSTO'
        end
        object StringGrid6: TStringGrid
          Left = 8
          Top = 46
          Width = 379
          Height = 171
          ColCount = 2
          DefaultRowHeight = 35
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 2
          OnDblClick = StringGrid6DblClick
          OnKeyPress = StringGrid6KeyPress
          OnSelectCell = StringGrid2SelectCell
          ColWidths = (
            222
            146)
          RowHeights = (
            35)
        end
        object BitBtn1: TBitBtn
          Left = 393
          Top = 7
          Width = 82
          Height = 34
          Caption = 'Agregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkAll
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn1Click
        end
        object BitBtn8: TBitBtn
          Left = 393
          Top = 46
          Width = 82
          Height = 34
          Caption = 'Eliminar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkCancel
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn8Click
        end
        object Edit19: TEdit
          Left = 712
          Top = 7
          Width = 163
          Height = 33
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit20: TEdit
          Left = 712
          Top = 44
          Width = 163
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit21: TEdit
          Left = 712
          Top = 81
          Width = 61
          Height = 33
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit22: TEdit
          Left = 561
          Top = 122
          Width = 112
          Height = 33
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit23: TEdit
          Left = 745
          Top = 122
          Width = 112
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          OnDblClick = Edit23DblClick
          OnKeyPress = Edit23KeyPress
        end
        object Edit24: TEdit
          Left = 552
          Top = 192
          Width = 137
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 10
          TextHint = 'captura KM'
          OnChange = Edit24Change
        end
      end
    end
    object CategoryPanel7: TCategoryPanel
      Top = 279
      Height = 30
      Caption = 'Unidades propias'
      Collapsed = True
      TabOrder = 1
      OnExpand = CategoryPanel7Expand
      ExpandedHeight = 285
      object Panel7: TPanel
        Left = 8
        Top = 7
        Width = 953
        Height = 247
        Caption = 'Panel7'
        TabOrder = 0
        object StringGrid5: TStringGrid
          Left = 17
          Top = 24
          Width = 897
          Height = 203
          ColCount = 7
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = StringGrid5DblClick
          OnSelectCell = StringGrid5SelectCell
          ColWidths = (
            25
            95
            133
            208
            218
            136
            64)
        end
      end
    end
    object CategoryPanel6: TCategoryPanel
      Top = 249
      Height = 30
      Caption = 'Informacion Enlace'
      Collapsed = True
      TabOrder = 2
      OnExpand = CategoryPanel6Expand
      ExpandedHeight = 301
      object Panel6: TPanel
        Left = 8
        Top = 13
        Width = 953
        Height = 252
        TabOrder = 0
        object Label18: TLabel
          Left = 14
          Top = 13
          Width = 68
          Height = 25
          Caption = 'Enlace:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 429
          Top = 13
          Width = 44
          Height = 25
          Caption = 'RFC:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit15: TEdit
          Left = 749
          Top = 10
          Width = 162
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'COSTO ENLACE'
          OnChange = Edit15Change
        end
        object Edit16: TEdit
          Left = 88
          Top = 10
          Width = 337
          Height = 33
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit17: TEdit
          Left = 479
          Top = 10
          Width = 188
          Height = 33
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 670
          Top = 10
          Width = 75
          Height = 33
          BiDiMode = bdLeftToRight
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
        object StringGrid4: TStringGrid
          Left = 14
          Top = 61
          Width = 897
          Height = 177
          ColCount = 7
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnDblClick = StringGrid4DblClick
          OnSelectCell = StringGrid4SelectCell
          ColWidths = (
            25
            95
            133
            208
            218
            136
            64)
        end
      end
    end
    object CategoryPanel5: TCategoryPanel
      Top = 219
      Height = 30
      Caption = 'Servicios y Unidades'
      Collapsed = True
      TabOrder = 3
      OnExpand = CategoryPanel5Expand
      ExpandedHeight = 302
      object Panel5: TPanel
        Left = 8
        Top = 11
        Width = 953
        Height = 249
        TabOrder = 0
        object ComboBox8: TComboBox
          Left = 17
          Top = 23
          Width = 225
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'SERVICIOS'
          Items.Strings = (
            'FLETE'
            'SEGURO MERCANCIA'
            'RECOLECCION'
            'MANIOBRA CARGA'
            'MANIOBRA DESCARGA'
            'REENTREGAS'
            'PISTAS'
            'OTROS')
        end
        object Edit14: TEdit
          Left = 254
          Top = 23
          Width = 147
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TextHint = 'COSTO'
        end
        object BitBtn4: TBitBtn
          Left = 407
          Top = 23
          Width = 82
          Height = 34
          Caption = 'Agregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkAll
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 407
          Top = 60
          Width = 82
          Height = 34
          Caption = 'Eliminar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkCancel
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn5Click
        end
        object StringGrid2: TStringGrid
          Left = 17
          Top = 62
          Width = 384
          Height = 171
          ColCount = 2
          DefaultRowHeight = 35
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 4
          OnDblClick = StringGrid2DblClick
          OnKeyPress = StringGrid2KeyPress
          OnSelectCell = StringGrid2SelectCell
          ColWidths = (
            222
            146)
        end
        object ComboBox9: TComboBox
          Left = 536
          Top = 23
          Width = 320
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          TextHint = 'UNIDADES'
          OnDropDown = ComboBox9DropDown
        end
        object StringGrid3: TStringGrid
          Left = 536
          Top = 62
          Width = 320
          Height = 171
          ColCount = 1
          DefaultRowHeight = 35
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 6
          OnSelectCell = StringGrid3SelectCell
          ColWidths = (
            305)
        end
        object BitBtn6: TBitBtn
          Left = 862
          Top = 60
          Width = 82
          Height = 34
          Caption = 'Eliminar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkCancel
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 862
          Top = 23
          Width = 82
          Height = 34
          Caption = 'Agregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkAll
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
          OnClick = BitBtn7Click
        end
      end
    end
    object CategoryPanel4: TCategoryPanel
      Top = 189
      Height = 30
      Caption = 'Datos de la mercancia'
      Collapsed = True
      TabOrder = 4
      OnExpand = CategoryPanel4Expand
      ExpandedHeight = 284
      object Panel4: TPanel
        Left = 8
        Top = 3
        Width = 953
        Height = 238
        TabOrder = 0
        object Label17: TLabel
          Left = 17
          Top = 18
          Width = 153
          Height = 25
          Caption = 'Tipo de servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox6: TComboBox
          Left = 176
          Top = 15
          Width = 225
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Selecciona servicio'
          Items.Strings = (
            'CONSOLIDADO'
            'CONSOLIDADO EXPRESS'
            'DIRECTO')
        end
        object Edit10: TEdit
          Left = 11
          Top = 61
          Width = 64
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TextHint = 'CANT.'
        end
        object ComboBox7: TComboBox
          Left = 77
          Top = 61
          Width = 175
          Height = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TextHint = 'EMBALAJE'
          Items.Strings = (
            'ATADO(S)'
            'BULTO(S)'
            'CAJA(S)'
            'CONTENEDOR(ES)'
            'HUACAL(ES)'
            'PALET(S)'
            'PZA(S)'
            'TROZO(S)')
        end
        object Edit11: TEdit
          Left = 254
          Top = 61
          Width = 452
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TextHint = 'DESCRIPCION DE MERCANCIA'
        end
        object Edit12: TEdit
          Left = 708
          Top = 61
          Width = 119
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TextHint = 'PESO KG'
        end
        object Edit13: TEdit
          Left = 828
          Top = 61
          Width = 119
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          TextHint = 'VOL. M3'
        end
        object StringGrid1: TStringGrid
          Left = 11
          Top = 100
          Width = 934
          Height = 120
          DefaultRowHeight = 35
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 6
          OnSelectCell = StringGrid1SelectCell
          ColWidths = (
            64
            170
            450
            121
            90)
        end
        object BitBtn2: TBitBtn
          Left = 623
          Top = 4
          Width = 131
          Height = 55
          Caption = 'Agregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkAll
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 760
          Top = 4
          Width = 131
          Height = 55
          Caption = 'Eliminar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkCancel
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
          OnClick = BitBtn3Click
        end
      end
    end
    object CategoryPanel3: TCategoryPanel
      Top = 159
      Height = 30
      Caption = 'Datos de Recoleccion / Entrega'
      Collapsed = True
      TabOrder = 5
      OnExpand = CategoryPanel3Expand
      ExpandedHeight = 354
      object Panel3: TPanel
        Left = 8
        Top = 9
        Width = 953
        Height = 314
        TabOrder = 0
        object Label16: TLabel
          Left = 30
          Top = 241
          Width = 131
          Height = 50
          Caption = 'Instrucciones especiales:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 44
          Width = 465
          Height = 193
          Caption = 'Recoleccion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label12: TLabel
            Left = 22
            Top = 102
            Width = 69
            Height = 25
            Caption = 'Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 23
            Top = 144
            Width = 68
            Height = 25
            Caption = 'Munic.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Memo1: TMemo
            Left = 23
            Top = 26
            Width = 394
            Height = 70
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
          object ComboBox2: TComboBox
            Left = 97
            Top = 102
            Width = 320
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TextHint = 'Selecciona un estado'
            OnDropDown = ComboBox2DropDown
            OnExit = ComboBox2Exit
            OnSelect = ComboBox2Select
            Items.Strings = (
              'CANCELADO'
              'PENDIENTE'
              'PROGRAMADO'
              'FINALIZADO')
          end
          object ComboBox3: TComboBox
            Left = 97
            Top = 141
            Width = 320
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TextHint = 'Selecciona un municipio'
            OnDropDown = ComboBox3DropDown
            Items.Strings = (
              'CANCELADO'
              'PENDIENTE'
              'PROGRAMADO'
              'FINALIZADO')
          end
        end
        object GroupBox2: TGroupBox
          Left = 479
          Top = 44
          Width = 465
          Height = 193
          Caption = 'Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label14: TLabel
            Left = 22
            Top = 102
            Width = 69
            Height = 25
            Caption = 'Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 23
            Top = 144
            Width = 68
            Height = 25
            Caption = 'Munic.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Memo2: TMemo
            Left = 23
            Top = 26
            Width = 394
            Height = 70
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
          object ComboBox4: TComboBox
            Left = 97
            Top = 102
            Width = 320
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TextHint = 'Selecciona un estado'
            OnDropDown = ComboBox4DropDown
            OnExit = ComboBox4Exit
            OnSelect = ComboBox4Select
            Items.Strings = (
              'CANCELADO'
              'PENDIENTE'
              'PROGRAMADO'
              'FINALIZADO')
          end
          object ComboBox5: TComboBox
            Left = 97
            Top = 141
            Width = 320
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TextHint = 'Selecciona un municipio'
            OnDropDown = ComboBox5DropDown
            Items.Strings = (
              'CANCELADO'
              'PENDIENTE'
              'PROGRAMADO'
              'FINALIZADO')
          end
        end
        object Memo3: TMemo
          Left = 167
          Top = 248
          Width = 729
          Height = 53
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'Memo1')
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 377
          Top = 7
          Width = 196
          Height = 33
          BiDiMode = bdLeftToRight
          Caption = 'Agregar direcciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnClick = Button3Click
        end
      end
    end
    object CategoryPanel2: TCategoryPanel
      Top = 129
      Height = 30
      Caption = 'Clientes'
      Collapsed = True
      TabOrder = 6
      OnExpand = CategoryPanel2Expand
      ExpandedHeight = 176
      object Panel2: TPanel
        Left = 8
        Top = 4
        Width = 962
        Height = 141
        TabOrder = 0
        object Label8: TLabel
          Left = 269
          Top = 13
          Width = 124
          Height = 25
          Caption = 'Razon Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 36
          Top = 13
          Width = 44
          Height = 25
          Caption = 'RFC:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 11
          Top = 52
          Width = 69
          Height = 25
          Caption = 'Correo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 406
          Top = 52
          Width = 89
          Height = 25
          Caption = 'Contacto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 39
          Top = 92
          Width = 41
          Height = 25
          Caption = 'Tel.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 400
          Top = 10
          Width = 457
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 88
          Top = 10
          Width = 175
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit7: TEdit
          Left = 88
          Top = 49
          Width = 306
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit8: TEdit
          Left = 501
          Top = 49
          Width = 356
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit9: TEdit
          Left = 88
          Top = 89
          Width = 769
          Height = 33
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Button2: TButton
          Left = 863
          Top = 10
          Width = 75
          Height = 33
          BiDiMode = bdLeftToRight
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          OnClick = Button2Click
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 48
    object Salirconsulta1: TMenuItem
      Caption = 'Salir consulta'
      OnClick = Salirconsulta1Click
    end
    object Guardar1: TMenuItem
      Caption = 'Guardar'
      OnClick = Guardar1Click
    end
    object Consultar1: TMenuItem
      Caption = 'Consultar'
      OnClick = Consultar1Click
    end
    object Enlace1: TMenuItem
      Caption = 'Enlace'
      object Activar1: TMenuItem
        Caption = 'Activar'
        OnClick = Activar1Click
      end
    end
    object Exportar1: TMenuItem
      Caption = 'Exportar'
      object Correocliente1: TMenuItem
        Caption = 'Correo cliente (cotizacion)'
      end
      object Correoenlace1: TMenuItem
        Caption = 'Correo enlace (solicitud)'
      end
      object correoordencargaenlace1: TMenuItem
        Caption = 'correo orden carga enlace'
      end
    end
    object Impresiones1: TMenuItem
      Caption = 'Impresiones'
      object cotizacion1: TMenuItem
        Caption = 'cotizacion'
      end
      object ordendecargaenlace1: TMenuItem
        Caption = 'orden de carga enlace'
      end
    end
  end
end
