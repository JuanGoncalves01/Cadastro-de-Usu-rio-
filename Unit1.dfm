object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'CADASTRO'
  ClientHeight = 436
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 35
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 121
    Height = 15
    Caption = 'Data de Nascimento'
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 315
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtnome: TEdit
    Left = 32
    Top = 51
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object dtpnascimento: TDateTimePicker
    Left = 32
    Top = 109
    Width = 186
    Height = 23
    Date = 45702.000000000000000000
    Time = 0.497505358798662200
    TabOrder = 2
  end
  object bntcancelar: TButton
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object bntsalvar: TButton
    Left = 143
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = bntsalvarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CadastroDB'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 280
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '    SELECT * FROM Usuarios;'
      '')
    Left = 344
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 344
    Top = 112
  end
end
