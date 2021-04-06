unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, UfrmDataHora;

type
  TFrmPrincipal = class(TForm)
    PNL_1: TPanel;
    PGPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    Label2: TLabel;
    ListBox1: TListBox;
    Button4: TButton;
    Panel2: TPanel;
    Button5: TButton;
    Button6: TButton;
    Panel3: TPanel;
    Button7: TButton;
    Label3: TLabel;
    Button8: TButton;
    Button9: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  FrmDataHora.ShowModal;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin

  PGPrincipal.ActivePageIndex:=1;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex >=0 then
  begin
    ListBox1.Items.Add(RadioGroup1.Items[RadioGroup1.ItemIndex]);
  end

  else
  MessageDlg('Você não selecionou nenhuma opção', mtError, [mbOK], 0);

end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  PGPrincipal.ActivePageIndex :=2
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  PGPrincipal.ActivePageIndex := 0
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
begin
  PGPrincipal.ActivePageIndex :=1
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.SetFocus;
end;

procedure TFrmPrincipal.Button9Click(Sender: TObject);
begin
  Memo1.Lines.Clear;

end;

procedure TFrmPrincipal.Edit1Enter(Sender: TObject);
begin
  Edit1.Color := $00fe324F;
end;

procedure TFrmPrincipal.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    MessageDlg('Por favor digite um texto',mtError,[mbOK],0);
    Edit1.SetFocus;
  end
  else
    if Length(Edit1.Text)<> 4 then
    begin
      MessageDlg('O tamanho do texto deve ser maior que 4', mtInformation, [mbOK],0);
      Edit1.SetFocus;
      Edit1.SelectAll;
    end
    Else
      Edit1.Color := clWindow;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PNL_1.Caption := 'Mudando o caption do PANEL com onShow';
  PNL_1.Color := $00fe8d67 ;

end;

end.
