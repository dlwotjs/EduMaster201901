unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.Gestures, FMX.ListView,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, FMX.ListBox, FMX.Edit, FMX.DateTimeCtrls, FMX.Objects,
  FireDAC.Phys.FBDef, FMX.MultiView, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FMX.SearchBox, FMX.Memo;

type
  TForm4 = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    TabControl1: TTabControl;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    활동기록: TTabItem;
    TabItem5: TTabItem;
    ListView1: TListView;
    ActionList1: TActionList;
    GestureManager1: TGestureManager;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    TabControl2: TTabControl;
    TabItem1: TTabItem;
    TabItem4: TTabItem;
    Grid2: TGrid;
    DateColumn1: TDateColumn;
    StringColumn1: TStringColumn;
    CurrencyColumn1: TCurrencyColumn;
    CurrencyColumn2: TCurrencyColumn;
    CheckColumn1: TCheckColumn;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Grid3: TGrid;
    DateEdit2: TDateEdit;
    TabItem6: TTabItem;
    Layout2: TLayout;
    ToolBar2: TToolBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    TabItem7: TTabItem;
    Layout3: TLayout;
    btn_login: TButton;
    btn_findpw: TButton;
    Edit9: TEdit;
    Edit10: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    Label11: TLabel;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    LinkFillControlToField1: TLinkFillControlToField;
    MultiView1: TMultiView;
    TabItem8: TTabItem;
    ListView2: TListView;
    FDTable2: TFDTable;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    ComboBox2: TComboBox;
    Column2: TColumn;
    DateColumn2: TDateColumn;
    CurrencyColumn3: TCurrencyColumn;
    CurrencyColumn4: TCurrencyColumn;
    CheckColumn2: TCheckColumn;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Edit12: TEdit;
    BindSourceDB3: TBindSourceDB;
    ListBox1: TListBox;
    SearchBox1: TSearchBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    TabItem9: TTabItem;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    부족금액: TLabel;
    Edit15: TEdit;
    Button1: TButton;
    Button2: TButton;
    TabControl3: TTabControl;
    TabItem10: TTabItem;
    Grid1: TGrid;
    StringColumn2: TStringColumn;
    DateColumn3: TDateColumn;
    CurrencyColumn5: TCurrencyColumn;
    CurrencyColumn6: TCurrencyColumn;
    DateEdit3: TDateEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    ComboBox3: TComboBox;
    CurrencyColumn9: TCurrencyColumn;
    Label18: TLabel;
    Edit18: TEdit;
    TabItem12: TTabItem;
    Grid4: TGrid;
    Column1: TColumn;
    CurrencyColumn7: TCurrencyColumn;
    TabItem11: TTabItem;
    Grid6: TGrid;
    StringColumn4: TStringColumn;
    DateColumn5: TDateColumn;
    CurrencyColumn12: TCurrencyColumn;
    CurrencyColumn13: TCurrencyColumn;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DateEdit4: TDateEdit;
    Memo1: TMemo;
    Button3: TButton;
    TabItem13: TTabItem;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit6: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Memo2: TMemo;
    Label25: TLabel;
    Image2: TImage;
    Button4: TButton;
    Grid5: TGrid;
    DateColumn4: TDateColumn;
    CurrencyColumn8: TCurrencyColumn;
    CurrencyColumn10: TCurrencyColumn;
    CurrencyColumn11: TCurrencyColumn;
    procedure ListView1ButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses md, user;

procedure TForm4.ListView1ButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
   form1 := tform1.create(application);
   form1.show;
end;

end.
