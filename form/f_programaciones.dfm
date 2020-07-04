object programaciones: Tprogramaciones
  Left = 0
  Top = 0
  Caption = 'PROGRAMACIONES'
  ClientHeight = 523
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 545
      Top = 103
      Width = 151
      Height = 25
      Caption = 'Fecha de carga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 700
      Top = 26
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
    object Label1: TLabel
      Left = 16
      Top = 139
      Width = 60
      Height = 25
      Caption = 'PROG.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 139
      Width = 81
      Height = 25
      Caption = 'CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 414
      Top = 139
      Width = 76
      Height = 25
      Caption = 'ORIGEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 582
      Top = 139
      Width = 87
      Height = 25
      Caption = 'DESTINO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit5: TEdit
      Left = 16
      Top = 100
      Width = 137
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'EIR'
    end
    object Edit1: TEdit
      Left = 159
      Top = 100
      Width = 378
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Documentos'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 702
      Top = 100
      Width = 163
      Height = 33
      Date = 43860.000000000000000000
      Time = 0.422846053239482000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 871
      Top = 23
      Width = 122
      Height = 27
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 545
      Top = 64
      Width = 320
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TextHint = 'Selecciona status'
      OnDropDown = ComboBox1DropDown
      Items.Strings = (
        'CANCELADO'
        'PENDIENTE'
        'PROGRAMADO'
        'FINALIZADO')
    end
    object DateTimePicker3: TDateTimePicker
      Left = 728
      Top = 23
      Width = 137
      Height = 27
      Date = 43853.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 0.446082025460782500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DateTimePicker2: TDateTimePicker
      Left = 545
      Top = 23
      Width = 137
      Height = 27
      Date = 43854.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 0.446082025460782500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 16
      Width = 521
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
      TabOrder = 7
    end
    object Button2: TButton
      Left = 871
      Top = 64
      Width = 122
      Height = 69
      Caption = 'Programar'
      TabOrder = 8
    end
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 169
    Width = 1000
    Height = 354
    VertScrollBar.Tracking = True
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -19
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HeaderHeight = 50
    ParentFont = False
    TabOrder = 1
  end
end
