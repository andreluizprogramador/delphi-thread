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
    Top = 184
    Width = 282
    Height = 17
    Max = 10
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 123
    Top = 134
    Width = 69
    Height = 23
    Cursor = crHandPoint
    Caption = 'Start'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 24
    Caption = 'Iniciar Contagem'
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
    Top = 79
    Properties.MinValue = 1.000000000000000000
    TabOrder = 4
    Value = 1
    Width = 66
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 56
    Caption = 'Segundos'
    Visible = False
  end
  object cmbVelocidade: TcxComboBox
    Left = 31
    Top = 135
    Properties.Items.Strings = (
      '1x'
      '2x'
      '3x'
      '5x'
      '10x'
      '50x')
    TabOrder = 6
    Text = '1x'
    Width = 66
  end
  object cxLabel3: TcxLabel
    Left = 31
    Top = 112
    Caption = 'Velocidade'
    Visible = False
  end
  object Relogio: TcxClock
    Left = 219
    Top = 79
    Width = 78
    Height = 78
  end
  object cxComboBox1: TcxComboBox
    Left = 123
    Top = 79
    Properties.Items.Strings = (
      '1x'
      '2x'
      '3x'
      '5x'
      '10x'
      '50x')
    TabOrder = 9
    Text = '1x'
    Width = 69
  end
  object cxLabel4: TcxLabel
    Left = 123
    Top = 56
    Caption = 'Tipo Progress'
    Visible = False
  end
  object cxLabel5: TcxLabel
    Left = 219
    Top = 56
    Caption = 'Tempo Decorrido'
    Visible = False
  end
  object sTimer: TTimer
    OnTimer = sTimerTimer
    Left = 304
    Top = 8
  end
end
