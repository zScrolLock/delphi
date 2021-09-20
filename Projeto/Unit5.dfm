object Form_distribuidor: TForm_distribuidor
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Controle de Distribuidores - Software GEP'
  ClientHeight = 360
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 360
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 161
      Height = 18
      Caption = 'C'#243'digo do Distribuidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 158
      Width = 63
      Height = 18
      Caption = 'Telefone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 107
      Width = 41
      Height = 18
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 162
      Top = 107
      Width = 50
      Height = 18
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 214
      Width = 69
      Height = 18
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 157
      Top = 158
      Width = 20
      Height = 18
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 296
      Top = 280
      Width = 109
      Height = 13
      Caption = 'F2 - Inserir distribuidor'
    end
    object Label9: TLabel
      Left = 432
      Top = 280
      Width = 69
      Height = 13
      Caption = 'F3 - Confirmar'
    end
    object Label10: TLabel
      Left = 528
      Top = 280
      Width = 113
      Height = 13
      Caption = 'F4 - Apagar distribuidor'
    end
    object Label11: TLabel
      Left = 656
      Top = 280
      Width = 91
      Height = 13
      Caption = '[ESC] - Sair da tela'
    end
    object DBGrid1: TDBGrid
      Left = 296
      Top = 56
      Width = 585
      Height = 218
      DataSource = DataModule2.DS_Distribuidor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idDistribuidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Title.Caption = 'Tel'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Title.Caption = 'Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'UF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 892
      Height = 41
      Align = alTop
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 224
        Top = 6
        Width = 264
        Height = 24
        Caption = 'Controle de Distribuidores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 80
      Width = 134
      Height = 21
      DataField = 'idDistribuidor'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 182
      Width = 124
      Height = 21
      DataField = 'telefone'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 131
      Width = 124
      Height = 21
      DataField = 'nome'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 157
      Top = 131
      Width = 117
      Height = 21
      DataField = 'cidade'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 238
      Width = 233
      Height = 21
      DataField = 'endereco'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 157
      Top = 182
      Width = 44
      Height = 21
      DataField = 'uf'
      DataSource = DataModule2.DS_Distribuidor
      TabOrder = 7
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 272
      Width = 185
      Height = 73
      Caption = 'Tipo do Distribuidor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object RadioButton1: TRadioButton
      Left = 33
      Top = 288
      Width = 73
      Height = 17
      Caption = 'Alimenticio'
      TabOrder = 9
    end
    object RadioButton2: TRadioButton
      Left = 112
      Top = 288
      Width = 81
      Height = 17
      Caption = 'Embalagens'
      TabOrder = 10
    end
    object RadioButton3: TRadioButton
      Left = 33
      Top = 311
      Width = 53
      Height = 17
      Caption = 'Geral'
      TabOrder = 11
    end
  end
end
