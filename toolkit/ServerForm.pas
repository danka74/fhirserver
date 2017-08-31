unit ServerForm;

{
Copyright (c) 2017+, Health Intersections Pty Ltd (http://www.healthintersections.com.au)
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

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND
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
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TabControl, FMX.ListBox, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.Edit, System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.ScrollBox, FMX.Platform,
  IdComponent,
  DateSupport, StringSupport,
  AdvGenerics,
  FHIRTypes, FHIRResources, FHIRClient, FHIRUtilities,
  BaseFrame, AppEndorserFrame, CapabilityStatementEditor;

type
  TFrame = TBaseFrame; // re-aliasing the Frame to work around a designer bug

  TServerFrame = class (TFrame)
    btnTest: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    pnlSearch: TPanel;
    Splitter1: TSplitter;
    Label2: TLabel;
    cbxSearchType: TComboBox;
    tabSearch: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Panel2: TPanel;
    btnClose: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtConfUrl: TEdit;
    edtConfId: TEdit;
    edtConfVersion: TEdit;
    edtConfName: TEdit;
    edtConfTitle: TEdit;
    edtConfText: TEdit;
    dedConfDate: TDateEdit;
    edtConfJurisdiction: TComboBox;
    edtConfPub: TEdit;
    cbxConfStatus: TComboBox;
    edtConfUpdated: TDateEdit;
    edtConfTag: TEdit;
    btnConfSearch: TButton;
    gridConfMatches: TGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    Panel3: TPanel;
    lblOutcome: TLabel;
    Label17: TLabel;
    edtPText: TEdit;
    Label18: TLabel;
    dedPLastEdit: TDateEdit;
    Label19: TLabel;
    Label23: TLabel;
    edtPTag: TEdit;
    btnSearchPatients: TButton;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edtPName: TEdit;
    edtPTelecom: TEdit;
    cbxPDob: TComboBox;
    dedPDob: TDateEdit;
    cbxPGender: TComboBox;
    cbxPDeceased: TComboBox;
    dedPDeceased: TDateEdit;
    cbxPActive: TComboBox;
    edtPIdentifier: TEdit;
    cbxPSpecies: TComboBox;
    cbxPLanguage: TComboBox;
    cbPUseLastUpdated: TCheckBox;
    cbConfUseLastUpdated: TCheckBox;
    gridPMatches: TGrid;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    StringColumn11: TStringColumn;
    StringColumn12: TStringColumn;
    StringColumn13: TStringColumn;
    StringColumn14: TStringColumn;
    StringColumn15: TStringColumn;
    StringColumn16: TStringColumn;
    StringColumn17: TStringColumn;
    tabMatches: TTabControl;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    btnFetchMore: TButton;
    procedure btnTestClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnConfSearchClick(Sender: TObject);
    procedure gridConfMatchesGetValue(Sender: TObject; const ACol, ARow: Integer; var Value: TValue);
    procedure gridConfMatchesCellDblClick(const Column: TColumn; const Row: Integer);
    procedure cbxSearchTypeChange(Sender: TObject);
    procedure cbxPDobChange(Sender: TObject);
    procedure cbxPDeceasedChange(Sender: TObject);
    procedure cbConfUseLastUpdatedChange(Sender: TObject);
    procedure cbPUseLastUpdatedChange(Sender: TObject);
    procedure btnSearchPatientsClick(Sender: TObject);
    procedure gridPMatchesGetValue(Sender: TObject; const ACol, ARow: Integer; var Value: TValue);
    procedure btnFetchMoreClick(Sender: TObject);
  private
    FClient: TFHIRClient;
    FCapabilityStatement: TFhirCapabilityStatement;
    FCSTab : TTabItem;
    FCsForm : TCapabilityStatementEditorFrame;
    FPatBundle, FConfBundle : TFhirBundle;
    FConfMatches : TAdvList<TFHIRResource>;
    FPatMatches : TAdvList<TFHIRPatient>;
    procedure SetClient(const Value: TFHIRClient);
    procedure SetCapabilityStatement(const Value: TFhirCapabilityStatement);
    procedure DoWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  public
    Destructor Destroy; override;
    property Client : TFHIRClient read FClient write SetClient;
    property CapabilityStatement : TFhirCapabilityStatement read FCapabilityStatement write SetCapabilityStatement;

    procedure load; override;
  end;

implementation

{$R *.fmx}

{ TServerFrame }

procedure TServerFrame.btnCloseClick(Sender: TObject);
begin
  try
    Ini.WriteString('Conformance-search', 'url', edtConfUrl.Text);
    Ini.WriteString('Conformance-search', 'id', edtConfId.Text);
    Ini.WriteString('Conformance-search', 'version', edtConfVersion.Text);
    Ini.WriteString('Conformance-search', 'name', edtConfName.Text);
    Ini.WriteString('Conformance-search', 'title', edtConfTitle.Text);
    Ini.WriteString('Conformance-search', 'text', edtConfText.Text);
    Ini.WriteString('Conformance-search', 'date', dedConfDate.Text);
    Ini.WriteInteger('Conformance-search', 'jurisdiction', edtConfJurisdiction.ItemIndex);
    Ini.WriteString('Conformance-search', 'publisher', edtConfPub.Text);
    Ini.WriteInteger('Conformance-search', 'status', cbxConfStatus.ItemIndex);
    Ini.WriteString('Conformance-search', 'updated', edtConfUpdated.Text);
    Ini.WriteString('Conformance-search', 'tag', edtConfTag.Text);
    Ini.WriteBool('Conformance-search', 'updated-opt', cbConfUseLastUpdated.IsChecked);

    Ini.WriteString('Patient-search', 'text', edtPText.Text);
    Ini.WriteString('Patient-search', 'updated', dedPLastEdit.Text);
    Ini.WriteString('Patient-search', 'tag', edtPTag.Text);
    Ini.WriteString('Patient-search', 'name', edtPName.Text);
    Ini.WriteString('Patient-search', 'telecom', edtPTelecom.Text);
    Ini.WriteInteger('Patient-search', 'dobopt', cbxPDob.ItemIndex);
    Ini.WriteString('Patient-search', 'dob', dedPDob.Text);
    Ini.WriteInteger('Patient-search', 'gender', cbxPGender.ItemIndex);
    Ini.WriteInteger('Patient-search', 'dod', cbxPDeceased.ItemIndex);
    Ini.WriteString('Patient-search', 'dodopt', dedPDeceased.Text);
    Ini.WriteInteger('Patient-search', 'active', cbxPActive.ItemIndex);
    Ini.WriteString('Patient-search', 'id', edtPIdentifier.Text);
    Ini.WriteInteger('Patient-search', 'species', cbxPSpecies.ItemIndex);
    Ini.WriteInteger('Patient-search', 'lang', cbxPLanguage.ItemIndex);
    Ini.WriteBool('Patient-search', 'updated-opt', cbPUseLastUpdated.IsChecked);
  except
  end;
  Close;
end;

procedure TServerFrame.btnTestClick(Sender: TObject);
var
  tab : TTabItem;
  appForm : TAppEndorsementFrame;
begin
  tab := Tabs.Add(TTabItem);
  Tabs.ActiveTab := tab;
  tab.Text := 'AppEndorser for '+FClient.address;
  appForm := TAppEndorsementFrame.create(tab);
  tab.TagObject := appForm;
  appForm.TagObject := tab;
  appForm.Parent := tab;
  appForm.Tabs := tabs;
  appForm.OnWork := onwork;
  appForm.Ini := Ini;
  appForm.tab := tab;
  appForm.Align := TAlignLayout.Client;
  appForm.Client := client.link;
  appForm.load;
end;

procedure TServerFrame.Button1Click(Sender: TObject);
begin
  if FCSTab <> nil then
  begin
    FcsForm.Load;
    Tabs.ActiveTab := FCSTab;
  end
  else
  begin
    FCSTab := Tabs.Add(TTabItem);
    Tabs.ActiveTab := FCSTab;
    FCSTab.Text := 'Capability Statement for '+FClient.address;
    FcsForm := TCapabilityStatementEditorFrame.create(tab);
    FCSTab.TagObject := FCsForm;
    FCsForm.TagObject := FCSTab;
    FcsForm.Parent := FCSTab;
    FcsForm.Tabs := tabs;
    FcsForm.OnWork := onwork;
    FcsForm.Ini := Ini;
    FcsForm.tab := FCSTab;
    FcsForm.Align := TAlignLayout.Client;
    FcsForm.Client := client.link;
    FcsForm.Resource := CapabilityStatement.Link;
    FcsForm.Filename := '$$';
    FcsForm.Load;
  end;
end;

procedure TServerFrame.cbConfUseLastUpdatedChange(Sender: TObject);
begin
  dedConfDate.Enabled := cbConfUseLastUpdated.IsChecked;
end;

procedure TServerFrame.cbPUseLastUpdatedChange(Sender: TObject);
begin
  dedPLastEdit.Enabled := cbPUseLastUpdated.IsChecked;
end;

procedure TServerFrame.cbxPDeceasedChange(Sender: TObject);
begin
  dedPDeceased.Enabled := cbxPDeceased.ItemIndex > 2;
end;

procedure TServerFrame.cbxPDobChange(Sender: TObject);
begin
  dedPDob.Enabled := cbxPDob.ItemIndex > 0;
end;

procedure TServerFrame.cbxSearchTypeChange(Sender: TObject);
begin
  tabSearch.TabIndex := cbxSearchType.ItemIndex;
  tabMatches.TabIndex := cbxSearchType.ItemIndex;
end;

function getJurisdictionSearch(i: integer): string;
begin
  case i of
    1:result := 'urn:iso:std:iso:3166|AT';
    2:result := 'urn:iso:std:iso:3166|AU';
    3:result := 'urn:iso:std:iso:3166|BR';
    4:result := 'urn:iso:std:iso:3166|CA';
    5:result := 'urn:iso:std:iso:3166|CH';
    6:result := 'urn:iso:std:iso:3166|CL';
    7:result := 'urn:iso:std:iso:3166|CN';
    8:result := 'urn:iso:std:iso:3166|DE';
    9:result := 'urn:iso:std:iso:3166|DK';
    10:result := 'urn:iso:std:iso:3166|EE';
    11:result := 'urn:iso:std:iso:3166|ES';
    12:result := 'urn:iso:std:iso:3166|FI';
    13:result := 'urn:iso:std:iso:3166|FR';
    14:result := 'urn:iso:std:iso:3166|GB';
    15:result := 'urn:iso:std:iso:3166|NL';
    16:result := 'urn:iso:std:iso:3166|NO';
    17:result := 'urn:iso:std:iso:3166|NZ';
    18:result := 'urn:iso:std:iso:3166|RU';
    19:result := 'urn:iso:std:iso:3166|US';
    21:result := 'urn:iso:std:iso:3166|VN';
    22:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|001';
    23:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|002';
    24:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|019';
    25:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|142';
    26:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|150';
    27:result := 'http://unstats.un.org/unsd/methods/m49/m49.htm|053';
  else
    result := '';
  end;
end;

function readJurisdiction(res : TFhirMetadataResource): String;
var
  cc : TFhirCodeableConcept;
  c : TFhirCoding;
begin
  result := '';
  for cc in res.jurisdictionList do
    for c in cc.codingList do
    begin
      if c.system = 'urn:iso:std:iso:3166' then
      begin
        if c.code = 'AT' then exit('Austraia');
        if c.code = 'AU' then exit('Australia');
        if c.code = 'BR' then exit('Brazil');
        if c.code = 'CA' then exit('Canada');
        if c.code = 'CH' then exit('Switzerland');
        if c.code = 'CL' then exit('Chile');
        if c.code = 'CN' then exit('China');
        if c.code = 'DE' then exit('Germany');
        if c.code = 'DK' then exit('Denmark');
        if c.code = 'EE' then exit('Estonia');
        if c.code = 'ES' then exit('Spain');
        if c.code = 'FI' then exit('Finland');
        if c.code = 'FR' then exit('France');
        if c.code = 'GB' then exit('UK');
        if c.code = 'NL' then exit('Netherlands');
        if c.code = 'NO' then exit('Norway');
        if c.code = 'NZ' then exit('NZ');
        if c.code = 'RU' then exit('Russia');
        if c.code = 'US' then exit('USA');
        if c.code = 'VN' then exit('Vietnam');
      end
      else if c.system = 'http://unstats.un.org/unsd/methods/m49/m49.htm' then
      begin
        if c.code = '001' { World } then exit('World');
        if c.code = '002' { Africa } then exit('Africa');
        if c.code = '019' { Americas } then exit('Americas');
        if c.code = '142' { Asia } then exit('Asia');
        if c.code = '150' { Europe } then exit('Europe');
        if c.code = '053' { Australia and New Zealand } then exit('Australasia');
      end
    end;
end;




procedure TServerFrame.btnConfSearchClick(Sender: TObject);
begin
  work('Fetch Resources',
    procedure
    var
      be : TFhirBundleEntry;
      params : TDictionary<String, String>;
      start : TDateTime;
    begin
      FConfMatches.Clear;
      gridConfMatches.RowCount := FConfMatches.Count;
      FConfBundle.Free;
      FConfBundle := nil;

      params := TDictionary<String, String>.create;
      try
        params.Add('_type', 'CapabilityStatement,StructureDefinition,ImplementationGuide,SearchParameter,MessageDefinition,OperationDefinition,CompartmentDefinition,StructureMap,GraphDefinition,CodeSystem,ValueSet,ConceptMap,ExpansionProfile,NamingSystem');
        params.Add('_summary', 'true');

        if edtConfUrl.Text <> '' then
          params.add('url', edtConfUrl.Text);
        if edtConfId.Text <> '' then
          params.add('identifier', edtConfId.Text);
        if edtConfVersion.Text <> '' then
          params.add('version', edtConfVersion.Text);
        if edtConfName.Text <> '' then
          params.add('name', edtConfName.Text);
        if edtConfTitle.Text <> '' then
          params.add('title', edtConfTitle.Text);
        if edtConfText.Text <> '' then
          params.add('_text', edtConfText.Text);
        if dedConfDate.Text <> '' then
          params.add('date', dedConfDate.Text);
        if edtConfJurisdiction.ItemIndex <> -1 then
          params.add('jurisdiction', getJurisdictionSearch(edtConfJurisdiction.ItemIndex));
        if edtConfPub.Text <> '' then
          params.add('publisher', edtConfPub.Text);
        if cbxConfStatus.ItemIndex <> -1 then
          params.add('status', cbxConfStatus.Items[cbxConfStatus.ItemIndex]);
        if cbConfUseLastUpdated.IsChecked then
          params.add('_lastUpdated', edtConfUpdated.Text);
        if edtConfTag.Text <> '' then
          params.add('_tag', edtConfTag.Text);

        start := now;
        FConfBundle := FClient.search(false, params);
        for be in FConfBundle.entryList do
          if (be.search.mode = SearchEntryModeMatch) and (be.resource <> nil) then
            FConfMatches.Add(be.resource.Link);
        gridConfMatches.RowCount := FConfMatches.Count;
        lblOutcome.Text := 'Fetched '+inttostr(FConfMatches.Count)+' of '+FConfBundle.total+' resources in '+describePeriod(now - start);
        btnFetchMore.Visible := FConfBundle.Links['next'] <> '';
      finally
        params.Free;
      end;
    end);
end;

procedure TServerFrame.btnFetchMoreClick(Sender: TObject);
begin
  work('Fetch More',
    procedure
    var
      be : TFhirBundleEntry;
      start : TDateTime;
      l : TFhirBundleLink;
      i : integer;
      url : String;
    begin
      btnFetchMore.Visible := false;
      case cbxSearchType.ItemIndex of
        0:
          begin
          url := FPatBundle.Links['next'];
          FPatBundle.Free;
          FPatBundle := nil;
          start := now;
          FPatBundle := FClient.searchAgain(url);
          i := 0;
          for be in FPatBundle.entryList do
            if (be.search.mode = SearchEntryModeMatch) and (be.resource <> nil) then
            begin
              FPatMatches.Add(be.resource.Link as TFHIRPatient);
              inc(i);
            end;
          gridPMatches.RowCount := FpatMatches.Count;
          lblOutcome.Text := 'Fetched '+inttostr(i)+' of '+FPatBundle.total+' patients in '+describePeriod(now - start);
          btnFetchMore.Visible := FPatBundle.Links['next'] <> '';
          end;
        1:
          begin
          url := FConfBundle.Links['next'];
          FConfBundle.Free;
          FConfBundle := nil;
          start := now;
          FConfBundle := FClient.searchAgain(url);
          i := 0;
          for be in FConfBundle.entryList do
            if (be.search.mode = SearchEntryModeMatch) and (be.resource <> nil) then
            begin
              FConfMatches.Add(be.resource.Link);
              inc(i);
            end;
          gridConfMatches.RowCount := FConfMatches.Count;
          lblOutcome.Text := 'Fetched '+inttostr(i)+' of '+FConfBundle.total+' resources in '+describePeriod(now - start);
          btnFetchMore.Visible := FConfBundle.Links['next'] <> '';
          end;
      end;
    end);
end;

procedure TServerFrame.btnSearchPatientsClick(Sender: TObject);
begin
  work('Search Patients',
    procedure
    var
      params : TDictionary<String, String>;
      be : TFhirBundleEntry;
      start : TDateTime;
      l : TFhirBundleLink;
    begin
      FPatMatches.Clear;
      gridPMatches.RowCount := FConfMatches.Count;
      FPatBundle.Free;
      FPatBundle := nil;

      params := TDictionary<String, String>.create;
      try
        params.Add('_summary', 'true');
        if edtPName.Text <> '' then
          params.add('name', edtPName.Text);
        if edtPTelecom.Text <> '' then
          params.add('telecom', edtPTelecom.Text);
        if edtPIdentifier.Text <> '' then
          params.add('identifier', edtPIdentifier.Text);

        case cbxPDob.ItemIndex of
          1: {on} params.add('birthdate', TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          2: {before} params.add('birthdate', 'le'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          3: {after}  params.add('birthdate', 'ge'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          4: {around} params.add('birthdate', 'ap'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
        end;
        case cbxPGender.ItemIndex of
          1: { Male } params.add('gender', 'male');
          2: { Female } params.add('gender', 'female');
          3: { Other } params.add('gender', 'other');
          4: { Unknown } params.add('gender', 'unknown');
        end;
        case cbxPDeceased.ItemIndex of
          1: { Alive} params.add('deceased', 'false');
          2: { Deceased} params.add('deceased', 'true');
          3: { On} params.add('death-date', TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          4: { Before} params.add('death-date', 'le'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          5: { After} params.add('death-date', 'ge'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
          6: { Around} params.add('death-date', 'ap'+TDateTimeEx.make(dedPDob.Date, dttzUnknown).toXML);
        end;
        case cbxPActive.ItemIndex of
          1: { true } params.add('gender', 'true');
          2: { false } params.add('gender', 'false');
        end;
        case cbxPActive.ItemIndex of
          1: { human } params.add('animal-species:missing', 'true');
          2: { non-human } params.add('animal-species:missing', 'false');
        end;
        if cbxPLanguage.ItemIndex > 0 then
          params.add('language', cbxPLanguage.Items[cbxPLanguage.ItemIndex].Substring(0, 2));

        if cbPUseLastUpdated.IsChecked then
          params.add('_lastUpdated', dedPLastEdit.Text);

        if edtPTag.Text <> '' then
          params.add('_tag', edtPTag.Text);
        if edtPText.Text <> '' then
          params.add('_text', edtPText.Text);

        start := now;
        FPatBundle := FClient.search(frtPatient, false, params);
        for be in FPatBundle.entryList do
          if (be.search.mode = SearchEntryModeMatch) and (be.resource <> nil) then
            FPatMatches.Add(be.resource.Link as TFHIRPatient);
        gridPMatches.RowCount := FpatMatches.Count;
        lblOutcome.Text := 'Fetched '+inttostr(FPatMatches.Count)+' of '+FPatBundle.total+' patients in '+describePeriod(now - start);
        btnFetchMore.Visible := FPatBundle.Links['next'] <> '';
      finally
        params.Free;
      end;
    end);
end;

destructor TServerFrame.Destroy;
begin
  FClient.free;
  FCapabilityStatement.free;
  FConfBundle.Free;
  FPatBundle.Free;
  FConfMatches.Free;
  FPatMatches.Free;

  inherited;
end;

procedure TServerFrame.DoWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  Application.ProcessMessages;
  if assigned(OnStopped) and OnStopped then
    abort;
end;

procedure TServerFrame.gridConfMatchesCellDblClick(const Column: TColumn; const Row: Integer);
var
  res : TFhirResource;
begin
  res := Client.readResource(FConfMatches[Row].ResourceType, FConfMatches[Row].id);
  try
    OnOpenResource(self, client, client.format, res);
  finally
    res.Free;
  end;
end;

procedure TServerFrame.gridConfMatchesGetValue(Sender: TObject; const ACol, ARow: Integer; var Value: TValue);
var
  res : TFhirMetadataResource;
begin
  if not (FConfMatches[aRow] is TFhirMetadataResource) then
  begin
    case ACol of
      0: Value := FConfMatches[aRow].fhirType;
      1: Value := FConfMatches[aRow].id;
    end;
  end
  else
  begin
    res := FConfMatches[aRow] as TFhirMetadataResource;
    case ACol of
      0: Value := res.fhirType;
      1: Value := res.id;
      2: Value := res.url;
      3: Value := res.name;
      4: Value := res.version;
      5: Value := CODES_TFhirPublicationStatusEnum[res.status];
      6: Value := res.date.toXML;
      7: Value := readJurisdiction(res);
    end;
  end;
end;

procedure TServerFrame.gridPMatchesGetValue(Sender: TObject; const ACol, ARow: Integer; var Value: TValue);
var
  pat : TFhirPatient;
begin
  pat := FPatMatches[ARow];
  case ACol of
    0: Value := pat.id;
    1: if pat.nameList.Count > 0 then Value := pat.nameList[0].family;
    2: if pat.nameList.Count > 0 then Value := pat.nameList[0].given;
    3: Value := CODES_TFhirAdministrativeGenderEnum[pat.gender];
    4: Value := pat.birthDate.toString('cd');
    5: if pat.activeElement <> nil then Value := BooleanToString(pat.active);
    6: if pat.deceased <> nil then if pat.deceased is TFhirBoolean then Value := BooleanToString(pat.active) else Value := (pat.deceased as TFhirDateTime).value.toString('c');
    7: if pat.animal = nil then Value := '(human)' else Value := gen(pat.animal.species);
    8: Value := pat.identifierList.withCommas;
  end;
end;

procedure TServerFrame.load;
begin
  edtConfUrl.Text := Ini.ReadString('Conformance-search', 'url', '');
  edtConfId.Text := Ini.ReadString('Conformance-search', 'id', '');
  edtConfVersion.Text := Ini.ReadString('Conformance-search', 'version', '');
  edtConfName.Text := Ini.ReadString('Conformance-search', 'name', '');
  edtConfTitle.Text := Ini.ReadString('Conformance-search', 'title', '');
  edtConfText.Text := Ini.ReadString('Conformance-search', 'text', '');
  dedConfDate.Text := Ini.ReadString('Conformance-search', 'date', '');
  edtConfJurisdiction.ItemIndex := Ini.ReadInteger('Conformance-search', 'jurisdiction', 0);
  edtConfPub.Text := Ini.ReadString('Conformance-search', 'publisher', '');
  cbxConfStatus.ItemIndex := Ini.ReadInteger('Conformance-search', 'status', 0);
  edtConfUpdated.Text := Ini.ReadString('Conformance-search', 'updated', '');
  cbConfUseLastUpdated.IsChecked := Ini.ReadBool('Conformance-search', 'updated-opt', false);
  edtConfTag.Text := Ini.ReadString('Conformance-search', 'tag', '');

  edtPText.Text := Ini.ReadString('Patient-search', 'text', '');
  dedPLastEdit.Text := Ini.ReadString('Patient-search', 'updated', '');
  edtPTag.Text := Ini.ReadString('Patient-search', 'tag', '');
  edtPName.Text := Ini.ReadString('Patient-search', 'name', '');
  edtPTelecom.Text := Ini.ReadString('Patient-search', 'telecom', '');
  cbxPDob.ItemIndex := Ini.ReadInteger('Patient-search', 'dobopt', 0);
  dedPDob.Text := Ini.ReadString('Patient-search', 'dob', '');
  cbxPGender.ItemIndex := Ini.ReadInteger('Patient-search', 'gender', 0);
  cbxPDeceased.ItemIndex := Ini.ReadInteger('Patient-search', 'dod', 0);
  dedPDeceased.Text := Ini.ReadString('Patient-search', 'dodopt', '');
  cbxPActive.ItemIndex := Ini.ReadInteger('Patient-search', 'active', 0);
  edtPIdentifier.Text := Ini.ReadString('Patient-search', 'id', '');
  cbxPSpecies.ItemIndex := Ini.ReadInteger('Patient-search', 'species', 0);
  cbxPLanguage.ItemIndex := Ini.ReadInteger('Patient-search', 'lang', 0);
  cbPUseLastUpdated.IsChecked := Ini.ReadBool('Patient-search', 'updated-opt', false);

  btnFetchMore.Visible := false;
  FConfMatches := TAdvList<TFHIRResource>.create;
  FPatMatches := TAdvList<TFHIRPatient>.create;
  cbxSearchTypeChange(nil);
  cbxPDobChange(nil);
  cbxPDeceasedChange(nil);
  cbPUseLastUpdatedChange(nil);
  cbConfUseLastUpdatedChange(nil);
end;


procedure TServerFrame.SetCapabilityStatement(const Value: TFhirCapabilityStatement);
begin
  FCapabilityStatement.free;
  FCapabilityStatement := Value;
end;

procedure TServerFrame.SetClient(const Value: TFHIRClient);
begin
  FClient.free;
  FClient := Value;
end;

end.
