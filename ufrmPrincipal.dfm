object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Trabalhando com Threads'
  ClientHeight = 238
  ClientWidth = 341
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar: TProgressBar
    Left = 31
    Top = 168
    Width = 282
    Height = 17
    Max = 10
    TabOrder = 0
  end
  object btnStart: TcxButton
    Left = 123
    Top = 118
    Width = 69
    Height = 23
    Cursor = crHandPoint
    Caption = 'Start'
    TabOrder = 1
    OnClick = btnStartClick
  end
  object cxLabel1: TcxLabel
    Left = 31
    Top = 16
    Caption = 'Iniciar Contagem com Thread'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 3026478
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object lblFinalizado: TcxLabel
    Left = 32
    Top = 207
    Caption = 'Finalizado'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clTeal
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
  end
  object spinTempo: TcxSpinEdit
    Left = 31
    Top = 63
    Properties.MaxValue = 1000.000000000000000000
    Properties.MinValue = 1.000000000000000000
    Properties.ReadOnly = False
    TabOrder = 4
    Value = 1
    Width = 72
  end
  object cxLabel2: TcxLabel
    Left = 31
    Top = 46
    Caption = 'Load 1 a 1000'
    Visible = False
  end
  object cmbVelocidade: TcxComboBox
    Left = 31
    Top = 119
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1x'
      '2x'
      '3x'
      '5x'
      '10x'
      '50x'
      '100x'
      '200x'
      '500x'
      '1000x')
    Properties.ReadOnly = False
    TabOrder = 6
    Text = '1000x'
    Width = 72
  end
  object cxLabel3: TcxLabel
    Left = 30
    Top = 102
    Caption = 'Velocidade'
    Visible = False
  end
  object Relogio: TcxClock
    Left = 219
    Top = 63
    Width = 78
    Height = 78
  end
  object cxComboBox1: TcxComboBox
    Left = 123
    Top = 63
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1x'
      '2x'
      '3x'
      '5x'
      '10x'
      '50x')
    Properties.ReadOnly = False
    TabOrder = 9
    Text = '1x'
    Width = 69
  end
  object cxLabel4: TcxLabel
    Left = 123
    Top = 46
    Caption = 'Tipo Progress'
    Visible = False
  end
  object cxLabel5: TcxLabel
    Left = 219
    Top = 46
    Caption = 'Tempo Decorrido'
    Visible = False
  end
  object lblCLock: TcxLabel
    Left = 228
    Top = 142
    Caption = '00:00:00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 3026478
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel6: TcxLabel
    Left = 28
    Top = 184
    Caption = '1 ...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clTeal
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = cl3DDkShadow
    Style.IsFontAssigned = True
  end
  object cxLabel7: TcxLabel
    Left = 273
    Top = 184
    Caption = '... 1000'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clTeal
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = cl3DDkShadow
    Style.IsFontAssigned = True
  end
  object cxLabel8: TcxLabel
    Left = 30
    Top = 152
    Caption = 'Load Bar'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clTeal
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
  end
  object btnCancelar: TcxButton
    Left = 244
    Top = 207
    Width = 69
    Height = 23
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 16
    OnClick = btnCancelarClick
  end
  object sTimer: TTimer
    Left = 304
    Top = 8
  end
end
