object TCalculadora: TTCalculadora
  Left = 0
  Top = 0
  Caption = 'TCalculadora'
  ClientHeight = 255
  ClientWidth = 186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnKeyDown = EvKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object TEHistorico: TEdit
    AlignWithMargins = True
    Left = 13
    Top = 28
    Width = 161
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    StyleElements = []
  end
  object TEOperacao: TEdit
    AlignWithMargins = True
    Left = 13
    Top = 50
    Width = 161
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    NumbersOnly = True
    TabOrder = 0
    OnKeyDown = EvKeyDown
  end
  object BtnPorcentagem: TButton
    Left = 13
    Top = 79
    Width = 35
    Height = 25
    Caption = '%'
    TabOrder = 2
    OnClick = BtnPorcentagemClick
  end
  object BtnNumero7: TButton
    Left = 13
    Top = 110
    Width = 35
    Height = 25
    Caption = '7'
    TabOrder = 3
    OnClick = Numero
  end
  object BtnNumero4: TButton
    Left = 13
    Top = 141
    Width = 35
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = Numero
  end
  object BtnNumero1: TButton
    Left = 13
    Top = 172
    Width = 35
    Height = 25
    Caption = '1'
    TabOrder = 5
    OnClick = Numero
  end
  object BtnInverter: TButton
    Left = 13
    Top = 203
    Width = 35
    Height = 25
    Caption = '+/-'
    TabOrder = 6
    OnClick = BtnInverterClick
  end
  object BtnClearAll: TButton
    Left = 55
    Top = 79
    Width = 35
    Height = 25
    Caption = 'CE'
    TabOrder = 7
    OnClick = BtnClearAllClick
  end
  object BtnNumero8: TButton
    Left = 55
    Top = 110
    Width = 35
    Height = 25
    Caption = '8'
    TabOrder = 8
    OnClick = Numero
  end
  object BtnNumero5: TButton
    Left = 55
    Top = 141
    Width = 35
    Height = 25
    Caption = '5'
    TabOrder = 9
    OnClick = Numero
  end
  object BtnNumero2: TButton
    Left = 55
    Top = 172
    Width = 35
    Height = 25
    Caption = '2'
    TabOrder = 10
    OnClick = Numero
  end
  object BtnNumero0: TButton
    Left = 54
    Top = 203
    Width = 35
    Height = 25
    Caption = '0'
    TabOrder = 11
    OnClick = Numero
  end
  object BtnClear: TButton
    Left = 96
    Top = 79
    Width = 35
    Height = 25
    Caption = 'C'
    TabOrder = 12
    OnClick = BtnClearClick
  end
  object BtnNumero9: TButton
    Left = 98
    Top = 110
    Width = 35
    Height = 25
    Caption = '9'
    TabOrder = 13
    OnClick = Numero
  end
  object BtnNumero6: TButton
    Left = 96
    Top = 141
    Width = 35
    Height = 25
    Caption = '6'
    TabOrder = 14
    OnClick = Numero
  end
  object BtnNumero3: TButton
    Left = 96
    Top = 172
    Width = 35
    Height = 25
    Caption = '3'
    TabOrder = 15
    OnClick = Numero
  end
  object BtnVirgula: TButton
    Left = 96
    Top = 203
    Width = 35
    Height = 25
    Caption = ','
    TabOrder = 16
    OnClick = BtnVirgulaClick
  end
  object BtnDivisao: TButton
    Left = 139
    Top = 79
    Width = 35
    Height = 25
    Caption = '/'
    TabOrder = 17
    OnClick = EVOperacao
  end
  object BtnMultiplicacao: TButton
    Left = 139
    Top = 110
    Width = 35
    Height = 25
    Caption = 'X'
    TabOrder = 18
    OnClick = EVOperacao
  end
  object BtnSubtracao: TButton
    Left = 139
    Top = 141
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 19
    OnClick = EVOperacao
  end
  object BtnSoma: TButton
    Left = 139
    Top = 172
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 20
    OnClick = EVOperacao
  end
  object BtnIgual: TButton
    Left = 139
    Top = 203
    Width = 35
    Height = 25
    Caption = '='
    TabOrder = 21
    OnClick = BtnIgualClick
  end
end
