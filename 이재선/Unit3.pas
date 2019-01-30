unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.TabControl, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm3 = class(TForm)
    TabControl2: TTabControl;
    TabItem1: TTabItem;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ImageControl1: TImageControl;
    Grid2: TGrid;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button5: TButton;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    Button7: TButton;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Grid1: TGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label9: TLabel;
    Edit9: TEdit;
    Layout1: TLayout;
    Layout2: TLayout;
    Button9: TButton;
    Layout3: TLayout;
    Edit10: TEdit;
    Edit11: TEdit;
    Button8: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Button10: TButton;
    Label12: TLabel;
    Button11: TButton;
    Label13: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses Unit1;

procedure TForm3.Button10Click(Sender: TObject);
begin
datamodule1.login.Insert;
form3.layout2.Visible := true;
form3.layout1.Visible := false;
form3.layout3.Visible := false;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
 datamodule1.user.edit;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin

 datamodule1.user.delete;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
    datamodule1.user.append;
    edit1.Text := '';
    edit2.Text := '';
    edit3.Text := '';
    memo1.Text := '';
    edit1.setfocus;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
 datamodule1.user.cancel;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
     datamodule1.user.post;
       datamodule1.user.refresh;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
   datamodule1.user.post;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
form3.layout1.Visible := true;
form3.layout2.Visible := false;
form3.layout3.Visible := false
;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
   datamodule1.login.Post;
   datamodule1.login.refresh;
   form3.layout3.Visible := true;
   form3.layout2.Visible := false;
   form3.layout1.Visible := false;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if datamodule1.user.State =  dsinsert then
datamodule1.user.fieldbyname('name').asstring := edit1.Text;


end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
if datamodule1.user.State =  dsinsert then
datamodule1.user.fieldbyname('birth').asstring := edit2.Text;

end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
if datamodule1.user.State =  dsinsert then
datamodule1.user.fieldbyname('phone').asstring := edit3.Text;
end;

procedure TForm3.Edit4Change(Sender: TObject);
begin
if datamodule1.login.State =  dsinsert then
datamodule1.login.fieldbyname('id').asstring := edit4.Text;


end;

procedure TForm3.Edit5Change(Sender: TObject);
begin
 datamodule1.user.IndexFieldNames := 'name';

 datamodule1.user.FindNearest([edit1.Text]);
end;

procedure TForm3.Edit6Change(Sender: TObject);
begin
if datamodule1.login.State =  dsinsert then
datamodule1.login.fieldbyname('pw').asstring := edit6.Text;

end;

procedure TForm3.Edit7Change(Sender: TObject);
begin
    if datamodule1.login.State =  dsinsert then
datamodule1.login.fieldbyname('logname').asstring := edit7.Text;

end;

procedure TForm3.Edit8Change(Sender: TObject);
begin
if datamodule1.login.State =  dsinsert then
datamodule1.login.fieldbyname('logmail').asstring := edit8.Text;

end;

procedure TForm3.Edit9Change(Sender: TObject);
begin
if datamodule1.login.State =  dsinsert then
datamodule1.login.fieldbyname('logphone').asstring := edit9.Text;

end;

procedure TForm3.Memo1Change(Sender: TObject);
begin
  if datamodule1.user.State =  dsinsert then

   datamodule1.user.fieldbyname('comment').asstring := memo1.Text;

end;

end.
