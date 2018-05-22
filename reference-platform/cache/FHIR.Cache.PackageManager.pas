unit FHIR.Cache.PackageManager;

interface

uses
  SysUtils, Classes, IniFiles, zlib, Generics.Collections,
  FHIR.Support.Objects, FHIR.Support.Generics, FHIR.Support.System, FHIR.Support.Json, FHIR.Support.Strings, FHIR.Support.DateTime,
  FHIR.Support.Text, FHIR.Support.Tarball;

type
  TFHIRPackageKind = (fpkNull, fpkCore, fpkIG, fpkIGTemplate, fpkTool);
  TFHIRPackageKindSet = set of TFHIRPackageKind;

const
  All_Package_Kinds = [fpkCore..fpkTool];
  CODES_TFHIRPackageKind : Array [TFHIRPackageKind] of String = ('', 'Core', 'IG', 'IG-Template', 'Tool');
  NAMES_TFHIRPackageKind : Array [TFHIRPackageKind] of String = ('', 'Core Specification', 'Implementation Guides', 'IG Templates', 'Tools');

  ANALYSIS_VERSION = 2;
  CACHE_VERSION = 1;

type
  TFHIRPackageObject = {abstract} class (TFslObject)
  public
    function summary : string; virtual;
    function childCount : integer; virtual;
  end;

  TFHIRPackageDependencyStatus = (stUnknown, stOK, stMoreRecentVersion, stNotResolved);

  TFHIRPackageDependencyInfo = class (TFHIRPackageObject)
  private
    Fversion: String;
    Fid: String;
    Furi: String;
    FStatus: TFHIRPackageDependencyStatus;
  public
    function Link : TFHIRPackageDependencyInfo; overload;
    function summary : String; override;

    property id : String read Fid write FId;
    property version : String read Fversion write FVersion;
    property uri : String read Furi write Furi;
    property status : TFHIRPackageDependencyStatus read FStatus write FStatus;
  end;

  TFHIRPackageVersionInfo = class (TFHIRPackageObject)
  private
    FUrl : String;
    FStatedVersion : String;
    FActualVersion : String;
    FDependencies : TFslList<TFHIRPackageDependencyInfo>;
    FFhirVersion: string;
    FInstalled: TDateTime;
    FSize: integer;
    FProfiles: TDictionary<String, String>;
    FCanonicals : TDictionary<String, String>;
    FFolder: String;
  public
    constructor Create; override;
    destructor Destroy; override;
    function Link : TFHIRPackageVersionInfo; overload;
    function summary : String; override;
    function childCount : integer; override;

    property statedVersion : String read FStatedVersion write FStatedVersion;
    property actualVersion : String read FActualVersion write FActualVersion;
    property fhirVersion : string read FFhirVersion write FFhirVersion;
    property url : String read FUrl write FUrl;
    property size : integer read FSize write FSize;
    property installed : TDateTime read FInstalled write FInstalled;
    property dependencies : TFslList<TFHIRPackageDependencyInfo> read FDependencies;
    property profiles : TDictionary<String, String> read FProfiles;
    property canonicals : TDictionary<String, String> read FCanonicals;
    property folder : String read FFolder write FFolder;
  end;

  TFHIRPackageInfo = class (TFHIRPackageObject)
  private
    FId : String;
    FCanonical : String;
    FVersions : TFslList<TFHIRPackageVersionInfo>;
    FKind: TFHIRPackageKind;
  public
    constructor Create; override;
    destructor Destroy; override;
    function Link : TFHIRPackageInfo; overload;
    function summary : String; override;
    function childCount : integer; override;

    property id : String read FId write FId;
    property Canonical : String read FCanonical write FCanonical;
    property versions : TFslList<TFHIRPackageVersionInfo> read FVersions;
    property kind : TFHIRPackageKind read FKind write FKind;
  end;

  TCheckFunction = reference to function(msg : String):boolean;
  TPackageLoadingEvent = procedure (rType, id : String; stream : TStream) of object;

  TFHIRPackageManager = class (TFslObject)
  private
    FUser : boolean;
    FFolder : String;
    FIni : TIniFile;
    function resolve(list : TFslList<TFHIRPackageInfo>; dep : TFHIRPackageDependencyInfo) : TFHIRPackageDependencyStatus;
    function loadArchive(content : TBytes) : TDictionary<String, TBytes>;
    procedure clearCache;
    function readNpmKind(kind, id: String): TFHIRPackageKind;
    function checkPackageSize(dir : String) : integer;
    procedure analysePackage(dir : String; v : String; profiles, canonicals : TDictionary<String, String>);
  public
    constructor Create(user : boolean);
    destructor Destroy; override;
    function Link : TFHIRPackageManager;

    property Folder : String read FFolder;
    property UserMode : boolean read FUser;
    function description : String;

    procedure ListPackages(list : TStrings); overload;
    procedure ListPackages(kinds : TFHIRPackageKindSet; list : TFslList<TFHIRPackageInfo>); overload;
    procedure ListPackageIds(list : TStrings);
    procedure ListPackageVersions(id : String; list : TStrings);
    procedure ListPackagesForFhirVersion(kinds : TFHIRPackageKindSet; version : String; list : TStrings);

    function packageExists(id, ver : String) : boolean;
    procedure loadPackage(id, ver : String; resources : Array of String; loadEvent : TPackageLoadingEvent); overload;
    procedure loadPackage(id, ver : String; resources : TFslStringSet; loadEvent : TPackageLoadingEvent); overload;

    procedure import(content : TBytes; callback : TCheckFunction); overload;

    procedure remove(id : String); overload;
    procedure remove(id, ver: String); overload;

    function getId(url : String) : String;
    function getUrl(id : String) : String;
  end;

