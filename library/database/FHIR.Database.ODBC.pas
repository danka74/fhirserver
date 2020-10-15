unit FHIR.Database.ODBC;

{
Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
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

{$I fhir.inc}


interface

uses
  SysUtils, Classes, Contnrs, IniFiles, {$IFDEF FPC} odbcsqldyn {$ELSE} FHIR.Database.ODBC.Headers {$ENDIF},
  FHIR.Support.Base, FHIR.Support.Utilities,  
  FHIR.Database.Dialects, FHIR.Database.Manager,
  FHIR.Database.ODBC.Objects;

type
  TFslDBOdbcConnection = class (TFslDBConnection)
  private
    FEnv : TOdbcEnv;
    FHdbc : TOdbcConnection;
    FStmt : TOdbcStatement;
    FASAMode : Integer;
    procedure SetASALevel(iLevel : Integer);
    function FetchColumnMetaData(ASrc : TCatalogColumn) : TFslDBColumn;
    function FetchIndexMetaData(ACat: TOdbcCatalog; AName : String) : TFslDBIndex;
    Function FetchRelationshipMetaData(aCat : TOdbcCatalog; aDetails : String) : TFslDBRelationship;
    function FetchTableMetaData(ACat: TOdbcCatalog; ASrc : TCatalogTable) : TFslDBTable;
    function DatabaseSizeMSSQL : int64;
    function TableSizeMSSQL(sName : String) : int64;
  Protected
    procedure StartTransactV; Override;
    procedure CommitV; Override;
    procedure RollbackV; Override;
    function FetchMetaDataV : TFslDBMetaData; Override;
    function GetColCountV: Integer; Override;
    function GetColStringV(ACol: Word): String; Override;
    function GetColIntegerV(ACol: Word): Integer; Override;
    function GetColInt64V(ACol: Word): Int64; Override;
    function GetColDoubleV(ACol: Word): Double; Override;
    function GetColBlobV(ACol: Word): TBytes; Override;
    function GetColNullV(ACol: Word): Boolean; Override;
    function GetColTimestampV(ACol: Word): TTimestamp; Override;
    function GetColDateTimeExV(ACol: Word): TFslDateTime; Override;
    function GetColTypeV(ACol: Word): TFslDBColumnType; Override;
    function GetColKeyV(ACol: Word): Integer; Override;
    function GetRowsAffectedV: Integer; Override;
    procedure RenameTableV(AOldTableName, ANewTableName: String); Override;
    procedure RenameColumnV(ATableName, AOldColumnName, ANewColumnName: String; AColumnDetails: String = ''); Override;
    procedure DropTableV(ATableName : String); Override;
    procedure DropColumnV(ATableName, AColumnName : String); override;
    procedure ListTablesV(AList : TStrings); override;
    procedure ClearDatabaseV; Override;
    procedure PrepareV; Override;
    procedure ExecuteV; Override;
    procedure TerminateV; Override;
    function FetchNextV: Boolean; Override;
    function ColByNameV(AColName: String): Integer; Override;
    function ColNameV(ACol: Integer): String; Override;
    procedure BindInt64V(AParamName: String; AParamValue: Int64); Override;
    procedure BindIntegerV(AParamName: String; AParamValue: Integer); Override;
    procedure BindKeyV(AParamName: String; AParamValue: Integer); Override;
    procedure BindDoubleV(AParamName: String; AParamValue: Double); Override;
    procedure BindStringV(AParamName: String; AParamValue: String); Override;
    procedure BindTimeStampV(AParamName: String; AParamValue: TTimeStamp); Override;
    procedure BindDateTimeExV(AParamName: String; AParamValue: TFslDateTime); Override;
    procedure BindBlobV(AParamName: String; AParamValue: TBytes); Override;
    procedure BindNullV(AParamName: String); Override;
    function DatabaseSizeV : int64; Override;
    Function TableSizeV(sName : String):int64; Override;
    function SupportsSizingV : Boolean; Override;
  Public
    constructor Create(AOwner : TFslDBManager; Env : TOdbcEnv; AHdbc : TOdbcConnection; AStmt : TOdbcStatement);
    destructor Destroy; override;
  end;

  TFslDBOdbcManager = class (TFslDBManager)
  private
    FPlatform : TFslDBPlatform;
    FDriver : String;
    FServer : String;
    FDatabase : String;
    FUsername : String;
    FPassword : String;
    FTimeout : Integer;
    FAttributes : TStringList;
    FEnv : TOdbcEnv;
  Protected
    function GetDBProvider: TFslDBProvider; Override;
    function ConnectionFactory: TFslDBConnection; Override;
    function GetDBPlatform: TFslDBPlatform; Override;
    function GetDBDetails: String; Override;
    function GetDriver: String; Override;
    procedure init; override;
  public
    constructor Create(AName : String; platform : TFslDBPlatform; AMaxConnCount, ATimeout: Integer; ADriver, AServer, ADatabase, AUsername, APassword: String); overload;
    destructor Destroy; override;
    class function IsSupportAvailable(APlatform : TFslDBPlatform; Var VMsg : String):Boolean; override;
    property Driver : String read FDriver;
    property Server : String read FServer;
    property Database : String read FDatabase;
    property Username : String read FUsername;
    property Password : String read FPassword;
  end;

function StandardODBCDriverName(APlatform: TFslDBPlatform): String;

implementation


constructor TFslDBOdbcConnection.create(AOwner : TFslDBManager; Env : TOdbcEnv; AHdbc : TOdbcConnection; AStmt : TOdbcStatement);
begin
  inherited create(AOwner);
  FEnv := Env;
  FHdbc := AHdbc;
  FStmt := AStmt;
  FASAMode := -1; // transaction isolation level unknown
end;

destructor TFslDBOdbcConnection.destroy;
begin
  FStmt.free;
  FStmt := Nil;
  FHdbc.Disconnect;
  FHdbc.free;
  FHdbc := Nil;
  inherited;
end;

procedure TFslDBOdbcConnection.SetASALevel(iLevel : Integer);
begin
  if FASAMode <> iLevel then
    begin
    FStmt.Sql := 'SET temporary OPTION ISOLATION_LEVEL = '+inttostr(iLevel);
    FStmt.Prepare;
    FStmt.Execute;
    FStmt.Terminate;
    FASAMode := iLevel;
    end;
end;

function TFslDBOdbcConnection.GetColBlobV(ACol: Word): TBytes;
var
  mem : TMemoryStream;
begin
  mem := FStmt.ColMemory[ACol];
  if (mem = nil) or (mem.size = 0) then
    setLength(result, 0)
  else
  begin
    setLength(result, mem.size);
    mem.position := 0;
    mem.read(result[0], mem.size);
  end;
end;

function TFslDBOdbcConnection.GetColCountV: Integer;
begin
  Result := FStmt.ColCount;
end;

function TFslDBOdbcConnection.GetColStringV(ACol: Word): String;
begin
  Result := FStmt.ColString[ACol];
end;

function TFslDBOdbcConnection.GetColIntegerV(ACol: Word): Integer;
begin
  Result := FStmt.ColInteger[ACol];
end;

function TFslDBOdbcConnection.GetColInt64V(ACol: Word): Int64;
begin
  Result := FStmt.ColInt64[ACol];
end;

function TFslDBOdbcConnection.GetColDateTimeExV(ACol: Word): TFslDateTime;
begin
  result := TFslDateTime.fromTS(GetColTimestampV(ACol));
end;

function TFslDBOdbcConnection.GetColDoubleV(ACol: Word): Double;
begin
  Result := FStmt.ColDouble[ACol];
end;

function TFslDBOdbcConnection.GetColNullV(ACol: Word): Boolean;
begin
  Result := FStmt.ColNull[ACol];
end;

function TFslDBOdbcConnection.GetColTimestampV(ACol: Word): FHIR.Support.Utilities.TTimestamp;
begin
  Result := FStmt.ColTimestamp[ACol];
end;

function ConvertColType(ct: SmallInt): TFslDBColumnType;
begin
  case ct of
    SQL_C_GUID,
    SQL_C_DEFAULT:
      Result := ctUnknown;

    SQL_VARCHAR,
    SQL_C_CHAR:
      Result := ctChar;

    SQL_UNICODE_VARCHAR,
    SQL_UNICODE_LONGVARCHAR,
    SQL_UNICODE_CHAR:
      Result := ctUnicode;

    SQL_C_LONG,
    SQL_C_SLONG,
    SQL_C_SHORT:
      Result := ctInteger;

    SQL_FLOAT,       {What a mess - the ODBC drivers are deriving values from 2 different sets of constants}
    SQL_C_FLOAT,
    SQL_C_DOUBLE:
      Result := ctFloat;

    SQL_C_TYPE_DATE,
    SQL_C_TYPE_TIME,
    SQL_C_TYPE_TIMESTAMP,
    SQL_C_INTERVAL_YEAR,
    SQL_C_INTERVAL_MONTH,
    SQL_C_INTERVAL_DAY,
    SQL_C_INTERVAL_HOUR,
    SQL_C_INTERVAL_MINUTE,
    SQL_C_INTERVAL_SECOND,
    SQL_C_INTERVAL_YEAR_TO_MONTH,
    SQL_C_INTERVAL_DAY_TO_HOUR,
    SQL_C_INTERVAL_DAY_TO_MINUTE,
    SQL_C_INTERVAL_DAY_TO_SECOND,
    SQL_C_INTERVAL_HOUR_TO_MINUTE,
    SQL_C_INTERVAL_HOUR_TO_SECOND,
    SQL_C_INTERVAL_MINUTE_TO_SECOND:
      Result := ctDateTime;

    SQL_LONGVARBINARY,
    SQL_C_BINARY:
      Result := ctBlob;

    SQL_C_BIT:
      Result := ctBoolean;

    SQL_BIGINT,
    SQL_C_SBIGINT,
    SQL_C_UBIGINT:
      Result := ctInt64;

    SQL_C_NUMERIC:
      Result := ctNumeric;

    SQL_C_TINYINT,
    SQL_C_SSHORT,
    SQL_C_STINYINT,
    SQL_C_ULONG,
    SQL_C_USHORT,
    SQL_C_UTINYINT:
      Result := ctNumeric;
  else
    Result := ctUnknown
  end;
end;

function TFslDBOdbcConnection.GetColTypeV(ACol: Word): TFslDBColumnType;
begin
  Result := ConvertColType(FStmt.ColType[ACol])
end;

function TFslDBOdbcConnection.GetColKeyV(ACol: Word): Integer;
begin
  Result := GetColInteger(ACol);
end;

function TFslDBOdbcConnection.GetRowsAffectedV: Integer;
begin
  Result := FStmt.RowsAffected;
end;

procedure TFslDBOdbcConnection.RenameTableV(AOldTableName, ANewTableName: String);
begin
  if Owner.Platform = kdbASA then
    FStmt.SQL := 'ALTER TABLE ' + AOldTableName + ' RENAME ' + ANewTableName
  else if Owner.Platform in [kdbDB2, kdbCtree] then
    FStmt.SQL := 'RENAME TABLE ' + AOldTableName + ' TO ' + ANewTableName
  else
    FStmt.SQL := 'sp_rename ' + AOldTableName + ', ' + ANewTableName;
  FStmt.Prepare;
  FStmt.Execute;
  FStmt.Terminate;
end;

procedure TFslDBOdbcConnection.DropTableV(ATableName : String);
begin
  SQL := 'Drop Table ' + ATableName;
  Prepare;
  Execute;
  terminate;
end;

procedure TFslDBOdbcConnection.DropColumnV(ATableName, aColumnName : String);
begin
  SQL := 'ALTER TABLE ' + ATableName+' DROP COLUMN  ' + aColumnName;
  Prepare;
  Execute;
  terminate;
end;

procedure TFslDBOdbcConnection.RenameColumnV(ATableName, AOldColumnName, ANewColumnName: String; AColumnDetails: String = '');
begin
  if Owner.Platform = kdbASA then
    FStmt.SQL := 'ALTER TABLE ' + ATableName + ' RENAME ' + AOldColumnName+' TO '+ANewColumnName
  else
    FStmt.SQL := 'sp_rename ''' + ATableName + '.' + AOldColumnName + ''', ''' + ANewColumnName + '''';
  FStmt.Prepare;
  FStmt.Execute;
  FStmt.Terminate;
end;

procedure TFslDBOdbcConnection.ListTablesV(AList : TStrings);
var
  LCat: TOdbcCatalog;
begin
  LCat := TOdbcCatalog.Create(FENv, FHdbc);
  try
    LCat.hDbc := FHdbc;
    LCat.TableType := [ttTable];
    AList.Assign(LCat.TableNames);
  finally
    LCat.Free;
    end;
end;

procedure TFslDBOdbcConnection.ClearDatabaseV;
var
  LTables: TStringList;
  i: Integer;
  iErrs : Integer;
begin

  LTables := TStringList.Create;
  try
    Repeat
      LTables.Clear;
      iErrs := 0;
      ListTables(LTables);
      for i := 0 to LTables.Count - 1 do
        if SameText(copy(LTables[i], 1, 3), 'sys') or (Pos('_xe_', LTables[i]) > 0) then
          inc(iErrs)
        else
          begin
          try
            SQL := 'Drop Table ' + LTables[i];
            Prepare;
            try
              Execute;
            finally
              terminate;
            end;
        Except
          inc(iErrs);
        End;
      end;
    Until (LTables.Count = iErrs);
  finally
    LTables.free;
    end;
end;

procedure TFslDBOdbcConnection.PrepareV;
begin
  if Owner.Platform = kdbASA then
    begin
    if SQLHasResultSet(SQL) then
      SetASALevel(0)
    else
      SetASALevel(1);
    end;
  FStmt.sql := SQL;
  FStmt.Prepare;
end;

procedure TFslDBOdbcConnection.ExecuteV;
begin
  FStmt.Execute;
end;

procedure TFslDBOdbcConnection.TerminateV;
begin
  FStmt.Terminate;
end;

procedure TFslDBOdbcConnection.StartTransactV;
begin
  FHdbc.StartTransact;
end;

procedure TFslDBOdbcConnection.CommitV;
begin
  FHdbc.Commit;
  FHdbc.EndTransact;
end;

procedure TFslDBOdbcConnection.RollbackV;
begin
  FHdbc.rollback;
  FHdbc.EndTransact;
end;

function TFslDBOdbcConnection.FetchNextV: Boolean;
begin
  Result := FStmt.FetchNext;
end;

function TFslDBOdbcConnection.ColByNameV(AColName: String): Integer;
begin
  Result := FStmt.ColByName(AColName);
end;

function TFslDBOdbcConnection.ColNameV(ACol: Integer): String;
begin
  Result := FStmt.ColNames[ACol-1];
end;

type

  TOdbcBoundString = class (TFslDBBoundParam)
  private
    FString: String;
  end;

  TOdbcBoundInt = class (TFslDBBoundParam)
  private
    FInt: Integer;
  end;

  TOdbcBoundInt64 = class (TFslDBBoundParam)
  private
    FInt64: Int64;
  end;

  TOdbcBoundDate = class (TFslDBBoundParam)
  private
    FDate: FHIR.Support.Utilities.TTimeStamp
  end;

  TOdbcBoundDouble = class (TFslDBBoundParam)
  private
    FDouble: Double
  end;

  TOdbcBoundBytes  = class (TFslDBBoundParam)
  private
    FBytes: TMemoryStream;
  public
    destructor Destroy; override;
  end;

procedure TFslDBOdbcConnection.BindInt64V(AParamName: String; AParamValue: Int64);
var
  LBind: TOdbcBoundInt64;
begin
  LBind := TOdbcBoundInt64.Create;
  LBind.FInt64 := AParamValue;
  FStmt.BindInt64ByName(AParamName, LBind.FInt64);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindIntegerV(AParamName: String; AParamValue: Integer);
var
  LBind: TOdbcBoundInt;
begin
  LBind := TOdbcBoundInt.Create;
  LBind.FInt := AParamValue;
  FStmt.BindIntegerByName(AParamName, LBind.FInt);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindKeyV(AParamName: String; AParamValue: Integer);
begin
  BindInteger(AParamName, AParamValue);
end;

procedure TFslDBOdbcConnection.BindDateTimeExV(AParamName: String; AParamValue: TFslDateTime);
begin
  if AParamValue.null then
    BindNull(AParamName)
  else
    BindTimeStampV(AParamName, AParamValue.TimeStamp);
end;

procedure TFslDBOdbcConnection.BindDoubleV(AParamName: String; AParamValue: Double);
var
  LBind: TOdbcBoundDouble;
begin
  LBind := TOdbcBoundDouble.Create;
  LBind.FDouble := AParamValue;
  FStmt.BindDoubleByName(AParamName, LBind.FDouble);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindStringV(AParamName: String; AParamValue: String);
var
  LBind: TOdbcBoundString;
begin
  LBind := TOdbcBoundString.Create;
  LBind.FString := AParamValue;
  FStmt.BindStringByName(AParamName, LBind.FString);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindTimeStampV(AParamName: String; AParamValue: FHIR.Support.Utilities.TTimeStamp);
var
  LBind: TOdbcBoundDate;
begin
  if Owner.Platform = kdbSybase12 then
    begin
    AParamValue.Fraction := 0;
    end;
  LBind := TOdbcBoundDate.Create;
  LBind.FDate := AParamValue;
  FStmt.BindTimeStampByName(AParamName, LBind.FDate);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindBlobV(AParamName: String; AParamValue: TBytes);
var
  LBind: TOdbcBoundBytes;
begin
  LBind := TOdbcBoundBytes.Create;
  LBind.FBytes := TMemoryStream.Create;
  if Length(AParamValue) > 0 then
  begin
    LBind.FBytes.Write(AParamValue[0], Length(AParamValue));
    LBind.FBytes.Position := 0;;
  end;
  FStmt.BindBinaryByName(AParamName, LBind.FBytes);
  KeepBoundObj(aParamName, LBind);
end;

procedure TFslDBOdbcConnection.BindNullV(AParamName: String);
begin
  FStmt.BindNullByName(AParamName);
end;

Function ReadBytes(value : String):Int64;
var
  v , u : String;
Begin
  StringSplit(value, ' ', v, u);
  if sameText(u, 'KB') Then
    result := trunc(strToFloat(v)*1024)
  else if sameText(u, 'MB') Then
    result := trunc(strToFloat(v)*1024*1024)
  else if sameText(u, 'GB') Then
    result := trunc(strToFloat(v)*1024*1024*1024)
  else raise EDBException.create('unknown unit ' +u);
End;



function TFslDBOdbcConnection.DatabaseSizeMSSQL : int64;
Begin
  try
  SQL := 'sp_spaceused';
  Prepare;
  try
    Execute;
    FetchNext;
    result := ReadBytes(ColStringByName['database_size']);
  Finally
    Terminate;
  End;
  Except
    SQL := 'select sum(reserved_page_count) * 8.0 * 1024 from sys.dm_db_partition_stats';
    Prepare;
    try
      Execute;
      FetchNext;
      result := ColInt64[1];
    Finally
      Terminate;
    End;
  end;
End;

function TFslDBOdbcConnection.TableSizeMSSQL(sName : String) : int64;
Begin
  try
  SQL := 'sp_spaceused '+sName;
  Prepare;
  try
    Execute;
    if not FetchNext Then
      raise EDBException.create('Table "'+sName+'" not found checking size');
    result := ReadBytes(ColStringByName['reserved']);
  Finally
    Terminate;
  End;
  Except
    SQL := 'select sum(reserved_page_count) * 8.0 * 1024 from sys.dm_db_partition_stats, sys.objects where '+
        'sys.dm_db_partition_stats.object_id = sys.objects.object_id and sys.objects.name = '''+sName+''' group by sys.objects.name';
    Prepare;
    try
      Execute;
      FetchNext;
      result := ColInt64[1];
    Finally
      Terminate;
    End;
  End;
End;


function TFslDBOdbcConnection.DatabaseSizeV : int64;
Begin
  case Owner.Platform of
    kdbSQLServer  :
      result := DatabaseSizeMSSQL;
  else // kdbUnknown, kdbSybase11, kdbCtree, kdbAccess, kdbDBIsam, kdbInterbase, kdbDB2, kdbGenericODBC, kdbOracle8, kdbMySQL, kdbASA, kdbSybase12
    raise EDBException.create('This operation (database size) is not supported on this platform ('+DescribePlatform(Owner.Platform) +')');
  End;
End;


Function TFslDBOdbcConnection.TableSizeV(sName : String):int64;
Begin
  case Owner.Platform of
    kdbSQLServer  :
      result := TableSizeMSSQL(sName);
  else // kdbUnknown, kdbSybase11, kdbCtree, kdbAccess, kdbDBIsam, kdbInterbase, kdbDB2, kdbGenericODBC, kdbOracle8, kdbMySQL, kdbASA, kdbSybase12
    raise EDBException.create('This operation (table size) is not supported on this platform ('+DescribePlatform(Owner.Platform) +')');
  End;
End;

function TFslDBOdbcConnection.SupportsSizingV : Boolean;
Begin
  result := Owner.Platform = kdbSQLServer;
End;


function TFslDBOdbcConnection.FetchColumnMetaData(ASrc : TCatalogColumn) : TFslDBColumn;
begin
  result := TFslDBColumn.create;
  try
    result.Name := ASrc.ColumnName;
    result.DataType := ConvertColType(ASrc.DataType);
    result.Length := ASrc.Precision;
    result.Nullable := Asrc.Nullable = SQL_NULLABLE;
  except
    on e:exception do
    begin
      result.free;
      recordStack(e);
      raise;
    end;
  end;
end;

function TFslDBOdbcConnection.FetchIndexMetaData(ACat: TOdbcCatalog; AName : String) : TFslDBIndex;
var
  LFields : TStringList;
  LName : String;
  LIndexUnique : Boolean;
  i : Integer;
begin
  result := TFslDBIndex.create;
  try
    LFields := TStringList.create;
    try
      ACat.ParseIndex(AName, LName, LIndexUnique, LFields);
      result.Name := LName;
      result.Unique := LIndexUnique;
      for i := 0 to LFields.Count - 1 do
        begin
        result.Columns.add(TFslDBColumn.Create(LFields[i]));
        end;
    finally
      LFields.Free;
    end;
  except
    on e:exception do
    begin
      result.free;
      recordStack(e);
      raise;
    end;
  end;
end;

function TFslDBOdbcConnection.FetchRelationshipMetaData(ACat: TOdbcCatalog; aDetails : String) : TFslDBRelationship;
var
  ColumnName, ForeignOwner, ForeignTable, ForeignColumn : String;
begin
  result := TFslDBRelationship.create;
  try
    ACat.ParseForeignKey(aDetails, ColumnName, ForeignOwner, ForeignTable, ForeignColumn);
    result.Column := columnName;
    result.DestTable := ForeignTable;
    result.DestColumn := ForeignColumn;
  except
    on e:exception do
    begin
      result.free;
      recordStack(e);
      raise;
    end;
  end;
end;

function TFslDBOdbcConnection.FetchTableMetaData(ACat: TOdbcCatalog; ASrc : TCatalogTable) : TFslDBTable;
var
  i : integer;
begin
  result := TFslDBTable.create;
  try
    result.Name := ASrc.TableName;
    result.Owner := ASrc.TableOwner;
    result.Description := ASrc.Description;
    result.TableType := TFslDBTableType(ASrc.TableType);
    for i := 0 to ASrc.Columns.itemcount - 1  do
      begin
      result.Columns.add(FetchColumnMetadata(ASrc.Columns[i]));
      end;
    for i := 0 to ASrc.Indexes.Count - 1  do
      begin
      result.Indexes.add(FetchIndexMetadata(ACat, ASrc.Indexes[i]));
      end;
    for i := 0 to ASrc.ForeignKeys.Count - 1 Do
       result.Relationships.Add(FetchRelationshipMetaData(aCat, ASrc.ForeignKeys[i]));

  except
    on e:exception do
    begin
      result.free;
      recordStack(e);
      raise;
    end;
  end;
end;

function TFslDBOdbcConnection.FetchMetaDataV : TFslDBMetaData;
var
  LCat: TOdbcCatalog;
  i : integer;
  LRes : TFslDBMetaData;
begin
  LCat := TOdbcCatalog.Create(FEnv, FHdbc);
  try
    LCat.hDbc := FHdbc;
    LRes := TFslDBMetaData.create;
    try
      for i := 0 to LCat.Tables.ItemCount - 1 do
        begin
        LRes.Tables.Add(FetchTableMetaData(LCat, LCat.Tables[i]))
        end;
      try
        LRes.SupportsProcedures := true;
        for i := 0 to LCat.Procedures.ItemCount - 1 do
          begin
          LRes.Procedures.Add(LCat.Procedures[i].ProcedureName);
          end;
      except
        LRes.SupportsProcedures := False;
      end;
      result := LRes;
      LRes := nil;
    finally
      LRes.Free;
    end;
  finally
    LCat.Free;
    end;
end;

{ TFslDBOdbcManager }

constructor TFslDBOdbcManager.create(AName : String; platform : TFslDBPlatform; AMaxConnCount, ATimeout: Integer; ADriver, AServer, ADatabase, AUsername, APassword: String);
begin
  {$IFDEF FPC}
  if @SQLAllocHandle = nil then
    InitialiseODBC;
  {$ENDIF}
  inherited create(Aname, AMaxConnCount);
  FAttributes := TStringList.create;
  FDriver := ADriver;
  FServer := AServer;
  FDatabase := ADatabase;
  FUsername := AUsername;
  FPassword := APassword;
  FPlatform := platform;
  FTimeout := ATimeout;

  if (FPlatform = kdbAccess) or ((FPlatform = kdbUnknown) and (pos('excel', lowercase(ADriver))> 0)) then
    begin
    FAttributes.add('DBQ=' + FDatabase)
    end
  else if Platform = kdbDB2 then
    begin
    FAttributes.add('DBAlias=' + FDatabase);
    end
  else
    begin
    if FPlatform = kdbCtree then
      begin
      FAttributes.add('Host=' + FServer)
      end
    else if (FPlatform = kdbSybase11) or (FPlatform = kdbSybase12) then
      begin
      FAttributes.add('ServerName=' + FServer)
      end
    else
      begin
      FAttributes.add('Server=' + FServer);
      end;
    FAttributes.add('Database=' + FDatabase);
    end;
end;

function TFslDBOdbcManager.GetDBProvider: TFslDBProvider;
begin
  result := kdbpODBC;
end;


function TFslDBOdbcManager.GetDriver: String;
begin
  result := FDriver;
end;

destructor TFslDBOdbcManager.Destroy;
begin
  FAttributes.free;
  inherited;
  FEnv.Free;
end;

procedure TFslDBOdbcManager.init;
begin
  FEnv := TOdbcEnv.create;
end;

function TFslDBOdbcManager.ConnectionFactory: TFslDBConnection;
var
  LHdbc : TOdbcConnection;
  LStmt : TOdbcStatement;
  i : integer;
begin
  LStmt := nil;
  LHdbc := TOdbcConnection.Create(FEnv);
  try
    LHdbc.Driver := FDriver;
    LHdbc.UserName := FUsername;
    LHdbc.Password := FPassword;
    for i := 0 to FAttributes.Count - 1 do
      begin
      LHdbc.Attributes.Add(FAttributes[i]);
      end;
    If (FUsername = '') Then
    Begin
      LHdbc.Attributes.Add('Integrated Security=SSPI');
      LHdbc.Attributes.Add('Trusted_Connection=Yes');
    End;
    if FTimeout <> 0 then
      LHdbc.LoginTimeOut := FTimeout;
    LHdbc.CursorLib := SQL_CUR_USE_DRIVER;
    LHdbc.Connect;
    LHdbc.InfoPrompt := SQL_DRIVER_NOPROMPT;
    LHdbc.IsolationLevel := SQL_TXN_READ_COMMITTED;
    LStmt := TOdbcStatement.Create(FEnv, LHDBC);
    LStmt.hDbc := LHdbc;
    LStmt.ConcurrencyType := SQL_CONCUR_READ_ONLY;
    LStmt.CursorType := SQL_CURSOR_FORWARD_ONLY;
    if FTimeout <> 0 then
      LStmt.QueryTimeOut := FTimeout;
    result := TFslDBOdbcConnection.create(self, FEnv, LHdbc, LStmt);
  except
    on e:exception do
      begin
      e.Message := 'Error Connecting to "'+DBDetails+'": '+e.Message;
      LStmt.free;
      LHdbc.free;
      recordStack(e);
      raise;
      end;
  end;
end;

function TFslDBOdbcManager.GetDBPlatform: TFslDBPlatform;
begin
  result := FPlatform;
end;

function TFslDBOdbcManager.GetDBDetails: String;
begin
  Result := '\\' + FDriver + '\' + FServer + '\' + FDatabase + ' [' + FUsername + ']';
end;

class function TFslDBOdbcManager.IsSupportAvailable(APlatform : TFslDBPlatform; Var VMsg : String):Boolean;
begin
  result := false;
  VMsg := 'develop this bit';
end;

{ ODBC Utils }


function StandardODBCDriverName(APlatform: TFslDBPlatform): String;
begin
  case APlatform of
    kdbSQLServer: Result := 'SQL Server';
    kdbSybase11: Result := 'Sybase System 11';
    kdbSybase12: Result := 'Sybase ASE ODBC Driver';
    kdbCtree: Result := 'Faircom Ctree';
    kdbAccess: Result := 'Microsoft Access Driver (*.mdb)';
    kdbDBIsam: Result := '---';
    kdbInterbase: Result := 'Intersolv Interbase ODBC Driver (*.gdb)'; // not that we would actually ever use this
    kdbDB2: Result := 'IBM DB2 ODBC DRIVER';
    kdbOracle8: Result := 'Oracle ODBC Driver';
  else
    Result := 'Unknown Platform ' + inttostr(ord(APlatform));
  end;
end;

{ TFslDBOdbcExpress }
                           {
constructor TFslDBOdbcExpress.create(AName : String; AIniFile : TIniFile; ASection : String; AIdent : String = '');
begin
  Create(AName, AIniFile.ReadInteger(ASection, 'MaxConnections', 20), AIniFile.ReadString(ASection, 'DSN', ''),
      AIniFile.ReadString(ASection, 'ODBCDriver', ''), AIniFile.ReadString(ASection, 'Server', ''),
      AIniFile.ReadString(ASection, 'Database', ''),  AIniFile.ReadString(ASection, 'Username', ''),
      AIniFile.ReadString(ASection, 'Password', ''));
end;

constructor TFslDBOdbcExpress.create(AName : String; AMaxConnCount: Integer; ADSN, ADriver, AServer, ADatabase, AUsername, APassword: String);
begin
  inherited create(Aname, AMaxConnCount);
  FAttributes := TIdStringList.create;
  FDsn := ADSN;
  FDriver := ADriver;
  FServer := AServer;
  FDatabase := ADatabase;
  FUsername := AUsername;
  FPassword := APassword;
  FPlatform := RecogniseDriver(ADriver);

  if FPlatform = kdbAccess then
    begin
    FAttributes.add('DBQ=' + FDatabase)
    end
  else
    begin
    if FPlatform = kdbSybase11 then
      begin
      FAttributes.add('ServerName=' + FServer)
      end
    else
      begin
      FAttributes.add('Server=' + FServer);
      end;
    FAttributes.add('Database=' + FDatabase);
    end;
end;
                            }

{ TOdbcBoundBytes }

destructor TOdbcBoundBytes.Destroy;
begin
  FBytes.Free;
  inherited;
end;

end.



