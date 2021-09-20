object Info: TInfo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Info'
  ClientHeight = 121
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 257
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 328
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 336
      Height = 41
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold, fsItalic]
      HideSelection = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '- Lu'#237's Augusto - BCC -'
      ExplicitWidth = 326
    end
    object Button1: TButton
      Left = 128
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