implementation

uses
  IOUtils;

{ TFHIRPackageManager }

function TFHIRPackageManager.checkPackageSize(dir: String): integer;
var
  s : String;
begin
  result := 0;
  for s in TDirectory.GetDirectories(dir) do
    inc(result, checkPackageSize(s));
  for s in TDirectory.GetFiles(dir) do
    inc(result, FileSize(s));
end;

procedure TFHIRPackageManager.clearCache;
var
  s : String;
begin
  for s in TDirectory.GetDirectories(FFolder) do
    if s.Contains('-') then
      FolderDelete(s);
end;

constructor TFHIRPackageManager.Create(user : boolean);
begin
  inherited Create;
  FUser := user;
  if user then
    FFolder := path([UserFolder, '.fhir', 'packages'])
  else
    FFolder := path([ProgData, '.fhir', 'packages']);
  ForceFolder(FFolder);
  FIni := TIniFile.create(Path([FFolder, 'packages.ini']));
  if FIni.ReadInteger('cache', 'version', 0) <> CACHE_VERSION then
  begin
    clearCache;
    FIni.WriteInteger('cache', 'version', CACHE_VERSION);
  end;
end;

function TFHIRPackageManager.description: String;
begin
  if FUser then
    result := 'User Cache'
  else
    result := 'System Cache';
end;

destructor TFHIRPackageManager.Destroy;
begin
  FIni.Free;
  Inherited;
end;

function TFHIRPackageManager.getId(url: String): String;
var
  list : TStringList;
  s : String;
begin
  list := TStringList.Create;
  try
    FIni.ReadSection('urls', list);
    for s in list do
      if url = FIni.ReadString('urls', s, '') then
        exit(s);
  finally
    list.Free;
  end;
end;

function TFHIRPackageManager.getUrl(id: String): String;
begin
  result := FIni.ReadString('urls', id, '');
end;


procedure TFHIRPackageManager.import(content : TBytes; callback : TCheckFunction);
var
  npm : TJsonObject;
  id, ver, dir, fn, fver : String;
  files : TDictionary<String, TBytes>;
  s, p : string;
  ini : TIniFile;
  size : integer;
  pl, cl : TDictionary<String, String>;
