object frmPython: TfrmPython
  Left = 200
  Top = 108
  Caption = 'Realizar Backup no Sistema'
  ClientHeight = 620
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 620
    ExplicitLeft = 305
    ExplicitHeight = 446
  end
  object Panel2: TPanel
    Left = 3
    Top = 0
    Width = 818
    Height = 620
    Align = alClient
    BevelOuter = bvNone
    Color = 14662267
    ParentBackground = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 0
      Width = 818
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 153
      ExplicitWidth = 380
    end
    object Memo2: TMemo
      Left = 6
      Top = 344
      Width = 803
      Height = 273
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = -2
    Top = 0
    Width = 814
    Height = 345
    Align = alCustom
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Memo1: TMemo
      Left = 615
      Top = 9
      Width = 148
      Height = 80
      Color = clInfoText
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 208
      Top = 9
      Width = 425
      Height = 240
      Caption = 'Configura'#231#245'es'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 88
        Top = 40
        Width = 121
        Height = 22
        Caption = 'Email Pcloud'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 88
        Top = 110
        Width = 136
        Height = 22
        Caption = 'Senha Pcloud:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtsenha: TEdit
        Left = 88
        Top = 136
        Width = 241
        Height = 28
        Hint = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        Text = 'Smith'
      end
      object edtemail: TEdit
        Left = 88
        Top = 66
        Width = 241
        Height = 28
        Hint = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'Smith'
      end
      object Button2: TButton
        Left = 88
        Top = 184
        Width = 241
        Height = 33
        Caption = 'Atualizar Nuvem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object Button1: TButton
      Left = 208
      Top = 264
      Width = 425
      Height = 57
      Caption = 'Realizar Backup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo2
    Left = 72
    Top = 328
  end
  object PythonDelphiVar1: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'Properties'
    OnExtGetData = PythonDelphiVar1ExtGetData
    OnExtSetData = PythonDelphiVar1ExtSetData
    OnChange = PythonDelphiVar1Change
    Left = 232
    Top = 288
  end
  object PythonEngine1: TPythonEngine
    InitScript.Strings = (
      'import sys'
      'print(sys.version)'
      '')
    IO = PythonGUIInputOutput1
    Left = 64
    Top = 264
  end
  object pcloud_pass: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'senha'
    OnGetData = pcloud_passGetData
    OnSetData = pcloud_passSetData
    Left = 424
    Top = 248
  end
  object pcloud_user: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'email'
    OnGetData = pcloud_userGetData
    OnSetData = pcloud_userSetData
    Left = 336
    Top = 288
  end
  object db_pass1: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'db_pass'
    OnGetData = db_pass1GetData
    OnSetData = db_pass1SetData
    Left = 702
    Top = 248
  end
  object db_name1: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'db_name'
    OnGetData = db_name1GetData
    OnSetData = db_name1SetData
    Left = 734
    Top = 184
  end
  object db_user1: TPythonDelphiVar
    Engine = PythonEngine1
    Module = '__main__'
    VarName = 'db_user'
    OnGetData = db_user1GetData
    OnSetData = db_user1SetData
    Left = 734
    Top = 136
  end
end
