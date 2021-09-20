object Form_registro: TForm_registro
  Left = 0
  Top = 0
  Caption = 'Ganhou'
  ClientHeight = 218
  ClientWidth = 454
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 218
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 50
      Width = 84
      Height = 13
      Caption = 'Nome do Jogador'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 96
      Width = 89
      Height = 13
      Caption = 'Tempo do Jogador'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 120
      Top = 16
      Width = 234
      Height = 25
      Caption = 'Parab'#233'ns voc'#234' ganhou'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 69
      Width = 300
      Height = 21
      DataField = 'nome'
      DataSource = DataModule5.DS_Jogador
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 115
      Width = 134
      Height = 21
      DataField = 'tempo'
      DataSource = DataModule5.DS_Jogador
      TabOrder = 1
      OnChange = DBEdit2Change
    end
    object DBNavigator1: TDBNavigator
      Left = 84
      Top = 160
      Width = 240
      Height = 25
      DataSource = DataModule5.DS_Jogador
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
      TabOrder = 2
    end
  end
end
