unit FHIR.Tests.SearchSyntax;

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

{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}

interface

uses
  SysUtils, Classes,
  {$IFDEF FPC} FPCUnit, TestRegistry, {$ELSE} DUnitX.TestFramework, {$ENDIF}
  FHIR.Support.Base,
  FHIR.Server.SearchSyntax;

{$IFNDEF FPC}
type
  [TextFixture]
  TFSFilterParserTests = class (TObject)
  private
    procedure test(expression: String);
  public
    [TestCase] procedure testString;
    [TestCase] procedure testToken;
    [TestCase] procedure testURL;
    [TestCase] procedure testDate;
    [TestCase] procedure testSubsumes;
    [TestCase] procedure testSubsumesId;
    [TestCase] procedure testFilter;
    [TestCase] procedure testFilter2;
    [TestCase] procedure testParentheses;
    [TestCase] procedure testPrecedence;
  end;
{$ENDIF}

implementation

{$IFNDEF FPC}
{ TFSFilterParserTests }

procedure TFSFilterParserTests.test(expression: String);
var
  filter : TFSFilter;
begin
  filter := TFSFilterParser.parse(expression);
  Assert.IsNotNull(filter, 'parsing failed - returned nil');
  if (filter <> nil) then
    Assert.IsTrue(filter.ToString = expression, 'Expression mismatch: found "'+filter.ToString+'" expecting "'+expression+'"');
  filter.Free;
end;

procedure TFSFilterParserTests.testDate;
begin
  test('date ge 2010-10-10');
end;

procedure TFSFilterParserTests.testFilter;
begin
  test('related[type eq comp].target pr false');
end;

procedure TFSFilterParserTests.testFilter2;
begin
  test('related[type eq comp and this lt that].target pr false');
end;

procedure TFSFilterParserTests.testParentheses;
begin
  test('(userName eq "bjensen") or (code sb snomed|diabetes)');
end;

procedure TFSFilterParserTests.testPrecedence;
begin
  test('this eq that and this1 eq that1');
end;

procedure TFSFilterParserTests.testString;
begin
  test('userName eq "bjensen"');
end;

procedure TFSFilterParserTests.testSubsumes;
begin
  test('code sb snomed|diabetes');
end;

procedure TFSFilterParserTests.testSubsumesId;
begin
  test('code ss snomed|diabetes-NIDDM-stage-1');
end;

procedure TFSFilterParserTests.testToken;
begin
  test('name eq loinc|1234');
end;

procedure TFSFilterParserTests.testURL;
begin
  test('name in http://loinc.org/vs/LP234');
end;

initialization
  TDUnitX.RegisterTestFixture(TFSFilterParserTests);
{$ENDIF}
end.
