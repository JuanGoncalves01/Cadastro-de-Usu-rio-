unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TFormCadastro = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    edtnome: TEdit;
    dtpnascimento: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    bntcancelar: TButton;
    bntsalvar: TButton;
    procedure bntsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

procedure TFormCadastro.bntsalvarClick(Sender: TObject);
begin

    FDQuery1.SQL.Text := 'INSERT INTO Usuarios (Nome, DataNascimento) VALUES (:Nome, :DataNascimento)';//prepara para inserir os dados.
    FDQuery1.ParamByName('Nome').AsString := edtNome.Text;  // Atribui o Nome.
    FDQuery1.ParamByName('DataNascimento').AsDate := dtpNascimento.Date;  // Atribui a Data Nascimento.
    FDQuery1.ExecSQL; //executa.

    // Exibe uma mensagem de sucesso
    ShowMessage('Usu�rio cadastrado com sucesso!'); //Para exibir uma mensagem.


    Close;//Acaba o cadastro.

end;

end.
