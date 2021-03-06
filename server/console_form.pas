unit console_form;

{
Copyright (c) 2020+, Health Intersections Pty Ltd (http://www.healthintersections.com.au)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to
   endorse or promote products derived from this software without specific
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
}

{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}

interface

uses
  {$IFDEF WINDOWS}FastMM4, Windows, {$ENDIF}
  Classes, SysUtils, StrUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls, Registry, Types,
  ExtCtrls, Menus, ActnList, StdActns, Buttons, DateTimePicker, Interfaces,
  IniFiles, Math,
  IdTelnet, IdGlobal,
  fsl_base, fsl_threads, fsl_fpc,  fsl_utilities, fsl_logging,
  fdb_manager, fdb_odbc, fdb_dialects,
  ftx_sct_combiner, ftx_sct_services, ftx_sct_importer, ftx_loinc_importer, tx_ndc, tx_rxnorm;

const
   DEF_PASSWORD = 'AA8FF8CC-81C8-41D7-93BA-26AD5E89A1C1';

type
  TConnectionStatus = (csDiconnected, csUsername, csPassword, csConnected, csEnhanced);

  { TConnectingThread }

  TConnectingThread = class (TFslThread)
  protected
    procedure execute; override;
  end;

  { TServerSession }

  TServerSession = class (TFslObject)
  private
    FLog : TStringList;
    FStart : int64;
    FLocal : TDateTime;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  { TServerSessionStatistics }

  TServerSessionStatistics = class (TFslObject)
  private
    FCursor : integer;
    FStarts : array [0..1000] of int64;
    FLengths : array [0..1000] of int64;
    FTotal : integer;
    FLength : int64;
    FCounts : array [0..9] of integer;
    FStart : int64;
  public
    constructor Create;
    procedure recordSession(start, length : int64);
    function report : String;
  end;

  { TMainConsoleForm }

  TMainConsoleForm = class(TForm)
    btnAddEdition: TSpeedButton;
    btnBase: TSpeedButton;
    btnCombinedDestination: TSpeedButton;
    btnCombinedStore: TSpeedButton;
    btnCombineGo: TBitBtn;
    btnDeleteEdition: TSpeedButton;
    btnDestination: TSpeedButton;
    btnFetchObjects: TButton;
    btnFetchObjectsPlus: TButton;
    btnImportLoinc: TBitBtn;
    btnImportSnomed: TBitBtn;
    btnInternational: TSpeedButton;
    btnLoincDest: TSpeedButton;
    btnLoincImportStop: TBitBtn;
    btnLoincSource: TSpeedButton;
    btnProcessUMLS: TBitBtn;
    btnNDC: TBitBtn;
    btnSnomedImportStop: TBitBtn;
    btnSource: TSpeedButton;
    btnStopCombine: TBitBtn;
    btnUMLSStop: TBitBtn;
    btnFetchThreads: TButton;
    btnClearCache: TButton;
    cbUMLSDriver: TComboBox;
    cbUMLSType: TComboBox;
    cbxEdition: TComboBox;
    edtBase: TEdit;
    edtCombinedDestination: TEdit;
    edtCombinedStore: TEdit;
    edtDate: TDateTimePicker;
    edtDestination: TEdit;
    edtInternational: TEdit;
    edtLoincDate: TEdit;
    edtLoincDest: TEdit;
    edtLoincSource: TEdit;
    edtLoincVersion: TEdit;
    edtSource: TEdit;
    edtUMLSDatabase: TEdit;
    edtUMLSPassword: TEdit;
    edtUMLSServer: TEdit;
    edtUMLSUsername: TEdit;
    FileNewAction: TAction;
    ActionList1: TActionList;
    EditCopy1: TEditCopy;
    EditCut1: TEditCut;
    EditDelete1: TEditDelete;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    edtFilter: TEdit;
    FileExit1: TFileExit;
    FileOpenAction: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    HelpContents1: THelpContents;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbEditions: TListBox;
    lblCombineAction: TLabel;
    lblCombineAmount: TLabel;
    lblLoincAction: TLabel;
    lblLoincAmount: TLabel;
    lblSCTAction: TLabel;
    lblSCTAmount: TLabel;
    lblUMLSAction: TLabel;
    lblUMLSAmount: TLabel;
    MainMenu1: TMainMenu;
    mConsole: TMemo;
    MenuItem10: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N1: TMenuItem;
    mThreads: TMemo;
    MenuItem1: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    mStats: TMemo;
    N4: TMenuItem;
    N8: TMenuItem;
    dlgOpen: TOpenDialog;
    PageControl1: TPageControl;
    Panel29: TPanel;
    pgTerminologies: TPageControl;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel2: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pnlCombineSnomed: TPanel;
    pnlLoincImport: TPanel;
    pnlProcessUMLS: TPanel;
    pnlSnomedImport: TPanel;
    prgCombine: TProgressBar;
    prgLoincImport: TProgressBar;
    prgSnomedImport: TProgressBar;
    prgUMLSImport: TProgressBar;
    dlgFolder: TSelectDirectoryDialog;
    dlgSave: TSaveDialog;
    sBar: TStatusBar;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    tbConsole: TTabSheet;
    tbStatistics: TTabSheet;
    tbManage: TTabSheet;
    tbTerminologies: TTabSheet;
    tbThreads: TTabSheet;
    tbSnomed: TTabSheet;
    tbSnomedCombine: TTabSheet;
    tbLoinc: TTabSheet;
    tbUMLS: TTabSheet;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure btnAddEditionClick(Sender: TObject);
    procedure btnBaseClick(Sender: TObject);
    procedure btnClearCacheClick(Sender: TObject);
    procedure btnCombinedDestinationClick(Sender: TObject);
    procedure btnCombinedStoreClick(Sender: TObject);
    procedure btnCombineGoClick(Sender: TObject);
    procedure btnDeleteEditionClick(Sender: TObject);
    procedure btnDestinationClick(Sender: TObject);
    procedure btnFetchObjectsClick(Sender: TObject);
    procedure btnFetchObjectsPlusClick(Sender: TObject);
    procedure btnImportLoincClick(Sender: TObject);
    procedure btnImportSnomedClick(Sender: TObject);
    procedure btnInternationalClick(Sender: TObject);
    procedure btnLoincDestClick(Sender: TObject);
    procedure btnLoincImportStopClick(Sender: TObject);
    procedure btnLoincSourceClick(Sender: TObject);
    procedure btnNDCClick(Sender: TObject);
    procedure btnProcessUMLSClick(Sender: TObject);
    procedure btnSnomedImportStopClick(Sender: TObject);
    procedure btnSourceClick(Sender: TObject);
    procedure btnStopCombineClick(Sender: TObject);
    procedure btnUMLSStopClick(Sender: TObject);
    procedure btnFetchThreadsClick(Sender: TObject);
    procedure cbUMLSDriverChange(Sender: TObject);
    procedure cbxEditionChange(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure lbEditionsClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure pnlSnomedImportClick(Sender: TObject);
    procedure tbConsoleContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tbTerminologiesContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    FLock : TFslLock;
    FTelnet: TIdTelnet;
    FConnected : boolean;
    FIncoming : TStringList;
    FThreads : TStringList;
    FServerStatus : String;
    FLines : TStringList;
    FStatistics : TServerSessionStatistics;
    FLastIncoming : TDateTime;
    FStatus : TConnectionStatus;
    FThread : TConnectingThread;
    FAddress : String;
    FPassword : String;
    FFilter : String;
    FIni : TIniFile;
    FWantStop : boolean;
    FRunning : boolean;
    procedure recordSessionLength(start, length : int64);
    procedure DoIncoming(Sender: TIdTelnet; const Buffer: TIdBytes);
    procedure DoConnected(Sender: TObject);
    procedure DoDisconnected(Sender: TObject);
    procedure processIncomingLine(line: String);
    function passesFilter(line: String) : boolean;
    function handleCommand(line: String) : boolean;
    procedure Connect;
    procedure sctCallback(pct: Integer; action: String);
    procedure cmbCallback(pct: Integer; action: String);
    procedure loincCallback(pct: Integer; action: String);
    procedure umlsCallback(pct: Integer; action: String);
    Procedure SetUpTerminologyPage;
    function getSnomedModule: String;
    procedure connectToServer(server : String);
    procedure GetODBCDriversList(list : TStrings);
  public

  end;

var
  MainConsoleForm: TMainConsoleForm;

implementation

{$R *.lfm}

uses
  console_server_form;

{ TServerSessionStatistics }

constructor TServerSessionStatistics.Create;
begin
  inherited Create;
  FStart := GetTickCount64;
end;

procedure TServerSessionStatistics.recordSession(start, length: int64);
begin
  inc(FCursor);
  if (FCursor = 1000) then
    FCursor := 0;
  FStarts[FCursor] := start;
  FLengths[FCursor] := length;
  inc(FTotal);
  inc(FLength, length);
  if      (length <=   100) then inc(FCounts[0])
  else if (length <=   500) then inc(FCounts[1])
  else if (length <=  1000) then inc(FCounts[2])
  else if (length <=  2000) then inc(FCounts[3])
  else if (length <=  4000) then inc(FCounts[4])
  else if (length <=  8000) then inc(FCounts[5])
  else if (length <= 16000) then inc(FCounts[6])
  else if (length <= 32000) then inc(FCounts[7])
  else if (length <= 48000) then inc(FCounts[8])
  else {if (length <= 100) then} inc(FCounts[9])
end;

function TServerSessionStatistics.report: String;
var
  i, t, c : integer;
  latest, span, length : int64;

begin
  result := 'Total Requests: '+inttostr(FTotal)+#13#10;
  if (FTotal > 0) then
  begin
    result := result + 'Avg Length: '+FloatToStrF(FLength / FTotal, ffFixed, 2, 2)+'ms'+#13#10;
    t := FCursor;
    latest := FStarts[t];
    length := 0;
  end;
  if (FTotal > 1) then
  begin
    c := Math.Min(20, FTotal);
    result := result + 'Last '+inttostr(c)+' Requests: '+#13#10;
    for i := 1 to c do
    begin
      length := length + FLengths[t];
      span := latest - FStarts[t];
      dec(t);
      if t < 0 then
        t := 999;
    end;
    result := result + '  Frequency: '+FloatToStrF((c * 1000) / span , ffFixed, 2, 2)+'hz'+#13#10;
    result := result + '  Avg Length: '+FloatToStrF(length / c, ffFixed, 2, 2)+'ms'+#13#10;
  end;
  result := result + 'Frequency (total): '+FloatToStrF((FTotal * 1000)/ (GetTickCount64 - FStart), ffFixed, 2, 2)+'hz'+#13#10;
  result := result + #13#10+'Histogram (seconds): '+#13#10;
  result := result + '  0 - 0.1: '+inttostr(FCounts[0])+#13#10;
  result := result + '0.1 - 0.5: '+inttostr(FCounts[1])+#13#10;
  result := result + '0.5 - 1.0: '+inttostr(FCounts[2])+#13#10;
  result := result + '  1 -  2: '+inttostr(FCounts[3])+#13#10;
  result := result + '  2 -  4: '+inttostr(FCounts[4])+#13#10;
  result := result + '  4 -  8: '+inttostr(FCounts[5])+#13#10;
  result := result + '  8 - 16: '+inttostr(FCounts[6])+#13#10;
  result := result + ' 16 - 32: '+inttostr(FCounts[7])+#13#10;
  result := result + ' 32 - 48: '+inttostr(FCounts[8])+#13#10;
  result := result + ' >48    : '+inttostr(FCounts[9])+#13#10;
end;

{ TServerSession }

constructor TServerSession.Create;
begin
  inherited Create;
  FLog := TStringList.create;
  FLocal := Now;
end;

destructor TServerSession.Destroy;
begin
  FLog.Free;
  inherited Destroy;
end;

{ TConnectingThread }

procedure TConnectingThread.execute;
begin
  while Active do
  begin
    try
      MainConsoleForm.Connect;
    except
    end;
    sleep(50);
  end;
  MainConsoleForm.FThread := nil;
  free;
end;


{ TMainConsoleForm }

procedure TMainConsoleForm.FormCreate(Sender: TObject);
var
  s : String;
begin
  s := getAppConfigDir(false);
  FIni := TIniFile.create(path([s, 'FHIRConsole.ini']));
  FAddress := FIni.ReadString('console', 'address', 'Localhost');
  FPassword := FIni.ReadString('console', 'password', DEF_PASSWORD); // this password only works from localhost

  FTelnet := TIdTelnet.create(nil);
  FTelnet.Port := 44123;
  FTelnet.ThreadedEvent := true;
  FTelnet.OnConnected := DoConnected;
  FTelnet.onDisconnected := DoDisconnected;
  FTelnet.OnDataAvailable := DoIncoming;

  setupTerminologyPage;
  FStatus := csDiconnected;
  FIncoming := TStringList.create;
  FThreads := TStringList.create;;
  FLines := TStringList.create;
  FStatistics := TServerSessionStatistics.create;
  FLock := TFslLock.create('incoming');
  FThread := TConnectingThread.create;
  FThread.Open;
end;

procedure TMainConsoleForm.FormDestroy(Sender: TObject);
begin
  FThread.Stop;
  while assigned(FThread) do
    ;
  FTelnet.Free;
  FIncoming.Free;
  FThreads.Free;
  FLines.Free;
  FStatistics.Free;
  FLock.Free;
  FIni.Free;
end;

procedure TMainConsoleForm.FormShow(Sender: TObject);
begin
  GetODBCDriversList(cbUMLSDriver.items);
end;

procedure TMainConsoleForm.Image2Click(Sender: TObject);
begin
  if FRunning then
    exit;
  pnlLoincImport.Color := rgb(217, 240, 247);
  pnlSnomedImport.color := clWhite;
  pnlCombineSnomed.color := clWhite;
  pnlProcessUMLS.color := clWhite;
  pgTerminologies.ActivePageIndex := 2;
end;

procedure TMainConsoleForm.Image3Click(Sender: TObject);
begin
  if FRunning then
    exit;
  pnlCombineSnomed.Color := rgb(217, 240, 247);
  pnlLoincImport.color := clWhite;
  pnlSnomedImport.color := clWhite;
  pnlProcessUMLS.color := clWhite;
  pgTerminologies.ActivePageIndex := 1;
end;

procedure TMainConsoleForm.Image4Click(Sender: TObject);
begin
  if FRunning then
    exit;
  pnlSnomedImport.Color := rgb(217, 240, 247);
  pnlLoincImport.color := clWhite;
  pnlCombineSnomed.color := clWhite;
  pnlProcessUMLS.color := clWhite;
  pgTerminologies.ActivePageIndex := 0;
end;

procedure TMainConsoleForm.Image5Click(Sender: TObject);
begin
  if FRunning then
    exit;
  pnlProcessUMLS.Color := rgb(217, 240, 247);
  pnlLoincImport.color := clWhite;
  pnlCombineSnomed.color := clWhite;
  pnlSnomedImport.color := clWhite;
  pgTerminologies.ActivePageIndex := 3;
end;

procedure TMainConsoleForm.lbEditionsClick(Sender: TObject);
begin
  btnDeleteEdition.Enabled := lbEditions.ItemIndex <> -1;
end;

procedure TMainConsoleForm.MenuItem4Click(Sender: TObject);
begin
  ServerConnectionForm.edtServer.Text := FAddress;
  ServerConnectionForm.edtServer.ReadOnly:= false;
  ServerConnectionForm.edtPassword.Text := FPassword;
  if ServerConnectionForm.ShowModal = mrOk then
  begin
    FAddress := ServerConnectionForm.edtServer.Text;
    FPassword := ServerConnectionForm.edtPassword.Text;
    FIni.WriteString('console', 'address', FAddress);
    if FPassword = '' then
      FPassword := DEF_PASSWORD;
    FIni.WriteString('console', 'password', FPassword);
    FIni.WriteString('servers', FAddress, FPassword);
    FLines.clear;
    mConsole.Lines.Clear;
    if FConnected then
      FTelnet.Disconnect;
    FStatus := csDiconnected;
  end;
end;

procedure TMainConsoleForm.connectToServer(server : String);
var
  pwd : String;
begin
  if (server = 'localhost') then
    pwd := DEF_PASSWORD
  else
    pwd := FIni.ReadString('servers', FAddress, '');
  if (pwd = '') then
  begin
    ServerConnectionForm.edtServer.Text := server;
    ServerConnectionForm.edtServer.ReadOnly:= true;
    ServerConnectionForm.edtPassword.Text := pwd;
    if ServerConnectionForm.ShowModal = mrOk then
      pwd := ServerConnectionForm.edtPassword.Text
  end;
  if pwd <> '' then
  begin
    FAddress := server;
    FPassword := ServerConnectionForm.edtPassword.Text;
    FIni.WriteString('console', 'address', FAddress);
    FIni.WriteString('console', 'password', FPassword);
    FIni.WriteString('servers', FAddress, FPassword);
    FLines.clear;
    mConsole.Lines.Clear;
    if FConnected then
      FTelnet.Disconnect;
    FStatus := csDiconnected;
  end;
end;

procedure TMainConsoleForm.GetODBCDriversList(list : TStrings);
var
  aStringlist   : TStringlist;
  aRegistry   : TRegistry;
Begin
  aStringlist:= Tstringlist.Create;
  try
    aRegistry:= TRegistry.Create;
    try
      aRegistry.rootkey:= HKEY_LOCAL_MACHINE;
      aRegistry.OpenKeyReadOnly('SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers');
      aRegistry.GetValueNames(aStringlist);

      list.assign(aStringlist);
    finally
      aRegistry.Free;
    end;
  finally
    aStringlist.Sort;
  end;
end;

procedure TMainConsoleForm.MenuItem7Click(Sender: TObject);
begin
  connectToServer((Sender as TMenuItem).Caption);
end;

procedure TMainConsoleForm.MenuItem8Click(Sender: TObject);
begin

end;

procedure TMainConsoleForm.pnlSnomedImportClick(Sender: TObject);
begin

end;

procedure TMainConsoleForm.tbConsoleContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TMainConsoleForm.tbTerminologiesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TMainConsoleForm.edtFilterChange(Sender: TObject);
var
  s : String;
begin
  FFilter := edtFilter.Text;
  FFilter := FFilter.ToLower;
  mConsole.lines.BeginUpdate;
  try
    mConsole.Lines.clear;
    for s in FLines do
      if passesFilter(s) then
        mConsole.Lines.add(s);
  finally
    mConsole.Lines.EndUpdate;
  end;
  mConsole.SelStart := mConsole.Lines.Text.Length-1;
end;

procedure TMainConsoleForm.btnSourceClick(Sender: TObject);
begin
   if (edtSource.text <> '') then
    dlgFolder.filename := edtSource.text;
  dlgFolder.Title := 'Choose SNOMED CT RF2 Snapshot Folder';
  if dlgFolder.Execute then
    edtSource.text := dlgFolder.filename;
end;

procedure TMainConsoleForm.btnStopCombineClick(Sender: TObject);
begin
  FWantStop := true;
end;

procedure TMainConsoleForm.btnUMLSStopClick(Sender: TObject);
begin
  FWantStop := true;
end;

procedure TMainConsoleForm.btnFetchThreadsClick(Sender: TObject);
begin
  try
    if FConnected then
      FTelnet.SendString('@threads'+#10);
  except
  end;
end;

procedure TMainConsoleForm.cbUMLSDriverChange(Sender: TObject);
begin
  cbUMLSType.itemindex := -1;
  if (pos('MySQL',cbUMLSDriver.text) <> 0) then
    cbUMLSType.itemIndex := 1;
  if (pos('SQL Server',cbUMLSDriver.text) <> 0) then
    cbUMLSType.itemIndex := 0;
end;

procedure TMainConsoleForm.btnBaseClick(Sender: TObject);
begin
  if (edtSource.text <> '') then
  begin
    dlgFolder.filename := edtBase.text;
  end;
  dlgFolder.Title := 'Choose SNOMED CT RF2 International Snapshot Folder';
  if dlgFolder.Execute then
    edtBase.text := dlgFolder.filename;
end;

procedure TMainConsoleForm.btnClearCacheClick(Sender: TObject);
begin
  try
    if FConnected then
      FTelnet.SendString('@cache'+#10);
  except
  end;
end;

procedure TMainConsoleForm.btnCombinedDestinationClick(Sender: TObject);
begin
  if (edtCombinedDestination.text <> '') then
  begin
    dlgFolder.filename := edtCombinedDestination.text;
  end;
  dlgFolder.Title := 'Choose Combined Files Destination';
  if dlgFolder.Execute then
    edtCombinedDestination.text := dlgFolder.filename;
end;

procedure TMainConsoleForm.btnCombinedStoreClick(Sender: TObject);
begin
  if (edtCombinedStore.text <> '') then
  begin
    dlgSave.filename := edtCombinedStore.text;
  end;
  dlgSave.Title := 'Choose Combined Files Persistent Store';
  if dlgSave.Execute then
    edtCombinedStore.text := dlgSave.filename;
end;

procedure TMainConsoleForm.btnCombineGoClick(Sender: TObject);
var
  i : integer;
  start : TDateTime;
  combiner : TSnomedCombiner;
  svc : TSnomedServices;
begin
  raise Exception.create('not done yet');
  if not FileExists(edtInternational.Text) then
    ShowMessage('International File "'+edtInternational.Text+'" not found')
  else if lbEditions.Items.Count = 0 then
    ShowMessage('Please provide some other editions')
  else
    for i := 0 to lbEditions.Items.Count - 1 do
      if not FileExists(lbEditions.Items[i]) then
      begin
        ShowMessage('Edition File "'+lbEditions.Items[i]+'" not found');
        exit;
      end;

//  else if not FileExists(edtDestination.Text) or (MessageDlg('Overwrite "'+edtDestination.Text+'"?', mtConfirmation, mbYesNo, 0) = mrYes) then
    FIni.WriteString('snomed-combine', 'base', edtInternational.text);
    FIni.WriteString('snomed-combine', 'editions', lbEditions.Items.CommaText);
    FIni.WriteString('snomed-combine', 'dest', edtCombinedDestination.text);
    FIni.WriteString('snomed-combine', 'store', edtCombinedStore.text);

    FWantStop := false;
    btnStopCombine.Visible := true;
    cursor := crHourGlass;
    FRunning := true;
    edtInternational.enabled := false;
    lbEditions.enabled := false;
    btnCombineGo.enabled := false;
    btnInternational.enabled := false;
    btnAddEdition.enabled := false;
    btnDeleteEdition.enabled := false;
    btnCombinedDestination.enabled := false;
    edtCombinedDestination.enabled := false;
    btnCombinedStore.enabled := false;
    edtCombinedStore.enabled := false;
    try
      start := now;
      cmbCallback(0, 'Loading Editions');
      combiner := TSnomedCombiner.Create;
      try
        combiner.international := TSnomedServices.Create;
        combiner.international.Load(edtInternational.Text, true);
        for i := 0 to lbEditions.Items.Count - 1 do
        begin
          svc := TSnomedServices.create;
          combiner.others.Add(svc);
          svc.load(lbEditions.Items[i], true);
        end;
        combiner.callback := cmbCallBack;
        combiner.destination := edtCombinedDestination.text;
        combiner.store := edtCombinedStore.text;
        combiner.Execute;
        combiner.issues.SaveToFile('c:\temp\snomed-combination-notes.txt');
        MessageDlg('Successfully Combined SNOMED CT editions in '+DescribePeriod(now - start)+':'+#13#10+combiner.summary.Text, mtInformation, [mbok], 0);
      finally
        combiner.free;
      end;
    finally
      btnStopCombine.Visible := false;
      cursor := crDefault;
      FRunning := false;
      edtInternational.enabled := true;
      lbEditions.enabled := true;
      btnCombineGo.enabled := true;
      btnInternational.enabled := true;
      btnAddEdition.enabled := true;
      btnDeleteEdition.enabled := true;
      btnCombinedDestination.enabled := true;
      edtCombinedDestination.enabled := true;
      btnCombinedStore.enabled := true;
      edtCombinedStore.enabled := true;
      cmbCallback(0, '');
    end;
end;

procedure TMainConsoleForm.btnDeleteEditionClick(Sender: TObject);
begin
  if (lbEditions.ItemIndex > -1) then
    lbEditions.Items.Delete(lbEditions.ItemIndex);
end;

procedure TMainConsoleForm.btnAddEditionClick(Sender: TObject);
begin
  dlgOpen.Title := 'Choose National SNOMED Edition cache file';
  if dlgOpen.Execute then
  begin
    lbEditions.Items.Add(dlgOpen.filename);
    lbEditions.ItemIndex := lbEditions.Items.Count - 1;
    lbEditionsClick(nil);
  end;
end;

procedure TMainConsoleForm.btnDestinationClick(Sender: TObject);
begin
  if (edtDestination.text <> '') then
  begin
    dlgSave.filename := edtDestination.text;
  end;
  if dlgSave.Execute then
    edtDestination.text := dlgSave.filename;
end;

procedure TMainConsoleForm.btnFetchObjectsClick(Sender: TObject);
begin
  try
    if FConnected then
      FTelnet.SendString('@classes'+#10);
  except
  end;
end;

procedure TMainConsoleForm.btnFetchObjectsPlusClick(Sender: TObject);
begin
   try
    if FConnected then
      FTelnet.SendString('@classes+'+#10);
  except
  end;
end;

procedure TMainConsoleForm.btnImportLoincClick(Sender: TObject);
var
  start : TDateTime;
begin
  FIni.WriteString('loinc-import', 'source', edtLoincSource.text);
  FIni.WriteString('loinc-import', 'date', edtLoincVersion.Text);
  FIni.WriteString('loinc-import', 'tdate', edtLoincDate.Text);
  FIni.WriteString('loinc-import', 'dest', edtLoincDest.text);
  if not FolderExists(edtloincSource.Text) then
    ShowMessage('Folder "'+edtSource.Text+'" not found')
  else if edtLoincDest.Text = '' then
    ShowMessage('Please Choose a Destination')
  else if (Length(edtLoincVersion.Text) <> 4) then
    ShowMessage('Please provide a version in the form X.YY')
  else if (edtLoincDate.Text = '') then
    ShowMessage('Please provide a date')
  else if not FileExists(edtLoincDest.Text) or (MessageDlg('Overwrite "'+edtLoincDest.Text+'"?', mtConfirmation, mbYesNo, 0) = mrYes) then
  begin
    start := now;

    FWantStop := false;
    btnLoincImportStop.Visible := true;
    cursor := crHourGlass;
    FRunning := true;
    edtLoincSource.enabled := false;
    edtLoincVersion.enabled := false;
    edtLoincDate.enabled := false;
    edtLoincDest.enabled := false;
    btnImportLoinc.enabled := false;
    btnLoincSource.enabled := false;
    btnLoincDest.enabled := false;
    try
      importLoinc(edtloincSource.Text, edtLoincVersion.Text, edtLoincDate.Text, edtLoincDest.text, loincCallBack);
    finally
      cursor := crDefault;
      btnUMLSStop.Visible := false;
      FRunning := false;
      edtLoincSource.enabled := true;
      edtLoincVersion.enabled := true;
      edtLoincDate.enabled := true;
      edtLoincDest.enabled := true;
      btnImportLoinc.enabled := true;
      btnLoincSource.enabled := true;
      btnLoincDest.enabled := true;
      loincCallback(0, '');
    end;
    MessageDlg('Successfully Imported LOINC in '+DescribePeriod(now - start), mtInformation, [mbok], 0);
  end;
end;

procedure TMainConsoleForm.btnImportSnomedClick(Sender: TObject);
var
  module, version : String;
  start : TDateTime;
  nb : boolean;
begin
  if not FolderExists(edtSource.Text) then
    ShowMessage('Folder "'+edtSource.Text+'" not found')
  else if edtDestination.Text = '' then
    ShowMessage('Please Choose a Destination')
  else if cbxEdition.ItemIndex = -1 then
    ShowMessage('Please Choose an Edition')
  else if not FileExists(edtDestination.Text) or (MessageDlg('Overwrite "'+edtDestination.Text+'"?', mtConfirmation, mbYesNo, 0) = mrYes) then
  begin
    FIni.WriteString('snomed-import', 'source', edtSource.text);
    FIni.WriteString('snomed-import', 'base', edtBase.text);
    FIni.WriteInteger('snomed-import', 'edition', cbxEdition.ItemIndex);
    FIni.WriteInteger('snomed-import', 'date', trunc(edtDate.Date));
    FIni.WriteString('snomed-import', 'dest', edtDestination.text);
    module := getSnomedModule;
    nb := needsBaseForImport(module);
    if nb and not FolderExists(edtBase.Text) then
      ShowMessage('Base Folder "'+edtSource.Text+'" not found')
    else
    begin
      version := FormatDateTime('yyyymmdd', edtDate.Date);
      FWantStop := false;
      btnSnomedImportStop.Visible := true;
      cursor := crHourGlass;
      FRunning := true;
      edtSource.enabled := false;
      cbxEdition.enabled := false;
      edtDate.enabled := false;
      edtDestination.enabled := false;
      btnImportSnomed.enabled := false;
      btnSource.enabled := false;
      btnDestination.enabled := false;
      try
        start := now;
        if nb then
          importSnomedRF2(edtSource.text, edtBase.text, edtDestination.text, 'http://snomed.info/sct/'+module+'/version/'+version, sctCallback)
        else
          importSnomedRF2(edtSource.text, '', edtDestination.text, 'http://snomed.info/sct/'+module+'/version/'+version, sctCallback);
      finally
        cursor := crDefault;
        btnSnomedImportStop.Visible := false;
        FRunning := false;
        edtSource.enabled := true;
        cbxEdition.enabled := true;
        edtDate.enabled := true;
        edtDestination.enabled := true;
        btnImportSnomed.enabled := true;
        btnSource.enabled := true;
        btnDestination.enabled := true;
        sctCallback(0, '');
      end;
    end;
  end;
end;

procedure TMainConsoleForm.btnInternationalClick(Sender: TObject);
begin
  if (edtInternational.text <> '') then
     dlgOpen.filename := edtInternational.text;
   dlgOpen.Title := 'Choose International SNOMED cache file';
   if dlgOpen.Execute then
     edtInternational.text := dlgOpen.filename;
end;

procedure TMainConsoleForm.btnLoincDestClick(Sender: TObject);
begin
   if (edtLoincDest.text <> '') then
     dlgSave.filename := edtLoincDest.text;
   if dlgSave.Execute then
     edtLoincDest.text := dlgSave.filename;
end;

procedure TMainConsoleForm.btnLoincImportStopClick(Sender: TObject);
begin
  FWantStop := true;
end;

procedure TMainConsoleForm.btnLoincSourceClick(Sender: TObject);
begin
   if (edtLoincSource.text <> '') then
      dlgFolder.filename := edtLoincSource.text;
    dlgFolder.Title := 'Choose LOINC Content Folder';
    if dlgFolder.Execute then
      edtLoincSource.text := dlgFolder.filename;
end;


function dbtype(i : integer) : TFslDBPlatform;
begin
  if (i = 1) then
    result := kdbMySQL
  else
    result := kdbSqlServer;
end;


procedure TMainConsoleForm.btnNDCClick(Sender: TObject);
var
  start : TDateTime;
  ndc : TNdcImporter;
begin
  if dlgFolder.execute then
  begin
    start := now;
    if cbUMLSDriver.Text = '' then
      ShowMessage('No Database Driver specified') else
    if not AnsiMatchText(cbUMLSType.Text, ['mssql', 'mysql']) then
      ShowMessage('No valid Server Type specified') else
    if edtUMLSServer.Text = '' then
      ShowMessage('No Server specified')
    else if edtUMLSDatabase.Text = '' then
      ShowMessage('No Database specified')
    else if (edtUMLSUsername.Text = '') xor (edtUMLSPassword.Text = '') then
      ShowMessage('Plase specify both a username and password, or neither')
    else
    begin
      FIni.WriteString('umls-process', 'driver', cbUMLSDriver.text);
      FIni.WriteString('umls-process', 'type', cbUMLSType.text);
      FIni.WriteString('umls-process', 'server', edtUMLSServer.text);
      FIni.WriteString('umls-process', 'database', edtUMLSDatabase.text);
      FIni.WriteString('umls-process', 'username', edtUMLSUsername.text);
      FIni.WriteString('umls-process', 'password', strEncrypt(edtUMLSPassword.text, GetCryptKey('umls encryption key')));

      ndc := TNDCImporter.create(dlgFolder.FileName);
      try
        ndc.Database := TFslDBOdbcManager.create('ndc', dbtype(cbUMLSType.itemIndex), 4, 0, cbUMLSDriver.Text, edtUMLSServer.text, edtUMLSDatabase.Text, edtUMLSUsername.Text, edtUMLSPassword.Text);
        FWantStop := false;
        btnUMLSStop.Visible := true;
        cursor := crHourGlass;
        FRunning := true;
        edtUMLSServer.enabled := false;
        edtUMLSDatabase.enabled := false;
        edtUMLSUsername.enabled := false;
        edtUMLSPassword.enabled := false;
        btnProcessUMLS.enabled := false;
        btnNDC.Enabled := false;
        try
          ndc.process(umlsCallback);
        finally
          cursor := crDefault;
          btnNDC.Enabled := true;
          btnUMLSStop.Visible := false;
          FRunning := false;
          edtUMLSServer.enabled := true;
          edtUMLSDatabase.enabled := true;
          edtUMLSUsername.enabled := true;
          edtUMLSPassword.enabled := true;
          btnProcessUMLS.enabled := true;
          umlsCallback(0, '');
        end;
      finally
        ndc.Free;
      end;
      MessageDlg('Successfully Upload NDC in '+DescribePeriod(now - start), mtInformation, [mbok], 0);
    end;
  end;
end;

procedure TMainConsoleForm.btnProcessUMLSClick(Sender: TObject);
var
  db : TFslDBManager;
  start : TDateTime;
begin
  start := now;
  if cbUMLSDriver.Text = '' then
    ShowMessage('No Database Driver specified') else
  if not MatchText(cbUMLSType.Text, ['mssql', 'mysql']) then
    ShowMessage('No valid Server Type specified') else
  if edtUMLSServer.Text = '' then
    ShowMessage('No Server specified')
  else if edtUMLSDatabase.Text = '' then
    ShowMessage('No Database specified')
  else if (edtUMLSUsername.Text = '') xor (edtUMLSPassword.Text = '') then
    ShowMessage('Plase specify both a username and password, or neither')
  else
  begin
    FIni.WriteString('umls-process', 'server', edtUMLSServer.text);
    FIni.WriteString('umls-process', 'database', edtUMLSDatabase.text);
    FIni.WriteString('umls-process', 'username', edtUMLSUsername.text);
    FIni.WriteString('umls-process', 'password', strEncrypt(edtUMLSPassword.text, GetCryptKey('umls encryption key')));

    FWantStop := false;
    btnUMLSStop.Visible := true;
    cursor := crHourGlass;
    FRunning := true;
    edtUMLSServer.enabled := false;
    edtUMLSDatabase.enabled := false;
    edtUMLSUsername.enabled := false;
    edtUMLSPassword.enabled := false;
    btnProcessUMLS.enabled := false;
    try

      db := TFslDBOdbcManager.create('umls', dbtype(cbUMLSType.itemIndex), 4, 0, cbUMLSDriver.Text, edtUMLSServer.text, edtUMLSDatabase.Text, edtUMLSUsername.Text, edtUMLSPassword.Text);
      generateRxStems(db, umlsCallback);
    finally
      cursor := crDefault;
      btnUMLSStop.Visible := false;
      FRunning := false;
      edtUMLSServer.enabled := true;
      edtUMLSDatabase.enabled := true;
      edtUMLSUsername.enabled := true;
      edtUMLSPassword.enabled := true;
      btnProcessUMLS.enabled := true;
      umlsCallback(0, '');
    end;
    MessageDlg('Successfully Process UMLS Entries in '+DescribePeriod(now - start), mtInformation, [mbok], 0);
  end;
end;

procedure TMainConsoleForm.btnSnomedImportStopClick(Sender: TObject);
begin
  FWantStop := true;
end;

procedure TMainConsoleForm.cbxEditionChange(Sender: TObject);
var
  module : string;
  b : boolean;
begin
  module := getSnomedModule;
  b := needsBaseForImport(module);
  edtBase.Enabled := b;
  btnBase.Enabled := b;
end;

procedure TMainConsoleForm.Timer1Timer(Sender: TObject);
var
  ts, tsl, tsd, tsth : TStringList;
  s, ss, rs : String;
  st : TConnectionStatus;
  id : String;
  session : TServerSession;
  i : integer;
  d : TDateTime;
begin
  ts := TStringList.create;
  tsl := TStringList.create;
  tsd := TStringList.create;
  tsth := TStringList.create;
  try
    d := 0;
    Flock.Lock;
    try
      st := FStatus;
      ss := FServerStatus;
      ts.assign(FIncoming);
      FIncoming.clear;
      tsth.assign(FThreads);
      FThreads.clear;
      rs := FStatistics.report;
    finally
      FLock.Unlock;
    end;
    case st of
      csDiconnected :
        begin
          mConsole.Color := $00EFEFEF;
          Caption := 'FHIR Console - Connecting to '+FAddress;
          sBar.Panels[0].Text := 'Connecting';
        end;
      csUsername :
        begin
          mConsole.Color := $00EFFFEF;
          Caption := 'FHIR Console - Authenticating to '+FAddress;
          sBar.Panels[0].Text := 'Authenticating (U)';
        end;
      csPassword :
        begin
          mConsole.Color := $00EFFFFF;
          Caption := 'FHIR Console - Authenticating to '+FAddress;
          sBar.Panels[0].Text := 'Authenticating (P)';
        end;
      csConnected, csEnhanced:
        begin
          mConsole.Color := $00FFFFFF;
          Caption := 'FHIR Console - Connected to '+FAddress;
          sBar.Panels[0].Text := 'Connected';
          if not FTelnet.connected then
          begin
            Flock.Lock;
            try
              FStatus := csDiconnected;
            finally
              FLock.Unlock;
            end;
          end;
        end;
    end;

    if tsth.Count > 0 then
      mThreads.lines.Assign(tsth);

    for s in ts do
    begin
      FLines.add(s);
      if passesFilter(s) then
        mConsole.lines.add(s);
    end;
    while (mConsole.lines.count > 1000) and (edtFilter.Text = '') do
    begin
      FLines.delete(0);
      mConsole.lines.delete(0);
    end;
    mConsole.SelStart := mConsole.Lines.Text.Length-1;
    mStats.Text := rs;
  finally
    ts.free;
    tsth.free;
    tsl.free;
    tsd.free;
  end;
  if st = csDiconnected then
  begin
    sBar.Panels[1].Text := 'n/a';
    if (ss = '') then
      sBar.Panels[4].Text := ''
    else
      sBar.Panels[4].Text := 'Last Server: '+ss;
  end
  else
  begin
    sBar.Panels[1].Text := DescribePeriodNoMsec(now - FLastIncoming);
    sBar.Panels[4].Text := 'Server: '+ss;
  end;
  sBar.Panels[2].Text := inttostr(mConsole.lines.count) + ' '+StringPlural('Line', mConsole.lines.count);
  sBar.Panels[3].Text := Logging.MemoryStatus;
end;

procedure TMainConsoleForm.ToolButton1Click(Sender: TObject);
begin
  mConsole.lines.clear;
end;

procedure TMainConsoleForm.ToolButton3Click(Sender: TObject);
begin
  ServerConnectionForm.edtServer.Text := FAddress;
  ServerConnectionForm.edtPassword.Text := FPassword;
  if ServerConnectionForm.ShowModal = mrOk then
  begin
    FAddress := ServerConnectionForm.edtServer.Text;
    FPassword := ServerConnectionForm.edtPassword.Text;
    FIni.WriteString('console', 'address', FAddress);
    if FPassword = '' then
      FPassword := DEF_PASSWORD;
    FIni.WriteString('console', 'password', FPassword);
    FLines.clear;
    mConsole.Lines.Clear;
    FTelnet.Disconnect;
    FStatus := csDiconnected;
  end;
end;

procedure TMainConsoleForm.recordSessionLength(start, length: int64);
begin
  FStatistics.recordSession(start, length);
end;

function ignoreLine(s : String) : boolean;
var
  ch : char;
begin
  s := trim(s);
  if (s = '') or (s = '.') or (s = 'console') then
    result := true
  else
  begin
    result := true;
    for ch in s do
      if ch <> '*' then
         exit(false);
  end;
end;

procedure TMainConsoleForm.processIncomingLine(line : String);
var
  reply : String;
begin
  reply := '';
  FLock.Lock;
  try
    case FStatus of
      csDiconnected :
        FIncoming.add('!!'+line); // this is a timing issue if it does happen but it should not
      csUsername:
        if (line = 'Username: ') then
        begin
          reply := 'console';
          FStatus := csPassword;
        end
        else
          ; // ignore line
      csPassword:
        if (line = 'Password: ') then
        begin
          reply := FPassword;
          FStatus := csConnected;
          FIncoming.add('----------------------------------------------------------');
        end
        else
          ; // ignore line
      csConnected:
        begin
          if not handleCommand(line) then
            if not ignoreLine(line) then
              FIncoming.add(line);
          reply := '@console';
          FStatus := csEnhanced;
        end;
      csEnhanced:
        if not handleCommand(line) then
          if not ignoreLine(line) then
            FIncoming.add(line);
    end;
  finally
    FLock.Unlock;
  end;
  if (reply <> '') then
    FTelnet.SendString(reply+#10);
end;

function TMainConsoleForm.passesFilter(line: String): boolean;
begin
  result := (FFilter = '') or line.ToLower.Contains(FFilter);
end;

function TMainConsoleForm.handleCommand(line: String): boolean;
begin
  result := false;
  if (line.startsWith('$@')) then
  begin
    if line.startsWith('$@ping: ') then
    begin
      FLock.Lock;
      try
        FServerStatus := line.Substring(8);
      finally
        FLock.unLock;
      end;
      exit(true);
    end;
    if line.startsWith('$@threads') then
    begin
      FLock.Lock;
      try
        FThreads.Text := line.subString(10).replace('|', #13#10).trim();
      finally
        FLock.unLock;
      end;
      exit(true);
    end;
  end;
  if line.startsWith('$@classes') then
  begin
    FLock.Lock;
    try
      FThreads.Text := line.subString(10).replace('|', #13#10).trim();
      FThreads.Sort;
    finally
      FLock.unLock;
    end;
    exit(true);
  end;
end;

procedure TMainConsoleForm.Connect;
begin
  if FStatus = csDiconnected then
  begin
    FTelnet.Host := FAddress;
    FTelnet.Connect;
  end;
end;

procedure TMainConsoleForm.sctCallback(pct: Integer; action: String);
begin
  prgSnomedImport.Position := pct;
  lblSCTAction.Caption := action;
  lblSCTAmount.Caption := inttostr(pct)+'%';
  prgSnomedImport.Update;
  lblSCTAction.Update;
  lblSCTAmount.Update;
  Application.ProcessMessages;
  if (FWantStop) then
    abort;
end;

procedure TMainConsoleForm.cmbCallback(pct: Integer; action: String);
begin
  prgCombine.Position := pct;
  lblCombineAction.Caption := action;
  lblCombineAmount.Caption := inttostr(pct)+'%';
  prgCombine.Update;
  lblCombineAction.Update;
  lblCombineAmount.Update;
  Application.ProcessMessages;
  if (FWantStop) then
    abort;
end;

procedure TMainConsoleForm.loincCallback(pct: Integer; action: String);
begin
  prgLoincImport.Position := pct;
  lblLoincAction.Caption := action;
  lblLoincAmount.Caption := inttostr(pct)+'%';
  prgLoincImport.Update;
  lblLoincAction.Update;
  lblLoincAmount.Update;
  Application.ProcessMessages;
  if (FWantStop) then
    abort;
end;

procedure TMainConsoleForm.umlsCallback(pct: Integer; action: String);
begin
  prgUMLSImport.Position := pct;
  lblUMLSAction.Caption := action;
  lblUMLSAmount.Caption := inttostr(pct)+'%';
  prgUMLSImport.Update;
  lblUMLSAction.Update;
  lblUMLSAmount.Update;
  Application.ProcessMessages;
  if (FWantStop) then
    abort;
end;

procedure TMainConsoleForm.setupTerminologyPage;
begin
  edtSource.text := FIni.ReadString('snomed-import', 'source', '');
  edtBase.text := FIni.ReadString('snomed-import', 'base', '');
  cbxEdition.ItemIndex := FIni.ReadInteger('snomed-import', 'edition', -1);
  edtDate.Date := FIni.ReadInteger('snomed-import', 'date', trunc(now));
  edtDestination.text := FIni.ReadString('snomed-import', 'dest', '');

  edtLoincSource.text := FIni.ReadString('loinc-import', 'source', '');
  edtLoincVersion.Text := FIni.ReadString('loinc-import', 'date', ''); // should not be date for is for legacy reasons
  edtLoincDest.text := FIni.ReadString('loinc-import', 'dest', '');
  edtLoincDate.Text := FIni.ReadString('loinc-import', 'tdate', '');

  cbUMLSDriver.text := FIni.ReadString('umls-process', 'driver', '');
  cbUMLSType.text := FIni.ReadString('umls-process', 'type', '');
  edtUMLSServer.text := FIni.ReadString('umls-process', 'server', '');
  edtUMLSDatabase.text := FIni.ReadString('umls-process', 'database', '');
  edtUMLSUsername.text := FIni.ReadString('umls-process', 'username', '');
  edtUMLSPassword.text := strDecrypt(FIni.ReadString('umls-process', 'password', ''), GetCryptKey('umls encryption key'));

  edtInternational.text := FIni.ReadString('snomed-combine', 'base', '');
  lbEditions.Items.CommaText := FIni.ReadString('snomed-combine', 'editions', '');
  edtCombinedDestination.text := FIni.ReadString('snomed-combine', 'dest', '');
  edtCombinedStore.text := FIni.ReadString('snomed-combine', 'store', '');

  if lbEditions.Items.Count > 0 then
    lbEditions.Itemindex := 0;

  pnlSnomedImport.Color := rgb(217, 240, 247);
  pnlLoincImport.color := clWhite;
  pnlCombineSnomed.color := clWhite;
  pnlProcessUMLS.color := clWhite;

  PageControl1.ActivePageIndex := 0;
  lbEditionsClick(self);
end;

function TMainConsoleForm.getSnomedModule: String;
begin
  case cbxEdition.itemindex of
    0 { International } : result := '900000000000207008';
    1 { US } :  result := '731000124108';
    2 { Australia } : result := '32506021000036107';
    3 { Belgium } : result := '11000172109';
    4 { Canada } : result := '20611000087101';
    5 { Spanish } : result := '449081005';
    6 { Denmark } : result := '554471000005108';
    7 { Netherlands } : result := '11000146104';
    8 { Sweden } : result := '45991000052106';
    9 { UK } : result := '999000041000000102';
    10 { } : result := inttostr(COMBINED_MODULE_ID);
  end;
end;

procedure TMainConsoleForm.DoIncoming(Sender: TIdTelnet; const Buffer: TIdBytes);
var
  s : String;
  ts : TStringList;
begin
  FLastIncoming := now;
  ts := TStringList.create;
  try
    ts.text := TEncoding.UTF8.GetAnsiString(buffer);
    for s in ts do
      processIncomingLine(s);
  finally
    ts.free;
  end;
end;

procedure TMainConsoleForm.DoConnected(Sender: TObject);
begin
  FLock.Lock;
  try
    FStatus := csUsername;
  finally
    FLock.Unlock;
  end;
  FConnected := true;
  btnClearCache.enabled := true;
  btnFetchThreads.enabled := true;
end;

procedure TMainConsoleForm.DoDisconnected(Sender: TObject);
begin
  FConnected := false;
  btnClearCache.enabled := false;
  btnFetchThreads.enabled := false;
end;

end.