begin
  files := loadArchive(content);
  try
    npm := TJSONParser.Parse(files['package\package.json']);
    try
      id := npm.str['name'];
      ver := npm.str['version'];
      fver := npm.obj['dependencies'].str['hl7.fhir.core'];
    finally
      npm.Free;
    end;
    if packageExists(id, ver) then
      if not callback('Replace existing copy of '+id+' version '+ver+'?') then
        exit;
    dir := path([FFolder, id+'-'+ver]);
    if FolderExists(dir) then
      if not FolderDelete(dir) then
        raise Exception.Create('Unable to delete existing package');
    ForceFolder(dir);
    size := 0;
    for s in files.Keys do
    begin
      fn := path([dir, s]);
      ForceFolder(PathFolder(fn));
      if FileExists(fn) then
      begin
        if not DeleteFile(fn) then
        begin
          Sleep(100);
          if not DeleteFile(fn) then
            raise Exception.Create('Unable to delete existing file '+fn);
        end;
      end;
      BytesToFile(files[s], fn);
      inc(size, length(files[s]));
    end;
    ini := TIniFile.Create(path([dir, 'cache.ini']));
    try
      ini.WriteInteger('Package', 'size', size);
      ini.WriteDateTime('Package', 'install', now);
      pl := TDictionary<String, String>.create;
      cl := TDictionary<String, String>.create;
      try
        analysePackage(dir, fver, pl, cl);
        for p in pl.Keys do
          ini.WriteString('Profiles', p, pl[p]);
        for p in cl.Keys do
          ini.WriteString('Canonicals', p, cl[p]);
        ini.writeinteger('Packages', 'analysis', ANALYSIS_VERSION);
      finally
        pl.Free;
        cl.Free;
      end;
    finally
      ini.Free;
    end;
  finally
    files.Free;
  end;
end;
(*
  // we need to unzip all the files before we can read the package that tells us everything we need to know
  // we're going to do this to a temporary directory
    forceFolder(fn);


//  t, fn, d : String;

    archiveclass := GetArchiveFormats.FindDecompressFormat(FileName);
    if not Assigned(archiveclass) then
      Raise exception.Create('Not supported by 7z.dll');
    Myarchive := archiveclass.Create(FileName);
    try
      if (Myarchive is TJclSevenZipDecompressArchive) then
      Begin
        Myarchive.ListFiles; { Fails without doing this first }
       { ExtractAll (AutocreateSubDir) must be set true if arc has directories or it will crash }
        Myarchive.ExtractAll(fn, True);
      End;
    Finally
      MyArchive.Free;
    End;
    // now we've unhzipped the file, and just have a tarball.
    FileName := Path([t, 'gunzip', PathTitle(fileName)]);

    FileDelete(filename);


  finally
    FolderDelete(t);
  end;
end;
*)

function TFHIRPackageManager.Link: TFHIRPackageManager;
begin
  result := TFHIRPackageManager(Inherited Link);
end;

procedure TFHIRPackageManager.ListPackageIds(list: TStrings);
var
  s, id : String;
