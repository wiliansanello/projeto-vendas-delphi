object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  Caption = 'Informe aqui o t'#237'tulo'
  ClientHeight = 471
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 778
    Height = 424
    ActivePage = tbManutencao
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 430
    object tbListagem: TTabSheet
      Caption = 'Listagem'
    end
    object tbManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object pnlListagem: TPanel
        Left = 0
        Top = 0
        Width = 770
        Height = 81
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 8
          Top = 16
          Width = 433
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesqusa'
        end
        object btnPesquisar: TBitBtn
          Left = 447
          Top = 15
          Width = 75
          Height = 25
          BiDiMode = bdLeftToRight
          Caption = '&Pesquisar'
          ParentBiDiMode = False
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 81
        Width = 770
        Height = 313
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 424
    Width = 778
    Height = 47
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 416
    object btnNovo: TBitBtn
      Left = 4
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
    end
    object Alterar: TBitBtn
      Left = 85
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 166
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 247
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 328
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Apagar'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 699
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 409
      Top = 9
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 572
    Top = 50
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 648
    Top = 48
  end
end
