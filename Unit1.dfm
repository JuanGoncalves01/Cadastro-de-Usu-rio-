object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'CADASTRO'
  ClientHeight = 248
  ClientWidth = 300
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
    Width = 107
    Height = 15
    Caption = 'Data de Nascimento'
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 336
    Width = 120
    Height = 97
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
    Date = 45703.000000000000000000
    Time = 0.497505358798662200
    TabOrder = 2
  end
  object bntcancelar: TButton
    Left = 8
    Top = 168
    Width = 50
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = bntcancelarClick
  end
  object bntsalvar: TButton
    Left = 176
    Top = 168
    Width = 50
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = bntsalvarClick
  end
  object Button1: TButton
    Left = 64
    Top = 168
    Width = 50
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
  end
  object edtEditar: TButton
    Left = 120
    Top = 168
    Width = 50
    Height = 25
    Caption = 'Editar'
    TabOrder = 6
    OnClick = edtEditarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CadastroDB'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 384
    Top = 288
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '    SELECT * FROM Usuarios;'
      '')
    Left = 416
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 456
    Top = 288
  end
end