begin
  for s in TDirectory.GetDirectories(FFolder) do
  begin
    id := s.subString(s.lastIndexOf('\')+1);
    if id.Contains('-') then
    begin
      id := id.Substring(0, id.IndexOf('-'));
      if list.IndexOf(id) = -1 then
        list.Add(id);
    end;
  end;
end;

function TFHIRPackageManager.readNpmKind(kind, id : String) : TFHIRPackageKind;
begin
  if kind = 'fhir.core' then
    result := fpkCore
  else if kind = 'fhir.ig' then
    result := fpkIG
  else if kind = 'fhir.tool' then
    result := fpkTool
  else if kind = 'fhir.template' then
    result := fpkIGTemplate
  else if kind <> '' then
    raise Exception.Create('Unknown Package Kind')
  else if id = 'hl7.fhir.core' then
    result := fpkCore
  else
    result := fpkIG;
end;

procedure TFHIRPackageManager.ListPackages(kinds : TFHIRPackageKindSet; list: TFslList<TFHIRPackageInfo>);
var
  s, s1 : String;
  id, n : String;
  npm, dep : TJsonObject;
  t, pck : TFHIRPackageInfo;
  v : TFHIRPackageVersionInfo;
  d : TFHIRPackageDependencyInfo;
  ts, ts1 : TStringList;
  kind : TFHIRPackageKind;
  ini : TIniFile;
begin
  ts := TStringList.Create;
  try
    for s in TDirectory.GetDirectories(FFolder) do
      ts.Add(s);
    ts.Sort;
    for s in ts do
    begin
      if s.Contains('-') and FileExists(Path([s, 'package', 'package.json'])) then
      begin
        npm := TJSONParser.ParseFile(Path([s, 'package', 'package.json']));
        try
          id := npm.str['name'];
          kind := readNpmKind(npm.str['type'], id);
          if (kind in kinds) then
          begin
            pck := nil;
            try
              for t in list do
                if t.id = id then
                  pck := t.Link;
              if pck = nil then
              begin
                pck := TFHIRPackageInfo.create;
                pck.id := id;
                pck.kind := kind;
                if (id = 'hl7.fhir.core') then
                  list.Insert(0, pck.link)
                else
                  list.add(pck.link);
              end
              else if (pck.kind <> kind) then
                raise Exception.Create('Package kind mismatch beteen versions for Package '+id+': '+CODES_TFHIRPackageKind[kind]+'/'+CODES_TFHIRPackageKind[pck.kind]);

              if pck.Canonical = '' then
                pck.Canonical := npm.str['canonical'];
              if pck.Canonical = '' then
                pck.Canonical := getUrl(pck.id);
              v := TFHIRPackageVersionInfo.Create;
              try
                v.folder := s;
                v.StatedVersion := s.Substring(s.LastIndexOf('-')+1);
                v.ActualVersion := npm.str['version'];
                v.url := npm.str['homepage'];
                if (v.url = '') then
                  v.url := npm.str['url'];
                ini := TIniFile.Create(path([s, 'cache.ini']));
                try
                  if not ini.ValueExists('Package', 'size') then
                    ini.WriteInteger('Package', 'size', checkPackageSize(s));
                  v.size := ini.ReadInteger('Package', 'size', 0);
                  v.installed := ini.ReadDateTime('Package', 'install', 0);
                  if ini.ReadInteger('Packages', 'analysis', 0) <> ANALYSIS_VERSION then
                  begin
                    analysePackage(s, npm.obj['dependencies'].str['hl7.fhir.core'], v.profiles, v.canonicals);
                    ini.EraseSection('Profiles');
                    for s1 in v.profiles.Keys do
                      ini.WriteString('Profiles', s1, v.profiles[s1]);
                    ini.EraseSection('Canonicals');
                    for s1 in v.canonicals.Keys do
                      ini.WriteString('Canonicals', s1, v.canonicals[s1]);
                    ini.writeInteger('Packages', 'analysis', ANALYSIS_VERSION);
                  end
                  else
                  begin
                    ts1 := TStringList.Create;
                    try
                      FIni.ReadSection('Profiles', ts1);
                      for s1 in s1 do
                        v.profiles.AddOrSetValue(s1, FIni.ReadString('Profiles', s1, ''));
                    finally
                      ts1.Free;
                    end;
                  end;
                finally
                  ini.Free;
                end;

                dep := npm.obj['dependencies'];
                for n in dep.properties.Keys do
                begin
                  if n = 'hl7.fhir.core' then
                    v.fhirVersion := dep.str[n]
                  else
                  begin
                    d := TFHIRPackageDependencyInfo.Create;
                    try
                      d.id := n;
                      d.version := dep.str[n];
                      v.dependencies.add(d.Link);
                    finally
                      d.Free;
                    end;
                  end
                end;
                pck.versions.Add(v.link);
              finally
                v.Free;
              end;
            finally
              pck.Free;
            end;
          end;
        finally
          npm.free;
        end;
      end;
    for pck in list do
      for v in pck.versions do
        for d in v.dependencies do
          d.status := resolve(list, d);
    end;
  finally
    ts.Free;
  end;
end;

procedure TFHIRPackageManager.ListPackagesForFhirVersion(kinds : TFHIRPackageKindSet; version: String; list: TStrings);
var
  l : TFslList<TFHIRPackageInfo>;
  p : TFHIRPackageInfo;
  v : TFHIRPackageVersionInfo;
begin
  list.Clear;
  l := TFslList<TFHIRPackageInfo>.create;
  try
    ListPackages(kinds, l);
    for p in l do
      if p.id <> 'hl7.fhir.core' then
        for v in p.versions do
          if v.fhirVersion = version then
            list.Add(p.id+'-'+v.statedVersion);
  finally
    l.Free;
  end;
end;

procedure TFHIRPackageManager.ListPackages(list: TStrings);
var
  s : String;
begin
  for s in TDirectory.GetDirectories(FFolder) do
    if s.Contains('-') then
      list.Add(s);
end;

procedure TFHIRPackageManager.ListPackageVersions(id: String; list: TStrings);
var
  s, f : String;
  ts : TStringList;
begin
  ts := TStringList.Create;
  try
    for s in TDirectory.GetDirectories(FFolder) do
      ts.Add(s);
    ts.Sort;
    for s in TDirectory.GetDirectories(FFolder) do
    begin
      f := s.subString(FFolder.length+1);
      if (f.StartsWith(id+'-')) then
        list.Add(f.Substring(id.Length+1));
    end;
  finally
    ts.free;
  end;
end;

function TFHIRPackageManager.loadArchive(content: TBytes): TDictionary<String, TBytes>;
var
  bo, bi : TBytesStream;
  tar : TTarArchive;
  DirRec : TTarDirRec;
  z : TZDecompressionStream;
  fn : String;
  b : TBytes;
begin
  result := TDictionary<String, TBytes>.create;
  bo := TBytesStream.Create(content);
  try
    z := TZDecompressionStream.Create(bo, 15+16);
    try
      tar := TTarArchive.Create(z);
      try
        tar.Reset;
        while tar.FindNext(DirRec) do
        begin
          fn := DirRec.Name;
          fn := fn.replace('/', '\');
          bi := TBytesStream.Create;
          try
            tar.ReadFile(bi);
            b := bi.Bytes;
            result.Add(fn, copy(b, 0, bi.Size));
          finally
            bi.free;
          end;
        end;
      finally
        tar.Free;
      end;
    finally
      z.Free;
    end;
  finally
    bo.free;
  end;
end;

procedure TFHIRPackageManager.loadPackage(id, ver: String; resources: Array of String; loadEvent: TPackageLoadingEvent);
var
  fsl : TFslStringSet;
begin
  fsl := TFslStringSet.Create(resources);
  try
    loadPackage(id, ver, fsl, loadEvent);
  finally
    fsl.Free;
  end;
end;

procedure TFHIRPackageManager.loadPackage(id, ver: String; resources : TFslStringSet; loadEvent: TPackageLoadingEvent);
var
  s, t, i : String;
  f : TFileStream;
begin
  if not packageExists(id, ver) then
    raise Exception.Create('Unable to load package '+id+' v '+ver+' as it doesn''t exist');
  for s in TDirectory.GetFiles(Path([FFolder, id+'-'+ver, 'package'])) do
    if not s.endsWith('package.json') then
    begin
      t := PathTitle(s);
      i := t.substring(t.IndexOf('-')+1);
      t := t.substring(0, t.IndexOf('-'));
      if resources.contains(t) then
      begin
        f := TFileStream.Create(s, fmOpenRead + fmShareDenyWrite);
        try
          loadEvent(t, i, f);
        finally
          f.Free;
        end;
      end;
    end;
end;

procedure TFHIRPackageManager.analysePackage(dir: String; v : String; profiles, canonicals: TDictionary<String, String>);
var
  s, bd : String;
  j : TJsonObject;
begin
  for s in TDirectory.GetFiles(path([dir, 'package'])) do
  begin
    try
      j := TJSONParser.ParseFile(s);
      try
        if (j.str['url'] <> '') and (j.str['resourceType'] <> '') then
          canonicals.AddOrSetValue(j.str['url'], extractFileName(s));
        if (j.str['resourceType'] = 'StructureDefinition') and (j.str['kind'] = 'resource') then
        begin
          if (v = '1.0.2') then
            bd := j.str['constrainedType']
          else
            bd := j.str['type'];
          if bd = '' then
            bd := j.str['name'];
          if bd <> 'Extension' then
            profiles.AddOrSetValue(j.str['url'], bd);
        end;
      finally
        j.Free;
      end;
    except
      // nothing
    end;
  end;
end;

function TFHIRPackageManager.packageExists(id, ver: String): boolean;
begin
  result := FolderExists(Path([FFolder, id+'-'+ver])) and FileExists(Path([FFolder, id+'-'+ver, 'package', 'package.json']));
end;

procedure TFHIRPackageManager.remove(id : String);
var
  s, n : String;
begin
  for s in TDirectory.GetDirectories(FFolder) do
  begin
    n := s.Substring(s.LastIndexOf('\')+1);
    if (n.StartsWith(id+'-')) then
      if not FolderDelete(s) then
        raise Exception.Create('Unable to delete package '+n+'. Perhaps it is in use?');
  end;
end;

procedure TFHIRPackageManager.remove(id, ver : String);
var
  s, n : String;
begin
  for s in TDirectory.GetDirectories(FFolder) do
  begin
    n := s.Substring(s.LastIndexOf('\')+1);
    if (n = id+'-'+ver) then
      if not FolderDelete(s) then
        raise Exception.Create('Unable to delete package '+n+'. Perhaps it is in use?');
  end;
end;

function TFHIRPackageManager.resolve(list: TFslList<TFHIRPackageInfo>; dep: TFHIRPackageDependencyInfo): TFHIRPackageDependencyStatus;
var
  t : TFHIRPackageInfo;
  v : TFHIRPackageVersionInfo;
begin
  result := stNotResolved;
  for t in list do
    if t.id = dep.id then
    begin
      for v in t.versions do
        if v.actualVersion = dep.version then
          exit(stOK);
      for v in t.versions do
        if v.actualVersion > dep.version then
          exit(stMoreRecentVersion);
    end;
end;

{ TFHIRPackageInfo }

function TFHIRPackageInfo.childCount: integer;
begin
  result := FVersions.Count;
end;

constructor TFHIRPackageInfo.Create;
begin
  inherited;
  FVersions := TFslList<TFHIRPackageVersionInfo>.Create;
end;

destructor TFHIRPackageInfo.Destroy;
begin
  FVersions.Free;
  inherited;
end;

function TFHIRPackageInfo.Link: TFHIRPackageInfo;
begin
  result := TFHIRPackageInfo(inherited Link);
end;

function TFHIRPackageInfo.summary: String;
begin
  if FCanonical <> '' then
    result := FId
  else
    result := FId + '('+FCanonical+')';
end;

{ TFHIRPackageDependencyInfo }

{ TFHIRPackageVersionInfo }

function TFHIRPackageVersionInfo.childCount: integer;
begin
  result := FDependencies.Count;
end;

constructor TFHIRPackageVersionInfo.Create;
begin
  inherited;
  FDependencies := TFslList<TFHIRPackageDependencyInfo>.create;
  FProfiles := TDictionary<String, String>.create;
  FCanonicals := TDictionary<String, String>.create;
end;

destructor TFHIRPackageVersionInfo.Destroy;
begin
  FProfiles.Free;
  FCanonicals.Free;
  FDependencies.Free;
  inherited;
end;

function TFHIRPackageVersionInfo.Link: TFHIRPackageVersionInfo;
begin
  result := TFHIRPackageVersionInfo(inherited link);
end;

function TFHIRPackageVersionInfo.summary: String;
begin
  if FActualVersion <> FStatedVersion then
    result := FStatedVersion+' (v'+FActualVersion+') [FHIR v'+FFhirVersion+']'
  else
    result := 'v'+FActualVersion+' [FHIR v'+FFhirVersion+']';
  if installed > 0 then
    result := result +' ('+DescribeBytes(size)+', '+DescribePeriod(now - installed)+')'
  else
    result := result +' ('+DescribeBytes(size)+')';
end;

{ TFHIRPackageDependencyInfo }

function TFHIRPackageDependencyInfo.Link: TFHIRPackageDependencyInfo;
begin
  result := TFHIRPackageDependencyInfo(inherited link);
end;

function TFHIRPackageDependencyInfo.summary: String;
begin
  result := 'Depends on '+Fid+'-'+Fversion;
  case status of
    stUnknown: ;
    stOK: result := result + ' (found)';
    stMoreRecentVersion: result := result + ' (found more recent version)';
    stNotResolved: result := result + ' (not found)';
  end;
end;

{ TFHIRPackageObject }

function TFHIRPackageObject.childCount: integer;
begin
  result := 0;
end;

function TFHIRPackageObject.summary: string;
begin
  result := '?';
end;

end.
