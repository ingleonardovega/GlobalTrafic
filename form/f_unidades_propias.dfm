object unidades_propias: Tunidades_propias
  Left = 0
  Top = 0
  Caption = 'Unidades propias'
  ClientHeight = 584
  ClientWidth = 919
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
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 889
    Height = 569
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 17
      Width = 73
      Height = 19
      Caption = 'Operador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 44
      Top = 54
      Width = 56
      Height = 19
      Caption = 'Unidad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 402
      Top = 54
      Width = 92
      Height = 19
      Caption = 'Modelo/A'#241'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 92
      Width = 83
      Height = 19
      Caption = 'Economico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 241
      Top = 92
      Width = 49
      Height = 19
      Caption = 'Placas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 433
      Top = 92
      Width = 121
      Height = 19
      Caption = 'Placas remolque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 402
      Top = 17
      Width = 55
      Height = 19
      Caption = 'Celular:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 681
      Top = 13
      Width = 200
      Height = 144
    end
    object Label2: TLabel
      Left = 6
      Top = 125
      Width = 94
      Height = 19
      Caption = 'Combustible:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 254
      Top = 125
      Width = 95
      Height = 19
      Caption = 'Rendimiento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 407
      Top = 125
      Width = 124
      Height = 19
      Caption = 'Odometro actual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 106
      Top = 17
      Width = 279
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 106
      Top = 51
      Width = 279
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnDropDown = ComboBox1DropDown
    end
    object Edit4: TEdit
      Left = 500
      Top = 54
      Width = 173
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 106
      Top = 92
      Width = 111
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 296
      Top = 92
      Width = 113
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 560
      Top = 92
      Width = 113
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel1: TPanel
      Left = 98
      Top = 165
      Width = 687
      Height = 161
      TabOrder = 9
      object Label9: TLabel
        Left = 47
        Top = 28
        Width = 100
        Height = 19
        Caption = 'Poliza seguro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 12
        Top = 58
        Width = 135
        Height = 19
        Caption = 'Tarjeta circulacion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 86
        Top = 88
        Width = 61
        Height = 19
        Caption = 'Licencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 55
        Top = 118
        Width = 92
        Height = 19
        Caption = 'Foto Unidad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 401
        Top = 9
        Width = 39
        Height = 13
        Caption = 'Guardar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 153
        Top = 3
        Width = 221
        Height = 19
        Caption = 'Documentos unidad / operador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 568
        Top = 3
        Width = 59
        Height = 19
        Caption = 'Vigencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzButtonEdit1: TRzButtonEdit
        Left = 153
        Top = 28
        Width = 241
        Height = 24
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzButtonEdit1ButtonClick
      end
      object RzButtonEdit2: TRzButtonEdit
        Left = 153
        Top = 58
        Width = 241
        Height = 24
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzButtonEdit2ButtonClick
      end
      object RzButtonEdit3: TRzButtonEdit
        Left = 153
        Top = 88
        Width = 241
        Height = 24
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzButtonEdit3ButtonClick
      end
      object RzButtonEdit4: TRzButtonEdit
        Left = 153
        Top = 118
        Width = 241
        Height = 24
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzButtonEdit4ButtonClick
      end
      object Button1: TButton
        Left = 451
        Top = 28
        Width = 75
        Height = 25
        Caption = 'Ver'
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 451
        Top = 58
        Width = 75
        Height = 25
        Caption = 'Ver'
        TabOrder = 5
      end
      object Button3: TButton
        Left = 451
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Ver'
        TabOrder = 6
      end
      object Button4: TButton
        Left = 451
        Top = 119
        Width = 75
        Height = 25
        Caption = 'Ver'
        TabOrder = 7
      end
      object CheckBox1: TCheckBox
        Left = 411
        Top = 32
        Width = 34
        Height = 17
        TabOrder = 8
      end
      object CheckBox2: TCheckBox
        Left = 411
        Top = 62
        Width = 34
        Height = 17
        TabOrder = 9
      end
      object CheckBox3: TCheckBox
        Left = 411
        Top = 92
        Width = 34
        Height = 17
        TabOrder = 10
      end
      object CheckBox4: TCheckBox
        Left = 411
        Top = 122
        Width = 34
        Height = 17
        TabOrder = 11
      end
      object DateTimePicker1: TDateTimePicker
        Left = 544
        Top = 31
        Width = 118
        Height = 27
        Date = 43833.117929548610000000
        Format = 'yyyy-MM-dd'
        Time = 43833.117929548610000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DateTimePicker2: TDateTimePicker
        Left = 544
        Top = 88
        Width = 118
        Height = 27
        HelpType = htKeyword
        Date = 43833.117929548610000000
        Format = 'yyyy-MM-dd'
        Time = 43833.117929548610000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
    end
    object StringGrid1: TStringGrid
      Left = 17
      Top = 332
      Width = 768
      Height = 221
      ColCount = 6
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 10
      OnDblClick = StringGrid1DblClick
      OnSelectCell = StringGrid1SelectCell
      ColWidths = (
        25
        74
        117
        184
        192
        115)
    end
    object Edit8: TEdit
      Left = 461
      Top = 17
      Width = 212
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ComboBox2: TComboBox
      Left = 106
      Top = 125
      Width = 139
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        'Magna'
        'Premium'
        'Diesel')
    end
    object Edit2: TEdit
      Left = 354
      Top = 125
      Width = 46
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit3: TEdit
      Left = 535
      Top = 125
      Width = 138
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object MainMenu1: TMainMenu
    Left = 696
    Top = 8
    object Guardar1: TMenuItem
      Caption = 'Guardar'
      OnClick = Guardar1Click
    end
    object NuevoRegistro1: TMenuItem
      Caption = 'Nuevo Registro'
      OnClick = NuevoRegistro1Click
    end
  end
  object save: TSaveDialog
    Left = 56
    Top = 182
  end
  object open: TOpenDialog
    Options = [ofHideReadOnly, ofNoReadOnlyReturn, ofEnableSizing]
    Left = 56
    Top = 230
  end
end
