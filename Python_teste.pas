unit Python_teste;



interface

uses
  SysUtils, Classes,
  Windows, Messages, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls,
  PythonEngine, Vcl.PythonGUIInputOutput, Vcl.Mask;

type
  TfrmPython = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Splitter2: TSplitter;
    GroupBox1: TGroupBox;
    Button1: TButton;
    PythonGUIInputOutput1: TPythonGUIInputOutput;
    PythonDelphiVar1: TPythonDelphiVar;
    edtsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PythonEngine1: TPythonEngine;
    Memo2: TMemo;
    pcloud_pass: TPythonDelphiVar;
    pcloud_user: TPythonDelphiVar;
    edtemail: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    db_pass1: TPythonDelphiVar;
    db_name1: TPythonDelphiVar;
    db_user1: TPythonDelphiVar;
    procedure Button1Click(Sender: TObject);
    procedure PythonDelphiVar1ExtGetData(Sender: TObject;
      var Data: PPyObject);
    procedure PythonDelphiVar1ExtSetData(Sender: TObject; Data: PPyObject);
    procedure PythonDelphiVar1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcloud_passGetData(Sender: TObject; var Data: Variant);
    procedure pcloud_userGetData(Sender: TObject; var Data: Variant);
    procedure pcloud_passSetData(Sender: TObject; Data: Variant);
    procedure pcloud_userSetData(Sender: TObject; Data: Variant);
    procedure db_pass1GetData(Sender: TObject; var Data: Variant);
    procedure db_pass1SetData(Sender: TObject; Data: Variant);
    procedure db_name1SetData(Sender: TObject; Data: Variant);
    procedure db_name1GetData(Sender: TObject; var Data: Variant);
    procedure db_user1SetData(Sender: TObject; Data: Variant);
    procedure db_user1GetData(Sender: TObject; var Data: Variant);
  private
    FProperties : PPyObject;

    function CreateProperties : PPyObject;
    procedure UpdateProperties( props : PPyObject );
    procedure atualizar_dados;
  public
  end;

var
  frmPython: TfrmPython;
  email:string;
  senha:string;

implementation

{$R *.dfm}



procedure TfrmPython.atualizar_dados;
begin

end;

procedure TfrmPython.Button1Click(Sender: TObject);
begin
      Memo1.Lines.LoadFromFile( AnsiToUtf8( 'backup.py') );

  with GetPythonEngine do
    begin
      // Detach from previous object
     
      // Execute script
      ExecStrings( Memo1.Lines );
    end;
end;

procedure TfrmPython.PythonDelphiVar1ExtGetData(Sender: TObject;
  var Data: PPyObject);
begin
  with GetPythonEngine do
    begin
      // Return our object
      Data := FProperties;
      // Don't forget to increment it, otherwise we would loose property !
      Py_XIncRef(Data);
    end;
end;

procedure TfrmPython.PythonDelphiVar1ExtSetData(Sender: TObject;
  Data: PPyObject);
begin
  with GetPythonEngine do
    begin
      // Check if the transmitted object is a dictionary
      if not PyDict_Check(Data) then
        Exit;
      // Acquire property to the transmitted object
      Py_XIncRef(Data);
      // Release property of our previous object
      Py_XDecRef(FProperties);
      // Assisgn transmitted object
      FProperties := Data;
    end;
end;

function TfrmPython.CreateProperties : PPyObject;
var nome:String;
begin
  nome:='Title';
  with GetPythonEngine do
    begin
      // Create new dictionary
      Result := PyDict_New();
      // Assign key/values

    end;
end;

procedure TfrmPython.db_name1GetData(Sender: TObject; var Data: Variant);
var pass_nome:string;
begin
   pass_nome := 'sistema_pdv' ;
Data:= pass_nome;
end;

procedure TfrmPython.db_name1SetData(Sender: TObject; Data: Variant);
var pass_nome:string;
begin
   pass_nome := 'sistema_pdv' ;
Data:= pass_nome;
end;

procedure TfrmPython.db_pass1GetData(Sender: TObject; var Data: Variant);
var pass_db:string;
begin
   pass_db := 'Zf512@20' ;
Data:= pass_db;
end;

procedure TfrmPython.db_pass1SetData(Sender: TObject; Data: Variant);

var pass_db:string;
begin
   pass_db := 'Zf512@20' ;
Data:= pass_db;
end;

procedure TfrmPython.db_user1GetData(Sender: TObject; var Data: Variant);
var pass_user:string;
begin
   pass_user := 'root' ;
Data:= pass_user;

end;

procedure TfrmPython.db_user1SetData(Sender: TObject; Data: Variant);
var pass_user:string;
begin
   pass_user := 'root' ;
Data:= pass_user;

end;

procedure TfrmPython.FormShow(Sender: TObject);
begin

     //Memo1.Lines.LoadFromFile( 'backup.py' );
     with GetPythonEngine do
    begin
      // Detach from previous object

      // Execute script
      ExecStrings( Memo1.Lines );
      //Memo1.Lines.LoadFromFile( 'teste_internet.py' );
    end;

end;

procedure TfrmPython.pcloud_passGetData(Sender: TObject; var Data: Variant);

begin
 senha := 'senha';
Data:= senha;
end;

procedure TfrmPython.pcloud_passSetData(Sender: TObject; Data: Variant);

begin
     senha := 'senha-set';
Data:= senha;
end;

procedure TfrmPython.pcloud_userGetData(Sender: TObject; var Data: Variant);

begin
 email := 'email' ;
Data:= email;
end;

procedure TfrmPython.pcloud_userSetData(Sender: TObject; Data: Variant);

begin
 email := 'email';
Data:= email;

end;

procedure TfrmPython.UpdateProperties( props : PPyObject );
begin
 
end;

procedure TfrmPython.PythonDelphiVar1Change(Sender: TObject);
begin
  UpdateProperties( FProperties );
end;

end.
