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
    Button1: TButton;
    edtEditar: TButton;
    procedure bntsalvarClick(Sender: TObject);
    procedure bntcancelarClick(Sender: TObject);
    procedure edtEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

procedure TFormCadastro.bntcancelarClick(Sender: TObject);
begin

Close;//Ele fecha a pagina.

end;

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

procedure TFormCadastro.edtEditarClick(Sender: TObject);
begin
  if FDQuery1.RecordCount=0 then//Para identificar se � o usu�rio.

begin
  Showmessage('Selecione um usu�rio para editar.');
end;
  FormCadastro.edtnome.Text:=FDQuery1.Fieldbyname('Nome').AsString;//FieldByname ele me permite que eu obtenha uma informa�ao da tabela e modifique a mesma.
  FormCadastro.dtpNascimento.Date := FDQuery1.FieldByName('DataNascimento').AsDateTime;

  FormCadastro.ShowModal;//Usado para exiber uma tabela.

  FDQuery1.Refresh;//Serve para atualizar os dados.

end;

end.
