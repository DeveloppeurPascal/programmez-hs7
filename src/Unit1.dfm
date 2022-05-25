object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Mes contacts'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object StringGrid1: TStringGrid
    Tag = 3
    Left = 0
    Top = 0
    Width = 400
    Height = 416
    Align = alClient
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 184
    ExplicitWidth = 320
    ExplicitHeight = 120
    ColWidths = (
      124
      124
      124)
    ColAligments = (
      0
      0
      0)
  end
  object BindNavigator1: TBindNavigator
    Left = 0
    Top = 416
    Width = 624
    Height = 25
    DataSource = BindSourceDB1
    Align = alBottom
    Orientation = orHorizontal
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 232
    ExplicitWidth = 240
  end
  object Panel1: TPanel
    Left = 400
    Top = 0
    Width = 224
    Height = 416
    Align = alRight
    TabOrder = 2
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 212
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = '&Nom'
      FocusControl = Edit1
      ExplicitWidth = 27
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 64
      Width = 212
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = '&Pr'#233'nom'
      FocusControl = Edit2
      ExplicitWidth = 42
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 122
      Width = 212
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = '&T'#233'l'#233'phone'
      FocusControl = Edit3
      ExplicitWidth = 54
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 31
      Width = 212
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 54
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 89
      Width = 212
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 64
      ExplicitTop = 208
      ExplicitWidth = 121
    end
    object Edit3: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 147
      Width = 212
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 2
      ExplicitLeft = 72
      ExplicitTop = 216
      ExplicitWidth = 121
    end
    object Button1: TButton
      Left = 141
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Enregistrer'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    ResourceOptions.PersistentFileName = 'C:\Users\olfso\Documents\testcarnetadresses.xml'
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 304
    Top = 224
    object FDMemTable1nom: TStringField
      FieldName = 'nom'
    end
    object FDMemTable1prenom: TStringField
      FieldName = 'prenom'
    end
    object FDMemTable1téléphone: TStringField
      FieldName = 't'#233'l'#233'phone'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDMemTable1
    ScopeMappings = <>
    Left = 432
    Top = 232
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 140
    Top = 181
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'nom'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'prenom'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 't'#233'l'#233'phone'
      Control = Edit3
      Track = True
    end
  end
end
