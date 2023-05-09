object FrmEditDialog: TFrmEditDialog
  Left = 302
  Top = 239
  BorderStyle = bsDialog
  Caption = 'Procurar Registro'
  ClientHeight = 522
  ClientWidth = 858
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 800
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 46
    Width = 858
    Height = 476
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = ' '
    ParentColor = True
    TabOrder = 1
    object pnlCriteria: TPanel
      Left = 2
      Top = 2
      Width = 854
      Height = 73
      Align = alTop
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      ParentColor = True
      TabOrder = 0
      object pnlInput: TPanel
        Left = 2
        Top = 31
        Width = 846
        Height = 32
        Align = alTop
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = ' '
        ParentColor = True
        TabOrder = 0
        object btnProcurar: TSpeedButton
          AlignWithMargins = True
          Left = 808
          Top = 1
          Width = 31
          Height = 26
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 1
          Margins.Bottom = 1
          Action = actProcurar
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          ExplicitTop = 0
        end
        object cbxCampos: TComboBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 166
          Height = 22
          Cursor = crHandPoint
          Hint = 'Selecione o campo para pesquisar'
          Align = alLeft
          Style = csDropDownList
          DropDownCount = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnCloseUp = cbxCamposCloseUp
          ExplicitLeft = 2
        end
        object cbxOpcao: TComboBox
          AlignWithMargins = True
          Left = 175
          Top = 3
          Width = 145
          Height = 22
          Cursor = crHandPoint
          Hint = 'Select how to compare field content with value'
          Align = alLeft
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Contem'
          OnCloseUp = cbxOpcaoCloseUp
          Items.Strings = (
            'Contem'
            'Igual')
        end
        object EditPesquisa: TEdit
          AlignWithMargins = True
          Left = 326
          Top = 2
          Width = 482
          Height = 24
          Hint = 'Enter value to search by'
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = EditPesquisaChange
          OnKeyDown = EditPesquisaKeyDown
          ExplicitHeight = 22
        end
      end
      object pnlLabels: TPanel
        Left = 2
        Top = 2
        Width = 846
        Height = 29
        Align = alTop
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = ' '
        Enabled = False
        ParentColor = True
        TabOrder = 1
        object lblField: TLabel
          Left = 5
          Top = 10
          Width = 116
          Height = 13
          Caption = 'Pes&quisar no campo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblComparison: TLabel
          Left = 177
          Top = 10
          Width = 38
          Height = 13
          Caption = '&Op'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblValue: TLabel
          Left = 328
          Top = 10
          Width = 74
          Height = 13
          Caption = '&Procurar por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object pnlGrid: TPanel
      Left = 2
      Top = 75
      Width = 854
      Height = 354
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      ParentColor = True
      TabOrder = 1
      object gridDados: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 840
        Height = 311
        Cursor = crHandPoint
        Align = alClient
        Constraints.MinHeight = 200
        Constraints.MinWidth = 600
        DataSource = dsSearch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = gridDadosDrawColumnCell
        OnDblClick = gridDadosDblClick
        OnKeyDown = gridDadosKeyDown
        Columns = <
          item
            Expanded = False
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 2
        Top = 319
        Width = 846
        Height = 29
        Align = alBottom
        BevelKind = bkTile
        BevelOuter = bvNone
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
    end
    object pnlButtons: TPanel
      Left = 2
      Top = 429
      Width = 854
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      ParentBackground = False
      TabOrder = 2
      object btnOK: TBitBtn
        Left = 2
        Top = 2
        Width = 135
        Height = 41
        Cursor = crHandPoint
        Action = actConfirmar
        Align = alLeft
        Caption = 'OK (Enter)'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010102000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B0C081277845DC9323727540000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B0C081279865FCD97A776FF94A474FA3237275400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000090A
          070F79865FCD97A776FF97A776FF97A776FF94A474FA31362652000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090A070F7884
          5DCA97A776FF97A776FF97A776FF97A776FF97A776FF93A373F92E33244E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000090A070F78845DCA97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF93A373F92E33
          244E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090A070F78845DCA97A776FF97A7
          76FF97A776FF97A776FF74805BC493A373F997A776FF97A776FF97A776FF93A3
          73F92F34254F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000090A070F78845DCA97A776FF97A776FF97A7
          76FF97A776FF687351B0040403062E32244D93A373F997A776FF97A776FF97A7
          76FF93A373F92F34254F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090A070F78845DCA97A776FF97A776FF97A776FF97A7
          76FF687351B00404030600000000000000002E32244D93A373F997A776FF97A7
          76FF97A776FF93A373F92F34254F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000090A070F78845DCA97A776FF97A776FF97A776FF97A776FF6873
          51B004040306000000000000000000000000000000002E32244D93A373F997A7
          76FF97A776FF97A776FF93A373F92F34254F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000353A295996A676FE97A776FF97A776FF97A776FF687351B00404
          03060000000000000000000000000000000000000000000000002E32244D93A3
          73F997A776FF97A776FF97A776FF93A373F92F34254F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004147326D96A676FE97A776FF687351B0040403060000
          0000000000000000000000000000000000000000000000000000000000002E32
          244D93A373F997A776FF97A776FF97A776FF93A373F92F34254F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004147326D687351AF04040306000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E32244D93A373F997A776FF97A776FF97A776FF93A373F92F34254F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002E32244D93A373F997A776FF97A776FF97A776FF93A373F92F34
          254F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E32244D93A373F997A776FF97A776FF97A776FF93A3
          73F92F34254F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002E32244D93A373F997A776FF97A776FF97A7
          76FF93A373F92F34254F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002E32244D93A373F997A776FF97A7
          76FF97A776FF93A373F92F34254F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E32244D93A373F997A7
          76FF97A776FF97A776FF93A373F92F34254F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002E32244D93A3
          73F997A776FF97A776FF97A776FF75815BC50101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E32
          244D93A373F997A776FF78855ECB090A07100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E32244D75815BC5090A0710000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101010200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
      end
      object btnCancel: TBitBtn
        Left = 717
        Top = 2
        Width = 135
        Height = 41
        Cursor = crHandPoint
        Action = actCancelar
        Align = alRight
        Caption = 'Cancelar (Esc)'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010202000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005070F12354EA9C8151E424E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000016204552354EA9C80507
          1013000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005070F123750AECD4463D8FF4261D3F9151E
          424E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524261D3F94463D8FF3750
          AECE050710130000000000000000000000000000000000000000000000000000
          0000000000000000000000000101354DA9C74463D8FF4463D8FF4463D8FF4261
          D3F9151E424E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162045524261D3F94463D8FF4463D8FF4463
          D8FF354EA9C80000010100000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
          D8FF4261D3F9151E424E00000000000000000000000000000000000000000000
          00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4261D3F94463D8FF4463
          D8FF4463D8FF4261D3F9151E424E000000000000000000000000000000000000
          000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D4261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
          0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000151E414D4261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000001620
          45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000151E
          414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F162045524261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E4900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4261D3F9151F434F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4261D3F9151F434F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001620
          45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49151E414D4261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000162045524261
          D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000151E
          414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000162045524261D3F94463
          D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
          0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524261D3F94463D8FF4463
          D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
          000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F
          434F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162046534261D3F94463D8FF4463D8FF4463
          D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
          00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261
          D3F9151F434F0000000000000000000000000000000000000000000000000000
          0000000000000000000001010202354CA7C54463D8FF4463D8FF4463D8FF4261
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
          D8FF354CA7C50000010100000000000000000000000000000000000000000000
          000000000000000000000000000004060D0F364EABCA4463D8FF4261D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4261D3F94463D8FF364F
          ACCB04060E100000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004060D0F344CA5C3131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D354CA7C50406
          0E10000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 858
    Height = 46
    Align = alTop
    BorderWidth = 2
    Color = 10455853
    ParentBackground = False
    TabOrder = 0
    object LblBarraTitulo: TLabel
      AlignWithMargins = True
      Left = 46
      Top = 6
      Width = 806
      Height = 34
      Align = alClient
      Alignment = taCenter
      Caption = 'Pesquisa'
      Color = 10455853
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 68
      ExplicitHeight = 23
    end
    object Image1: TImage
      Left = 3
      Top = 3
      Width = 40
      Height = 40
      Align = alLeft
      Center = True
      Proportional = True
      ExplicitLeft = 0
      ExplicitTop = 2
    end
  end
  object dsSearch: TDataSource
    AutoEdit = False
    DataSet = QrySearch
    Left = 507
    Top = 188
  end
  object QrySearch: TFDQuery
    Left = 450
    Top = 191
  end
  object ActionList1: TActionList
    Left = 370
    Top = 193
    object actProcurar: TAction
      Caption = '(...)'
      OnExecute = actProcurarExecute
    end
    object actConfirmar: TAction
      Caption = 'OK (Enter)'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar (Esc)'
      OnExecute = actCancelarExecute
    end
  end
end