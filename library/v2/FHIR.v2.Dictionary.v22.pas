Unit FHIR.V2.Dictionary.v22;

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

{ WARNING: This is generated code. Do not make any changes here }
{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}

Interface

Uses
  FHIR.V2.Dictionary;

procedure Definitions22LoadTables(oTables : THL7V2ModelTables);
procedure Definitions22LoadComponents(oComponents : THL7V2ModelComponents);
procedure Definitions22LoadDataElements(oDataElements : THL7V2ModelDataElements);
procedure Definitions22LoadDataTypes(oDataTypes : THL7V2ModelDataTypes);
procedure Definitions22LoadEvents(oEvents : THL7V2ModelEvents);
procedure Definitions22LoadStructures(oStructures : THL7V2ModelStructures; oComponents : THL7V2ModelComponents);
procedure Definitions22LoadSegments(oSegments : THL7V2ModelSegments);
procedure Definitions22LoadMessageStructures(oStructures : THL7V2ModelMessageStructures);

Implementation

procedure LoadTable0(oTables : THL7V2ModelTables);
Begin
  oTables.Add(0, 'no table');
End;


procedure LoadTable1(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(1, 'SEX');
    oTable.Items.Add(1, 'F', 'Female');
    oTable.Items.Add(2, 'M', 'Male');
    oTable.Items.Add(3, 'O', 'Other');
    oTable.Items.Add(4, 'U', 'Unknown');
End;


procedure LoadTable2(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(2, 'MARITAL STATUS');
    oTable.Items.Add(1, 'A', 'Separated');
    oTable.Items.Add(2, 'D', 'Divorced');
    oTable.Items.Add(3, 'M', 'Married');
    oTable.Items.Add(4, 'S', 'Single');
    oTable.Items.Add(5, 'W', 'Widowed');
End;


procedure LoadTable3(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(3, 'EVENT TYPE CODE');
    oTable.Items.Add(1, 'A01', 'Admit a patient');
    oTable.Items.Add(2, 'A02', 'Transfer a patient');
    oTable.Items.Add(3, 'A03', 'Discharge a patient');
    oTable.Items.Add(4, 'A04', 'Register a patient');
    oTable.Items.Add(5, 'A05', 'Pre-admit a Patient');
    oTable.Items.Add(6, 'A06', 'Transfer an outpatient to inpatient');
    oTable.Items.Add(7, 'A07', 'Transfer an inpatient to outpatient');
    oTable.Items.Add(8, 'A08', 'Update patient information');
    oTable.Items.Add(9, 'A09', 'Patient departing');
    oTable.Items.Add(10, 'A10', 'Patient arriving');
    oTable.Items.Add(11, 'A11', 'Cancel admit');
    oTable.Items.Add(12, 'A12', 'Cancel transfer');
    oTable.Items.Add(13, 'A13', 'Cancel discharge');
    oTable.Items.Add(14, 'A14', 'Pending admit');
    oTable.Items.Add(15, 'A15', 'Pending transfer');
    oTable.Items.Add(16, 'A16', 'Pending discharge');
    oTable.Items.Add(17, 'A17', 'Swap patients');
    oTable.Items.Add(18, 'A18', 'Merge patient information');
    oTable.Items.Add(19, 'A19', 'Patient query');
    oTable.Items.Add(20, 'A20', 'Bed Status Update');
    oTable.Items.Add(21, 'A21', 'Leave of absence - out (leaving)');
    oTable.Items.Add(22, 'A22', 'Leave of absence - in (returning)');
    oTable.Items.Add(23, 'A23', 'Delete a patient record');
    oTable.Items.Add(24, 'A24', 'Link patient information');
    oTable.Items.Add(25, 'A25', 'Cancel pending discharge');
    oTable.Items.Add(26, 'A26', 'Cancel pending transfer');
    oTable.Items.Add(27, 'A27', 'Cancel pending admit');
    oTable.Items.Add(28, 'A28', 'Add person information');
    oTable.Items.Add(29, 'A29', 'Delete person information');
    oTable.Items.Add(30, 'A30', 'Merge Patient information');
    oTable.Items.Add(31, 'A31', 'Update person information');
    oTable.Items.Add(32, 'A32', 'Cancel patient arriving');
    oTable.Items.Add(33, 'A33', 'Cancel patient departing');
    oTable.Items.Add(34, 'A34', 'Merge patient information - patient ID only');
    oTable.Items.Add(35, 'A35', 'Merge patient information - account number only');
    oTable.Items.Add(36, 'A36', 'Merge patient information - patient ID and account number');
    oTable.Items.Add(37, 'A37', 'Unlink patient information');
    oTable.Items.Add(38, 'M01', 'Master file not otherwise specified (for backwards compatibility only)');
    oTable.Items.Add(39, 'M02', 'Master file - Staff Practioner');
    oTable.Items.Add(40, 'M03', 'Master file - test / observation');
    oTable.Items.Add(41, 'O01', 'Order message');
    oTable.Items.Add(42, 'O02', 'Order response');
    oTable.Items.Add(43, 'P01', 'Add and Update Patient Accounts');
    oTable.Items.Add(44, 'P02', 'Purge Patient Accounts');
    oTable.Items.Add(45, 'P03', 'Post detail financial transaction');
    oTable.Items.Add(46, 'P04', 'Generate bill and accounts receivable statements');
    oTable.Items.Add(47, 'Q01', 'Immediate access');
    oTable.Items.Add(48, 'Q02', 'Deferred access');
    oTable.Items.Add(49, 'Q03', 'Deferred response to query');
    oTable.Items.Add(50, 'Q05', 'Unsolicited display update');
    oTable.Items.Add(51, 'R01', 'Unsolicited transmission of requested observation');
    oTable.Items.Add(52, 'R02', 'Query for results of observation');
    oTable.Items.Add(53, 'R03', 'Display-oriented results (query / unsolicited update)');
    oTable.Items.Add(54, 'R04', 'Response to query / transmission of requested observation');
End;


procedure LoadTable4(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(4, 'PATIENT CLASS');
    oTable.Items.Add(6, 'B', 'Obstetrics');
    oTable.Items.Add(1, 'E', 'Emergency');
    oTable.Items.Add(2, 'I', 'Inpatient');
    oTable.Items.Add(3, 'O', 'Outpatient');
    oTable.Items.Add(4, 'P', 'Preadmit');
    oTable.Items.Add(5, 'R', 'Recurring Patient');
    oTable.Items.Add(9, 'TK', '');
    oTable.Items.Add(8, 'TS', 'teilstation'#228're Behandlung');
    oTable.Items.Add(7, 'VS', 'vollstation'#228're Behandlung');
End;


procedure LoadTable5(oTables : THL7V2ModelTables);
Begin
  oTables.Add(5, 'RACE');
End;


procedure LoadTable6(oTables : THL7V2ModelTables);
Begin
  oTables.Add(6, 'RELIGION');
End;


procedure LoadTable7(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(7, 'ADMISSION TYPE');
    oTable.Items.Add(1, 'A', 'Accident');
    oTable.Items.Add(2, 'E', 'Emergency');
    oTable.Items.Add(3, 'L', 'Labor and Delivery');
    oTable.Items.Add(4, 'R', 'Routine');
End;


procedure LoadTable8(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(8, 'ACKNOWLEDGMENT CODE');
    oTable.Items.Add(1, 'AA', 'Application accept (original mode) / Application acknowledgement: accept (enhanced mode)');
    oTable.Items.Add(2, 'AE', 'Application error (original mode) / Application acknowledgement: error (enhanced mode)');
    oTable.Items.Add(3, 'AR', 'Application reject (original mode) / Application acknowledgement: reject (enhanced mode)');
    oTable.Items.Add(4, 'CA', 'Enhanced mode:  Application acknowledgement:  Commit Accept');
    oTable.Items.Add(5, 'CE', 'Enhanced mode:  Application acknowledgement:  Commit Error');
    oTable.Items.Add(6, 'CR', 'Enhanced mode:  Application acknowledgement:  Commit Reject');
End;


procedure LoadTable9(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(9, 'AMBULATORY STATUS');
    oTable.Items.Add(1, 'A0', 'No functional limitations');
    oTable.Items.Add(2, 'A1', 'Ambulates with assistive device');
    oTable.Items.Add(3, 'A2', 'Wheelchair / stretcher bound');
    oTable.Items.Add(4, 'A3', 'Comatose; non-responsive');
    oTable.Items.Add(5, 'A4', 'Disoriented');
    oTable.Items.Add(6, 'A5', 'Vision impaired');
    oTable.Items.Add(7, 'A6', 'Hearing impaired');
    oTable.Items.Add(8, 'A7', 'Speech impaired');
    oTable.Items.Add(9, 'A8', 'Nonenglish speaking');
    oTable.Items.Add(10, 'A9', 'Functional level unknown');
    oTable.Items.Add(11, 'B1', 'Oxygen Therapy');
    oTable.Items.Add(12, 'B2', 'Special equipment (tubes, Ivs, catheters)');
    oTable.Items.Add(13, 'B3', 'Amputee');
    oTable.Items.Add(14, 'B4', 'Mastectomy');
    oTable.Items.Add(15, 'B5', 'Paraplegic');
    oTable.Items.Add(16, 'B6', 'Pregnant');
End;


procedure LoadTable10(oTables : THL7V2ModelTables);
Begin
  oTables.Add(10, 'PHYSICIAN ID');
End;


procedure LoadTable11(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(11, 'CHARGING SYSTEM');
    oTable.Items.Add(1, 'R', '');
    oTable.Items.Add(2, 'S', 'System that sent the order');
End;


procedure LoadTable12(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(12, 'STOCK LOCATION');
    oTable.Items.Add(1, 'AN', 'Filled from ancillary department stock');
    oTable.Items.Add(2, 'FL', 'Filled from floor stock');
End;


procedure LoadTable13(oTables : THL7V2ModelTables);
Begin
  oTables.Add(13, 'CHARGEABLE OR NON-CHARGEABLE');
End;


procedure LoadTable14(oTables : THL7V2ModelTables);
Begin
  oTables.Add(14, 'HEIGHT UNIT OF MEASURE');
End;


procedure LoadTable15(oTables : THL7V2ModelTables);
Begin
  oTables.Add(15, 'WEIGHT UNIT OF MEASURE');
End;


procedure LoadTable16(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(16, 'ISOLATION');
    oTable.Items.Add(1, '0', '');
    oTable.Items.Add(2, '1', 'Blood and Needle Precautions');
    oTable.Items.Add(3, '2', 'Enteric Precautions');
    oTable.Items.Add(4, '3', 'Neutropenic Precautions');
    oTable.Items.Add(5, '4', 'Pregnant Women Precautions');
    oTable.Items.Add(6, '5', 'Respiratory Isolation');
    oTable.Items.Add(7, '6', 'Secretion / Excretion Precautions');
    oTable.Items.Add(8, '7', 'Strict Isolation');
    oTable.Items.Add(9, '8', 'Wound and skin Precautions');
    oTable.Items.Add(10, '9', 'Precautions');
End;


procedure LoadTable17(oTables : THL7V2ModelTables);
Begin
  oTables.Add(17, 'TRANSACTION TYPE');
End;


procedure LoadTable18(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(18, 'PATIENT TYPE');
    oTable.Items.Add(8, 'B', '');
    oTable.Items.Add(1, 'E', '');
    oTable.Items.Add(2, 'F', '');
    oTable.Items.Add(7, 'G', '');
    oTable.Items.Add(6, 'J', '');
    oTable.Items.Add(5, 'K', '');
    oTable.Items.Add(3, 'N', '');
    oTable.Items.Add(9, 'P', '');
    oTable.Items.Add(4, 'S', '');
End;


procedure LoadTable19(oTables : THL7V2ModelTables);
Begin
  oTables.Add(19, 'ANESTHESIA CODE');
End;


procedure LoadTable20(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(20, 'UNUSED TABLE');
    oTable.Items.Add(1, '1', 'Moderate Manifestation');
    oTable.Items.Add(2, '2', 'Moderate Manifestation');
    oTable.Items.Add(3, '3', 'Major Manifestation');
    oTable.Items.Add(4, '4', 'Catastrophic Manifestation');
End;


procedure LoadTable21(oTables : THL7V2ModelTables);
Begin
  oTables.Add(21, 'BAD DEBT AGENCY CODE');
End;


procedure LoadTable22(oTables : THL7V2ModelTables);
Begin
  oTables.Add(22, 'BILLING STATUS');
End;


procedure LoadTable23(oTables : THL7V2ModelTables);
Begin
  oTables.Add(23, 'ADMIT SOURCE');
End;


procedure LoadTable24(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(24, 'FEE SCHEDULE');
    oTable.Items.Add(0, '...', '...');
End;


procedure LoadTable25(oTables : THL7V2ModelTables);
Begin
  oTables.Add(25, 'CONFIRMATION CODE');
End;


procedure LoadTable26(oTables : THL7V2ModelTables);
Begin
  oTables.Add(26, 'ORDER EVENT TYPE');
End;


procedure LoadTable27(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(27, 'PRIORITY (COMPONENT 6 QTY/TIMING[735])');
    oTable.Items.Add(2, 'A', 'As soon as possible (a priority lower than stat)');
    oTable.Items.Add(4, 'P', 'Preoperative (to be done prior to surgery)');
    oTable.Items.Add(3, 'R', 'Routine (default)');
    oTable.Items.Add(1, 'S', 'Stat (do immediately)');
    oTable.Items.Add(5, 'T', 'Timing critical (do as near as possible to requested time)');
End;


procedure LoadTable28(oTables : THL7V2ModelTables);
Begin
  oTables.Add(28, 'UNUSED TABLE');
End;


procedure LoadTable29(oTables : THL7V2ModelTables);
Begin
  oTables.Add(29, 'UNIT OF MEASURE');
End;


procedure LoadTable30(oTables : THL7V2ModelTables);
Begin
  oTables.Add(30, 'FREQUENCY CODE');
End;


procedure LoadTable31(oTables : THL7V2ModelTables);
Begin
  oTables.Add(31, 'BLOOD BANK - COMPONENT TYPE');
End;


procedure LoadTable32(oTables : THL7V2ModelTables);
Begin
  oTables.Add(32, 'CHARGE/PRICE INDICATOR');
End;


procedure LoadTable33(oTables : THL7V2ModelTables);
Begin
  oTables.Add(33, 'ROUTE');
End;


procedure LoadTable34(oTables : THL7V2ModelTables);
Begin
  oTables.Add(34, 'SITE ADMINISTERED');
End;


procedure LoadTable35(oTables : THL7V2ModelTables);
Begin
  oTables.Add(35, 'UNIT OF MEASURE FOR THE SOLUTION RATE');
End;


procedure LoadTable36(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(36, 'UNITS OF MEASURE - ISO528,1977');
    oTable.Items.Add(1, 'BT', 'Bottle');
    oTable.Items.Add(2, 'EA', 'Each');
    oTable.Items.Add(3, 'GM', 'Grams');
    oTable.Items.Add(4, 'KG', 'Kilograms');
    oTable.Items.Add(5, 'LB', 'Pounds');
    oTable.Items.Add(12, 'MEQ', 'Milliequivalent');
    oTable.Items.Add(6, 'MG', 'Milligrams');
    oTable.Items.Add(7, 'ML', 'Milliliters');
    oTable.Items.Add(8, 'OZ', 'Ounces');
    oTable.Items.Add(9, 'SC', 'Square centimeters');
    oTable.Items.Add(10, 'TB', 'Tablet');
    oTable.Items.Add(11, 'VL', 'Vial');
End;


procedure LoadTable37(oTables : THL7V2ModelTables);
Begin
  oTables.Add(37, 'DRUG DOSE UNIT OF MEASURE');
End;


procedure LoadTable38(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(38, 'ORDER STATUS');
    oTable.Items.Add(1, 'CA', 'Order was canceled');
    oTable.Items.Add(2, 'CM', 'Order is completed');
    oTable.Items.Add(3, 'DC', 'Order was discontinued');
    oTable.Items.Add(4, 'ER', 'Error - order not found');
    oTable.Items.Add(5, 'HD', 'Order is on hold');
    oTable.Items.Add(6, 'IP', 'In process - unspecified');
    oTable.Items.Add(7, 'RP', 'Order has been replaced');
    oTable.Items.Add(8, 'SC', 'In process - scheduled');
End;


procedure LoadTable39(oTables : THL7V2ModelTables);
Begin
  oTables.Add(39, 'UNUSED TABLE');
End;


procedure LoadTable40(oTables : THL7V2ModelTables);
Begin
  oTables.Add(40, 'UNUSED TABLE');
End;


procedure LoadTable41(oTables : THL7V2ModelTables);
Begin
  oTables.Add(41, 'VOLUME UNIT OF MEASURE');
End;


procedure LoadTable42(oTables : THL7V2ModelTables);
Begin
  oTables.Add(42, 'INS. COMPANY PLAN CODE');
End;


procedure LoadTable43(oTables : THL7V2ModelTables);
Begin
  oTables.Add(43, 'CONDITION CODE');
End;


procedure LoadTable44(oTables : THL7V2ModelTables);
Begin
  oTables.Add(44, 'CONTRACT CODE');
End;


procedure LoadTable45(oTables : THL7V2ModelTables);
Begin
  oTables.Add(45, 'COURTESY CODE');
End;


procedure LoadTable46(oTables : THL7V2ModelTables);
Begin
  oTables.Add(46, 'CREDIT RATING');
End;


procedure LoadTable47(oTables : THL7V2ModelTables);
Begin
  oTables.Add(47, 'DANGER CODE');
End;


procedure LoadTable48(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(48, 'WHAT SUBJECT FILTER');
    oTable.Items.Add(1, 'ADV', 'Advice / diagnosis');
    oTable.Items.Add(2, 'ANU', 'Nursing unit lookup (returns patients in beds, excluding empty beds)');
    oTable.Items.Add(7, 'APA', 'Account number query, return matching visit');
    oTable.Items.Add(6, 'APM', 'Medical record number query, returns visits for a medical record number');
    oTable.Items.Add(3, 'APN', 'Patient name lookup');
    oTable.Items.Add(4, 'APP', 'Physician lookup');
    oTable.Items.Add(5, 'ARN', 'Nursing unit lookup (returns patients in beds, including empty beds)');
    oTable.Items.Add(8, 'CAN', 'Cancel (used to cancel a query)');
    oTable.Items.Add(9, 'DEM', 'Demographics');
    oTable.Items.Add(10, 'FIN', 'Financial');
    oTable.Items.Add(26, 'MFQ', 'Master file query');
    oTable.Items.Add(11, 'MRI', 'Most recent inpatient');
    oTable.Items.Add(12, 'MRO', 'Most recent outpatient');
    oTable.Items.Add(13, 'NCK', 'Network clock');
    oTable.Items.Add(14, 'NSC', 'Network status change');
    oTable.Items.Add(15, 'NST', 'Network statistic');
    oTable.Items.Add(16, 'ORD', 'Order');
    oTable.Items.Add(17, 'OTH', 'Other');
    oTable.Items.Add(18, 'PRO', 'Procedure');
    oTable.Items.Add(20, 'RAR', 'Pharmacy administration information');
    oTable.Items.Add(22, 'RDR', 'Pharmacy dispense information');
    oTable.Items.Add(21, 'RER', 'Pharmacy encoded order information');
    oTable.Items.Add(19, 'RES', 'Result');
    oTable.Items.Add(23, 'RGR', 'Pharmacy give information');
    oTable.Items.Add(24, 'ROR', 'Pharmacy prescription information');
    oTable.Items.Add(25, 'STA', 'Status');
End;


procedure LoadTable49(oTables : THL7V2ModelTables);
Begin
  oTables.Add(49, 'DEPARTMENT CODE');
End;


procedure LoadTable50(oTables : THL7V2ModelTables);
Begin
  oTables.Add(50, 'ACCIDENT CODE');
End;


procedure LoadTable51(oTables : THL7V2ModelTables);
Begin
  oTables.Add(51, 'DIAGNOSIS CODE');
End;


procedure LoadTable52(oTables : THL7V2ModelTables);
Begin
  oTables.Add(52, 'DIAGNOSIS TYPE');
End;


procedure LoadTable53(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(53, 'DIAGNOSIS CODING METHOD');
    oTable.Items.Add(1, 'I9', 'ICD9');
End;


procedure LoadTable55(oTables : THL7V2ModelTables);
Begin
  oTables.Add(55, 'DRG CODE');
End;


procedure LoadTable56(oTables : THL7V2ModelTables);
Begin
  oTables.Add(56, 'DRG GROUPER REVIEW CODE');
End;


procedure LoadTable57(oTables : THL7V2ModelTables);
Begin
  oTables.Add(57, 'DRUG CODE');
End;


procedure LoadTable58(oTables : THL7V2ModelTables);
Begin
  oTables.Add(58, 'UNUSED TABLE');
End;


procedure LoadTable59(oTables : THL7V2ModelTables);
Begin
  oTables.Add(59, 'CONSENT CODE');
End;


procedure LoadTable60(oTables : THL7V2ModelTables);
Begin
  oTables.Add(60, 'ERROR CODE');
End;


procedure LoadTable61(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(61, 'CHECK DIGIT SCHEME');
    oTable.Items.Add(1, 'M10', 'Mod 10 algorithm');
    oTable.Items.Add(2, 'M11', 'Mod 11 algorithm');
End;


procedure LoadTable62(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(62, 'EVENT REASON');
    oTable.Items.Add(1, '01', 'Patient request');
    oTable.Items.Add(2, '02', 'Physician order');
    oTable.Items.Add(3, '03', 'Census management');
End;


procedure LoadTable63(oTables : THL7V2ModelTables);
Begin
  oTables.Add(63, 'RELATIONSHIP');
End;


procedure LoadTable64(oTables : THL7V2ModelTables);
Begin
  oTables.Add(64, 'FINANCIAL CLASS');
End;


procedure LoadTable65(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(65, 'ACTION CODE');
    oTable.Items.Add(1, 'A', 'Add ordered tests to the existing specimen');
    oTable.Items.Add(2, 'G', 'Generated order / reflex order');
    oTable.Items.Add(3, 'L', 'Lab to obtain specimen from patient');
    oTable.Items.Add(4, 'O', 'Specimen obtained by service other than Lab');
    oTable.Items.Add(5, 'P', 'Pending specimen - order sent prior to delivery');
    oTable.Items.Add(6, 'R', 'Revised order');
    oTable.Items.Add(7, 'S', 'Schedule the tests specified below');
End;


procedure LoadTable66(oTables : THL7V2ModelTables);
Begin
  oTables.Add(66, 'EMPLOYMENT STATUS');
End;


procedure LoadTable67(oTables : THL7V2ModelTables);
Begin
  oTables.Add(67, 'UNUSED TABLE');
End;


procedure LoadTable68(oTables : THL7V2ModelTables);
Begin
  oTables.Add(68, 'GUARANTOR TYPE');
End;


procedure LoadTable69(oTables : THL7V2ModelTables);
Begin
  oTables.Add(69, 'HOSPITAL SERVICE');
End;


procedure LoadTable70(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(70, 'SOURCE OF SPECIMEN');
    oTable.Items.Add(5, 'ABLD', 'Arterial blood');
    oTable.Items.Add(1, 'ABS', 'Abcess');
    oTable.Items.Add(2, 'AMN', 'Amniotic fluid');
    oTable.Items.Add(3, 'ASP', 'Aspirate');
    oTable.Items.Add(6, 'BBL', 'Blood bag');
    oTable.Items.Add(96, 'BDY', 'Whole body');
    oTable.Items.Add(95, 'BLD', 'Whole blood');
    oTable.Items.Add(7, 'BON', 'Bone');
    oTable.Items.Add(4, 'BPH', 'Basophils');
    oTable.Items.Add(10, 'BRN', 'Burn');
    oTable.Items.Add(9, 'BRO', 'Bronchial');
    oTable.Items.Add(8, 'BRTH', 'Breath (use EXHLD)');
    oTable.Items.Add(11, 'CALC', 'Calculus (=Stone)');
    oTable.Items.Add(19, 'CBLD', 'Cord blood');
    oTable.Items.Add(12, 'CDM', 'Cardiac muscle');
    oTable.Items.Add(20, 'CNJT', 'Conjunctiva');
    oTable.Items.Add(13, 'CNL', 'Cannula');
    oTable.Items.Add(18, 'COL', 'Colostrum');
    oTable.Items.Add(15, 'CSF', 'Cerebral spinal fluid');
    oTable.Items.Add(14, 'CTP', 'Catheter tip');
    oTable.Items.Add(21, 'CUR', 'Curettage');
    oTable.Items.Add(16, 'CVM', 'Cervical mucus');
    oTable.Items.Add(17, 'CVX', 'Cervix');
    oTable.Items.Add(22, 'CYST', 'Cyst');
    oTable.Items.Add(23, 'DRN', 'Drain');
    oTable.Items.Add(24, 'EAR', 'Ear');
    oTable.Items.Add(25, 'ELT', 'Electrode');
    oTable.Items.Add(26, 'ENDC', 'Endocardium');
    oTable.Items.Add(27, 'ENDM', 'Endometrium');
    oTable.Items.Add(28, 'EOS', 'Eosinophils');
    oTable.Items.Add(30, 'FIB', 'Fibroblasts');
    oTable.Items.Add(32, 'FIST', 'Fistula');
    oTable.Items.Add(31, 'FLT', 'Filter');
    oTable.Items.Add(33, 'FLU', 'Body fluid, unsp');
    oTable.Items.Add(34, 'GAST', 'Gastric fluid/contents');
    oTable.Items.Add(35, 'GEN', 'Genital');
    oTable.Items.Add(36, 'GENC', 'Genital cervix');
    oTable.Items.Add(37, 'GENL', 'Genital lochia');
    oTable.Items.Add(38, 'GENV', 'Genital vaginal');
    oTable.Items.Add(39, 'HAR', 'Hair');
    oTable.Items.Add(40, 'IT', 'Intubation tube');
    oTable.Items.Add(41, 'LAM', 'Lamella');
    oTable.Items.Add(43, 'LN', 'Line');
    oTable.Items.Add(44, 'LNA', 'Line arterial');
    oTable.Items.Add(45, 'LNV', 'Line venous');
    oTable.Items.Add(46, 'LYM', 'Lymphocytes');
    oTable.Items.Add(47, 'MAC', 'Macrophages');
    oTable.Items.Add(48, 'MAR', 'Marrow');
    oTable.Items.Add(50, 'MBLD', 'Menstrual blood');
    oTable.Items.Add(49, 'MEC', 'Meconium');
    oTable.Items.Add(52, 'MILK', 'Breast milk');
    oTable.Items.Add(51, 'MLK', 'Milk');
    oTable.Items.Add(53, 'NAIL', 'Nail');
    oTable.Items.Add(54, 'NOS', 'Nose (nasal passage)');
    oTable.Items.Add(55, 'ORH', 'Other');
    oTable.Items.Add(57, 'PER', 'Peritoneum');
    oTable.Items.Add(59, 'PLAS', 'Plasma');
    oTable.Items.Add(60, 'PLB', 'Plasma bag');
    oTable.Items.Add(58, 'PLC', 'Placenta');
    oTable.Items.Add(61, 'PLR', 'Pleural fluid (thoracentesis fld)');
    oTable.Items.Add(62, 'PMN', 'Polymorphonuclear neutrophils');
    oTable.Items.Add(56, 'PRT', 'Peritoneal fluid / ascites');
    oTable.Items.Add(63, 'PUS', 'Pus');
    oTable.Items.Add(29, 'RBC', 'Erythrocytes');
    oTable.Items.Add(64, 'SAL', 'Saliva');
    oTable.Items.Add(65, 'SEM', 'Seminal fluid');
    oTable.Items.Add(66, 'SER', 'Serum');
    oTable.Items.Add(68, 'SKM', 'Skeletal muscle');
    oTable.Items.Add(67, 'SKN', 'Skin');
    oTable.Items.Add(76, 'SNV', 'Synovial fluid (Joint fluid)');
    oTable.Items.Add(69, 'SPRM', 'Spermatozoa');
    oTable.Items.Add(70, 'SPT', 'Sputum');
    oTable.Items.Add(71, 'SPTC', 'Sputum - coughed');
    oTable.Items.Add(72, 'SPTT', 'Sputum - tracheal aspirate');
    oTable.Items.Add(74, 'STL', 'Stool');
    oTable.Items.Add(73, 'STON', 'Stone (use CALC)');
    oTable.Items.Add(75, 'SWT', 'Sweat');
    oTable.Items.Add(77, 'TEAR', 'Tears');
    oTable.Items.Add(79, 'THRB', 'Thrombocyte (platelet)');
    oTable.Items.Add(78, 'THRT', 'Throat');
    oTable.Items.Add(81, 'TISB', 'Tissue bone marrow');
    oTable.Items.Add(86, 'TISC', 'Tissue curettage');
    oTable.Items.Add(82, 'TISG', 'Tissue gall bladder');
    oTable.Items.Add(83, 'TISL', 'Tissue lung');
    oTable.Items.Add(84, 'TISP', 'Tissue peritoneum');
    oTable.Items.Add(87, 'TISPL', 'Tissue placenta');
    oTable.Items.Add(80, 'TISS', 'Tissue');
    oTable.Items.Add(85, 'TISU', 'Tissue ulcer');
    oTable.Items.Add(88, 'ULC', 'Ulcer');
    oTable.Items.Add(89, 'UMB', 'Umbilical Blood');
    oTable.Items.Add(91, 'UR', 'Urine');
    oTable.Items.Add(92, 'URC', 'Urine clean catch');
    oTable.Items.Add(93, 'URT', 'Urine catheter');
    oTable.Items.Add(90, 'URTH', 'Urethra');
    oTable.Items.Add(94, 'VOM', 'Vomitus');
    oTable.Items.Add(42, 'WBC', 'Leukocytes');
    oTable.Items.Add(97, 'WICK', 'Wick');
    oTable.Items.Add(98, 'WND', 'Wound');
    oTable.Items.Add(99, 'WNDA', 'Wound abscess');
    oTable.Items.Add(101, 'WNDD', 'Wound drainage');
    oTable.Items.Add(100, 'WNDE', 'Wound exudate');
End;


procedure LoadTable71(oTables : THL7V2ModelTables);
Begin
  oTables.Add(71, 'UNUSED TABLE');
End;


procedure LoadTable72(oTables : THL7V2ModelTables);
Begin
  oTables.Add(72, 'INS. PLAN ID');
End;


procedure LoadTable73(oTables : THL7V2ModelTables);
Begin
  oTables.Add(73, 'INTEREST RATE CODE');
End;


procedure LoadTable74(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(74, 'DIAGNOSTIC SERVICE SECTION ID');
    oTable.Items.Add(1, 'AU', 'Audiology');
    oTable.Items.Add(2, 'BG', 'Blood gases');
    oTable.Items.Add(3, 'BLB', 'Blood bank');
    oTable.Items.Add(7, 'CH', 'Chemistry');
    oTable.Items.Add(8, 'CP', 'Cytopathology');
    oTable.Items.Add(6, 'CT', 'CAT scan');
    oTable.Items.Add(5, 'CTH', 'Cardiac catheterization');
    oTable.Items.Add(4, 'CUS', 'Cardiac Ultrasound');
    oTable.Items.Add(9, 'EC', 'Electrocardiac (e.g., EKG, EEC, Holter)');
    oTable.Items.Add(10, 'EN', 'Electroneuro (EEG, EMG)');
    oTable.Items.Add(11, 'HM', 'Hematology');
    oTable.Items.Add(12, 'IMM', 'Immunology');
    oTable.Items.Add(13, 'MB', 'Microbiology');
    oTable.Items.Add(14, 'MCB', 'Mycobacteriology');
    oTable.Items.Add(15, 'MYC', 'Mycology');
    oTable.Items.Add(17, 'NMR', 'Nuclear magnetic resonance');
    oTable.Items.Add(16, 'NMS', 'Nuclear medicine scan');
    oTable.Items.Add(18, 'NRS', 'Nursing service measures');
    oTable.Items.Add(22, 'OSL', 'Outside Lab');
    oTable.Items.Add(20, 'OT', 'Occupational therapy');
    oTable.Items.Add(21, 'OTH', 'Other');
    oTable.Items.Add(19, 'OUS', 'OB Ultrasound');
    oTable.Items.Add(26, 'PF', 'Pulmonary function');
    oTable.Items.Add(23, 'PHR', 'Pharmacy');
    oTable.Items.Add(25, 'PHY', 'Physician (Hx, Dx, admission note, etc.)');
    oTable.Items.Add(24, 'PT', 'Physical therapy');
    oTable.Items.Add(29, 'RC', 'Respiratory care (therapy)');
    oTable.Items.Add(30, 'RT', 'Radiation therapy');
    oTable.Items.Add(28, 'RUS', 'Radiology ultrasound');
    oTable.Items.Add(27, 'RX', 'Radiograph');
    oTable.Items.Add(32, 'SP', 'Surgical Pathology');
    oTable.Items.Add(31, 'SR', 'Serology');
    oTable.Items.Add(33, 'TX', 'Toxicology');
    oTable.Items.Add(35, 'VR', 'Virology');
    oTable.Items.Add(34, 'VUS', 'Vascular Ultrasound');
    oTable.Items.Add(36, 'XRC', 'Cineradiograph');
End;


procedure LoadTable75(oTables : THL7V2ModelTables);
Begin
  oTables.Add(75, 'REPORT TYPES');
End;


procedure LoadTable76(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(76, 'MESSAGE TYPE');
    oTable.Items.Add(1, 'ACK', 'General acknowledgement message');
    oTable.Items.Add(28, 'ADR', 'ADT response');
    oTable.Items.Add(2, 'ADT', 'ADT message');
    oTable.Items.Add(3, 'ARD', 'Ancillary report (display)');
    oTable.Items.Add(4, 'BAR', 'Add / change billing account');
    oTable.Items.Add(5, 'DFT', 'Detail financial transaction');
    oTable.Items.Add(6, 'DSR', 'Display response');
    oTable.Items.Add(7, 'MCF', 'Delayed acknowledgement');
    oTable.Items.Add(31, 'MFD', 'Master files delayed application acknowledgement');
    oTable.Items.Add(30, 'MFK', 'Master file application acknowledgement');
    oTable.Items.Add(29, 'MFN', 'Master files notification');
    oTable.Items.Add(32, 'MFR', 'Master files response');
    oTable.Items.Add(35, 'NMD', 'Network management data');
    oTable.Items.Add(33, 'NMQ', 'Network management query');
    oTable.Items.Add(34, 'NMR', 'Network management response');
    oTable.Items.Add(8, 'ORF', 'Observational result (record response)');
    oTable.Items.Add(9, 'ORM', 'Order message');
    oTable.Items.Add(10, 'ORR', 'Order acknowledgement message');
    oTable.Items.Add(11, 'ORU', 'Observational result (unsolicited)');
    oTable.Items.Add(12, 'OSQ', 'Order status query');
    oTable.Items.Add(26, 'QRY', 'Query');
    oTable.Items.Add(13, 'RAR', 'Pharmacy administration information');
    oTable.Items.Add(14, 'RAS', 'Pharmacy administration message');
    oTable.Items.Add(15, 'RDE', 'Pharmacy encoded order message');
    oTable.Items.Add(16, 'RDR', 'Pharmacy dispense information');
    oTable.Items.Add(17, 'RDS', 'Pharmacy dispense message');
    oTable.Items.Add(20, 'RER', 'Pharmacy encoded order information');
    oTable.Items.Add(19, 'RGR', 'Pharmacy dose information');
    oTable.Items.Add(18, 'RGV', 'Pharmacy give message');
    oTable.Items.Add(21, 'ROR', 'Pharmacy prescription order response');
    oTable.Items.Add(22, 'RRA', 'Pharmacy administration acknowledgment');
    oTable.Items.Add(23, 'RRD', 'Pharmacy dispense acknowledgment');
    oTable.Items.Add(24, 'RRE', 'Pharmacy encoded order acknowledgment');
    oTable.Items.Add(25, 'RRG', 'Pharmacy give acknowledgment');
    oTable.Items.Add(27, 'UDM', 'Unsolicited display message');
End;


procedure LoadTable77(oTables : THL7V2ModelTables);
Begin
  oTables.Add(77, 'UNUSED TABLE');
End;


procedure LoadTable78(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(78, 'ABNORMAL FLAGS');
    oTable.Items.Add(5, '<', 'Below absolute low-off instrument scale');
    oTable.Items.Add(6, '>', 'Above absolute high-off instrument scale');
    oTable.Items.Add(8, 'A', 'Abnormal (applies to non-numeric results)');
    oTable.Items.Add(9, 'AA', 'Very abnormal (applies to non-numeric units, analogous to panic limits for numerics limits)');
    oTable.Items.Add(13, 'B', 'Better (use when direction not relevant)');
    oTable.Items.Add(12, 'D', 'Significant change down');
    oTable.Items.Add(2, 'H', 'Above high normal');
    oTable.Items.Add(4, 'HH', 'Above upper panic limits');
    oTable.Items.Add(17, 'I', 'Intermediate');
    oTable.Items.Add(1, 'L', 'Below low normal');
    oTable.Items.Add(3, 'LL', 'Below lower panic limits');
    oTable.Items.Add(18, 'MS', 'Moderately sensitive');
    oTable.Items.Add(7, 'N', 'Normal (applies to non-numeric results)');
    oTable.Items.Add(10, 'null', 'No range defined, or normal ranges don''t apply');
    oTable.Items.Add(16, 'R', 'Resistant');
    oTable.Items.Add(15, 'S', 'Sensitive');
    oTable.Items.Add(11, 'U', 'Significant change up');
    oTable.Items.Add(19, 'VS', 'Very sensitive');
    oTable.Items.Add(14, 'W', 'Worse (use when direction not relevant)');
End;


procedure LoadTable79(oTables : THL7V2ModelTables);
Begin
  oTables.Add(79, 'LOCATION');
End;


procedure LoadTable80(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(80, 'NATURE OF ABNORMAL TESTING');
    oTable.Items.Add(1, 'A', 'An age-based population');
    oTable.Items.Add(2, 'N', 'None - generic normal range');
    oTable.Items.Add(3, 'R', 'A race-based population');
    oTable.Items.Add(4, 'S', 'A sex-based population');
End;


procedure LoadTable81(oTables : THL7V2ModelTables);
Begin
  oTables.Add(81, 'NOTICE OF ADMISSION');
End;


procedure LoadTable82(oTables : THL7V2ModelTables);
Begin
  oTables.Add(82, 'UNUSED TABLE');
End;


procedure LoadTable83(oTables : THL7V2ModelTables);
Begin
  oTables.Add(83, 'OUTLIER TYPE');
End;


procedure LoadTable84(oTables : THL7V2ModelTables);
Begin
  oTables.Add(84, 'PERFORMED BY CODE');
End;


procedure LoadTable85(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(85, 'OBSERVATION RESULT STATUS CODES INTERPRETATION');
    oTable.Items.Add(1, 'C', 'Record coming over is a correction and thus replaces a result');
    oTable.Items.Add(2, 'D', 'Deletes the OBX record');
    oTable.Items.Add(3, 'F', 'Final results (can only be changed with a corrected result)');
    oTable.Items.Add(4, 'I', 'Specimen in lab - results pending');
    oTable.Items.Add(5, 'P', 'Preliminary results');
    oTable.Items.Add(6, 'R', 'Results entered - not verified');
    oTable.Items.Add(7, 'S', 'Partial results');
    oTable.Items.Add(9, 'U', 'Results status change to Final - results did not change ( don''t transmit test)');
    oTable.Items.Add(8, 'X', 'Results cannot be obtained for this observation');
End;


procedure LoadTable86(oTables : THL7V2ModelTables);
Begin
  oTables.Add(86, 'INS. PLAN TYPE');
End;


procedure LoadTable87(oTables : THL7V2ModelTables);
Begin
  oTables.Add(87, 'PRE-ADMIT TESTING');
End;


procedure LoadTable88(oTables : THL7V2ModelTables);
Begin
  oTables.Add(88, 'PROCEDURE CODE');
End;


procedure LoadTable89(oTables : THL7V2ModelTables);
Begin
  oTables.Add(89, 'PROCEDURE CODING METHOD');
End;


procedure LoadTable90(oTables : THL7V2ModelTables);
Begin
  oTables.Add(90, 'PROCEDURE TYPE');
End;


procedure LoadTable91(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(91, 'QUERY PRIORITY');
    oTable.Items.Add(1, 'D', 'Deferred');
    oTable.Items.Add(2, 'I', 'Immediate');
End;


procedure LoadTable92(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(92, 'RE-ADMISSION INDICATOR');
    oTable.Items.Add(1, 'R', 'Readmission');
End;


procedure LoadTable93(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(93, 'RELEASE OF INFORMATION');
    oTable.Items.Add(2, 'N', 'No');
    oTable.Items.Add(1, 'Y', 'Yes');
End;


procedure LoadTable94(oTables : THL7V2ModelTables);
Begin
  oTables.Add(94, 'REPORT OF ELIGIBILITY');
End;


procedure LoadTable95(oTables : THL7V2ModelTables);
Begin
  oTables.Add(95, 'UNUSED TABLE');
End;


procedure LoadTable96(oTables : THL7V2ModelTables);
Begin
  oTables.Add(96, 'FINANCIAL TRANSACTION CODE');
End;


procedure LoadTable97(oTables : THL7V2ModelTables);
Begin
  oTables.Add(97, 'UNUSED TABLE');
End;


procedure LoadTable98(oTables : THL7V2ModelTables);
Begin
  oTables.Add(98, 'TYPE OF AGREEMENT CODE');
End;


procedure LoadTable99(oTables : THL7V2ModelTables);
Begin
  oTables.Add(99, 'VIP INDICATOR');
End;


procedure LoadTable100(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(100, 'WHEN TO CHARGE');
    oTable.Items.Add(1, 'D', 'On discharge');
    oTable.Items.Add(2, 'O', 'On receipt of order');
    oTable.Items.Add(3, 'R', 'At time service is completed');
    oTable.Items.Add(4, 'S', 'At time service is started');
    oTable.Items.Add(5, 'T', 'At a designated date / time');
End;


procedure LoadTable101(oTables : THL7V2ModelTables);
Begin
  oTables.Add(101, 'DISPLAY LEVEL');
End;


procedure LoadTable102(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(102, 'DELAYED ACKNOWLEDGMENT TYPE');
    oTable.Items.Add(1, 'D', 'Message Received, stored for later processing');
    oTable.Items.Add(2, 'F', 'Acknowledgement after processing');
End;


procedure LoadTable103(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(103, 'PROCESSING ID');
    oTable.Items.Add(1, 'D', 'Debugging');
    oTable.Items.Add(2, 'P', 'Production');
    oTable.Items.Add(3, 'T', 'Training');
End;


procedure LoadTable104(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(104, 'VERSION ID');
    oTable.Items.Add(1, '2.0', 'Version 2.0, September 1988');
    oTable.Items.Add(2, '2.0D', 'Demo    2.0  October 1988');
    oTable.Items.Add(3, '2.1', 'Release 2.1  March 1990');
    oTable.Items.Add(4, '2.2', 'Release 2.2  December 1994');
End;


procedure LoadTable105(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(105, 'SOURCE OF COMMENT');
    oTable.Items.Add(1, 'L', 'Ancillary (filler) department is source of comment');
    oTable.Items.Add(3, 'O', 'Other system is source of comment');
    oTable.Items.Add(2, 'P', 'Orderer (placer) is source of comment');
End;


procedure LoadTable106(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(106, 'QUERY FORMAT CODE');
    oTable.Items.Add(1, 'D', 'Response is in display format');
    oTable.Items.Add(2, 'R', 'Response is in record-oriented format');
End;


procedure LoadTable107(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(107, 'DEFERRED RESPONSE TYPE');
    oTable.Items.Add(1, 'B', 'Before the date / time specified');
    oTable.Items.Add(2, 'L', 'Later than the date / time specified');
End;


procedure LoadTable108(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(108, 'QUERY RESULTS LEVEL');
    oTable.Items.Add(1, 'O', 'Order plus order status');
    oTable.Items.Add(2, 'R', 'Results without bulk text');
    oTable.Items.Add(3, 'S', 'Status only');
    oTable.Items.Add(4, 'T', 'Full results');
End;


procedure LoadTable109(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(109, 'REPORT PRIORITY');
    oTable.Items.Add(1, 'R', 'Routine');
    oTable.Items.Add(2, 'S', 'Stat');
End;


procedure LoadTable110(oTables : THL7V2ModelTables);
Begin
  oTables.Add(110, 'TRANSFER TO BAD DEBT CODE');
End;


procedure LoadTable111(oTables : THL7V2ModelTables);
Begin
  oTables.Add(111, 'DELETE ACCOUNT CODE');
End;


procedure LoadTable112(oTables : THL7V2ModelTables);
Begin
  oTables.Add(112, 'DISCHARGE DISPOSITION');
End;


procedure LoadTable113(oTables : THL7V2ModelTables);
Begin
  oTables.Add(113, 'DISCHARGED TO LOCATION');
End;


procedure LoadTable114(oTables : THL7V2ModelTables);
Begin
  oTables.Add(114, 'DIET TYPE');
End;


procedure LoadTable115(oTables : THL7V2ModelTables);
Begin
  oTables.Add(115, 'SERVICING FACILITY');
End;


procedure LoadTable116(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(116, 'BED STATUS');
    oTable.Items.Add(1, 'C', 'Closed');
    oTable.Items.Add(2, 'H', 'Housekeeping');
    oTable.Items.Add(6, 'I', 'Isolated');
    oTable.Items.Add(5, 'K', 'Contaminated');
    oTable.Items.Add(3, 'O', 'Occupied');
    oTable.Items.Add(4, 'U', 'Unoccupied');
End;


procedure LoadTable117(oTables : THL7V2ModelTables);
Begin
  oTables.Add(117, 'ACCOUNT STATUS');
End;


procedure LoadTable118(oTables : THL7V2ModelTables);
Begin
  oTables.Add(118, 'MAJOR DIAGNOSTIC CATEGORY');
End;


procedure LoadTable119(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(119, 'ORDER CONTROL');
    oTable.Items.Add(3, 'CA', 'Cancel order request');
    oTable.Items.Add(24, 'CH', 'Child order');
    oTable.Items.Add(37, 'CN', 'Combined result');
    oTable.Items.Add(5, 'CR', 'Canceled as requested');
    oTable.Items.Add(7, 'DC', 'Discontinue order request');
    oTable.Items.Add(29, 'DE', 'Data Errors');
    oTable.Items.Add(9, 'DR', 'Discontinued as requested');
    oTable.Items.Add(11, 'HD', 'Hold order request');
    oTable.Items.Add(14, 'HR', 'On hold as requested');
    oTable.Items.Add(36, 'NA', 'Number assigned');
    oTable.Items.Add(1, 'NW', 'New Order');
    oTable.Items.Add(4, 'OC', 'Order canceled');
    oTable.Items.Add(8, 'OD', 'Order discontinued');
    oTable.Items.Add(12, 'OH', 'Order held');
    oTable.Items.Add(2, 'OK', 'Order accepted and OK');
    oTable.Items.Add(16, 'OR', 'Released as requested');
    oTable.Items.Add(23, 'PA', 'Parent order');
    oTable.Items.Add(30, 'RE', 'Observations to follow');
    oTable.Items.Add(15, 'RL', 'Release previous hold');
    oTable.Items.Add(20, 'RO', 'Replacement order');
    oTable.Items.Add(18, 'RP', 'Order replace request');
    oTable.Items.Add(21, 'RQ', 'Replaced as requested');
    oTable.Items.Add(31, 'RR', 'Request received');
    oTable.Items.Add(19, 'RU', 'Replaced unsolicited');
    oTable.Items.Add(34, 'SC', 'Status changed');
    oTable.Items.Add(35, 'SN', 'Send order number');
    oTable.Items.Add(32, 'SR', 'Response to send order status request');
    oTable.Items.Add(33, 'SS', 'Send order status request');
    oTable.Items.Add(6, 'UC', 'Unable to cancel');
    oTable.Items.Add(10, 'UD', 'Unable to discontinue');
    oTable.Items.Add(13, 'UH', 'Unable to put on hold');
    oTable.Items.Add(22, 'UM', 'Unable to replace');
    oTable.Items.Add(17, 'UR', 'Unable to release');
    oTable.Items.Add(27, 'UX', 'Unable to change');
    oTable.Items.Add(25, 'XO', 'Change order request');
    oTable.Items.Add(28, 'XR', 'Changed as requested');
    oTable.Items.Add(26, 'XX', 'Order changed, unsolicited');
End;


procedure LoadTable120(oTables : THL7V2ModelTables);
Begin
  oTables.Add(120, 'APPLICATION ID');
End;


procedure LoadTable121(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(121, 'RESPONSE FLAG');
    oTable.Items.Add(3, 'D', 'Same as R, also other associated segments');
    oTable.Items.Add(1, 'E', 'Report exceptions only');
    oTable.Items.Add(4, 'F', 'Same as D, plus confirmations explicitly');
    oTable.Items.Add(5, 'N', 'Only the MSA segment is returned');
    oTable.Items.Add(2, 'R', 'Same as E, also Replacement and Parent-Child');
End;


procedure LoadTable122(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(122, 'CHARGE TYPE');
    oTable.Items.Add(1, 'CH', 'Charge');
    oTable.Items.Add(2, 'CO', 'Contract');
    oTable.Items.Add(3, 'CR', 'Credit');
    oTable.Items.Add(4, 'DP', 'Department');
    oTable.Items.Add(5, 'GR', 'Grant');
    oTable.Items.Add(6, 'NC', 'No Charge');
    oTable.Items.Add(7, 'PC', 'Professional');
    oTable.Items.Add(8, 'RS', 'Research');
End;


procedure LoadTable123(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(123, 'RESULT STATUS - OBR');
    oTable.Items.Add(5, 'C', 'Correction to results');
    oTable.Items.Add(7, 'F', 'Final results - results stored & verified');
    oTable.Items.Add(2, 'I', 'Specimen in lab, not yet processed.');
    oTable.Items.Add(1, 'O', 'Order received; specimen not yet received');
    oTable.Items.Add(4, 'P', 'Preliminary: A verified early result is available, final results not yet obtained');
    oTable.Items.Add(6, 'R', 'Results stored; not yet verified');
    oTable.Items.Add(3, 'S', 'No results available; procedure scheduled, but not done');
    oTable.Items.Add(8, 'X', 'No results available; Order canceled.');
    oTable.Items.Add(9, 'Y', 'No order on record for this test.  (Used only on queries)');
    oTable.Items.Add(10, 'Z', 'No record of this patient. (Used only on queries)');
End;


procedure LoadTable124(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(124, 'TRANSPORTATION MODE');
    oTable.Items.Add(1, 'CART', 'Cart - patient travels on cart or gurney');
    oTable.Items.Add(2, 'PORT', 'The examining device goes to patient''s location');
    oTable.Items.Add(3, 'WALK', 'Patient walks to diagnostic service');
    oTable.Items.Add(4, 'WHLC', 'Wheelchair');
End;


procedure LoadTable125(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(125, 'VALUE TYPE');
    oTable.Items.Add(9, 'AD', 'Address');
    oTable.Items.Add(12, 'CE', 'Coded element');
    oTable.Items.Add(20, 'CF', 'Coded element with formatted values');
    oTable.Items.Add(10, 'CK', 'Composite ID with check digit');
    oTable.Items.Add(18, 'CM', 'Composite');
    oTable.Items.Add(11, 'CN', 'Composite ID and name');
    oTable.Items.Add(19, 'CQ', 'Composite quantity with units');
    oTable.Items.Add(4, 'DT', 'Date');
    oTable.Items.Add(3, 'FT', 'Formatted text (display)');
    oTable.Items.Add(16, 'ID', 'Coded value');
    oTable.Items.Add(21, 'MO', 'Money');
    oTable.Items.Add(14, 'NM', 'Numeric');
    oTable.Items.Add(7, 'PN', 'Person name');
    oTable.Items.Add(13, 'RP', 'Reference pointer');
    oTable.Items.Add(17, 'SI', 'Sequence ID');
    oTable.Items.Add(1, 'ST', 'String data');
    oTable.Items.Add(5, 'TM', 'Time');
    oTable.Items.Add(8, 'TN', 'Telephone number');
    oTable.Items.Add(15, 'TQ', 'Timing / quantity');
    oTable.Items.Add(6, 'TS', 'Time stamp ( date & time)');
    oTable.Items.Add(2, 'TX', 'Text data (display)');
End;


procedure LoadTable126(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(126, 'QUANTITY LIMITED REQUEST');
    oTable.Items.Add(1, 'CH', 'Characters');
    oTable.Items.Add(2, 'LI', 'Lines');
    oTable.Items.Add(3, 'PG', 'Pages');
    oTable.Items.Add(4, 'RD', 'Records');
    oTable.Items.Add(5, 'ZO', 'Locally defined');
End;


procedure LoadTable127(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(127, 'ALLERGY TYPE');
    oTable.Items.Add(1, 'DA', 'Drug Allergy');
    oTable.Items.Add(2, 'FA', 'Food Allergy');
    oTable.Items.Add(3, 'MA', 'Miscellaneous Allergy');
    oTable.Items.Add(4, 'MC', 'Miscellaneous Contraindication');
End;


procedure LoadTable128(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(128, 'ALLERGY SEVERITY');
    oTable.Items.Add(3, 'MI', 'Mild');
    oTable.Items.Add(2, 'MO', 'Moderate');
    oTable.Items.Add(1, 'SV', 'Severe');
End;


procedure LoadTable129(oTables : THL7V2ModelTables);
Begin
  oTables.Add(129, 'ACCOMODATION CODE');
End;


procedure LoadTable130(oTables : THL7V2ModelTables);
Begin
  oTables.Add(130, 'VISIT USER CODE');
End;


procedure LoadTable131(oTables : THL7V2ModelTables);
Begin
  oTables.Add(131, 'CONTRACT ROLE');
End;


procedure LoadTable132(oTables : THL7V2ModelTables);
Begin
  oTables.Add(132, 'TRANSACTION CODE');
End;


procedure LoadTable133(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(133, 'PROCEDURE PRACTITIONER TYPE');
    oTable.Items.Add(1, 'AN', 'Anesthesiologist');
    oTable.Items.Add(6, 'CM', 'Certified Nurse Midwife');
    oTable.Items.Add(5, 'NP', 'Nurse Practitioner');
    oTable.Items.Add(2, 'PR', 'Procedure MD (surgeon)');
    oTable.Items.Add(3, 'RD', 'Radiologist');
    oTable.Items.Add(4, 'RS', 'Resident');
End;


procedure LoadTable135(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(135, 'ASSIGNMENT OF BENEFITS');
    oTable.Items.Add(3, 'M', 'Modified assignment');
    oTable.Items.Add(2, 'N', 'No');
    oTable.Items.Add(1, 'Y', 'Yes');
End;


procedure LoadTable136(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(136, 'Y/N Indicator');
    oTable.Items.Add(2, 'N', 'No');
    oTable.Items.Add(1, 'Y', 'Yes');
End;


procedure LoadTable137(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(137, 'MAIL CLAIM PARTY');
    oTable.Items.Add(1, 'E', 'Employer');
    oTable.Items.Add(2, 'G', 'Guarantor');
    oTable.Items.Add(3, 'I', 'Insurance Company');
    oTable.Items.Add(4, 'O', 'Other');
    oTable.Items.Add(5, 'P', 'Patient');
End;


procedure LoadTable139(oTables : THL7V2ModelTables);
Begin
  oTables.Add(139, 'EMPLOYER INFORMATION DATA');
End;


procedure LoadTable140(oTables : THL7V2ModelTables);
Begin
  oTables.Add(140, 'CHAMPUS SERVICE');
End;


procedure LoadTable141(oTables : THL7V2ModelTables);
Begin
  oTables.Add(141, 'CHAMPUS RANK/GRADE');
End;


procedure LoadTable142(oTables : THL7V2ModelTables);
Begin
  oTables.Add(142, 'CHAMPUS STATE');
End;


procedure LoadTable143(oTables : THL7V2ModelTables);
Begin
  oTables.Add(143, 'NON-COVEREDINSURANCE CODE');
End;


procedure LoadTable144(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(144, 'ELIGIBILITY SOURCE');
    oTable.Items.Add(1, '1', 'Insurance Company');
    oTable.Items.Add(2, '2', 'Employer');
    oTable.Items.Add(3, '3', 'Insured Presented Policy');
    oTable.Items.Add(4, '4', 'Insured Presented Card');
    oTable.Items.Add(5, '5', 'Signed Statement on File');
    oTable.Items.Add(6, '6', 'Verbal Information');
    oTable.Items.Add(7, '7', 'None');
End;


procedure LoadTable145(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(145, 'Room Type');
    oTable.Items.Add(6, '2ICU', 'Second Intensive Care Unit');
    oTable.Items.Add(2, '2PRI', 'Second Private Room');
    oTable.Items.Add(4, '2SPR', 'Second Semi-private Room');
    oTable.Items.Add(5, 'ICU', 'Intensive Care Unit');
    oTable.Items.Add(1, 'PRI', 'Private Room');
    oTable.Items.Add(3, 'SPR', 'Semi-private Room');
End;


procedure LoadTable146(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(146, 'AMOUNT TYPE');
    oTable.Items.Add(1, 'DF', 'Differential');
    oTable.Items.Add(2, 'LM', 'Limit');
    oTable.Items.Add(3, 'PC', 'Percentage');
    oTable.Items.Add(4, 'RT', 'Rate');
    oTable.Items.Add(5, 'UL', 'Unlimited');
End;


procedure LoadTable147(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(147, 'POLICY TYPE');
    oTable.Items.Add(2, '2ANC', 'Second Ancillary');
    oTable.Items.Add(4, '2MMD', 'Second Major Medical');
    oTable.Items.Add(5, '3MMD', 'Third Major Medical');
    oTable.Items.Add(1, 'ANC', 'Ancillary');
    oTable.Items.Add(3, 'MMD', 'Major Medical');
End;


procedure LoadTable148(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(148, 'PENALTY TYPE');
    oTable.Items.Add(1, 'AT', 'Currency Amount');
    oTable.Items.Add(2, 'PC', 'Percentage');
End;


procedure LoadTable149(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(149, 'DAY TYPE');
    oTable.Items.Add(1, 'AP', 'Approved');
    oTable.Items.Add(2, 'DE', 'Denied');
    oTable.Items.Add(3, 'PE', 'Pending');
End;


procedure LoadTable150(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(150, 'PRECERTIFICATION PATIENT TYPE');
    oTable.Items.Add(1, 'ER', 'Emergency');
    oTable.Items.Add(2, 'IPE', 'Inpatient elective');
    oTable.Items.Add(3, 'OPE', 'Outpatient elective');
    oTable.Items.Add(4, 'UR', 'Urgent');
End;


procedure LoadTable151(oTables : THL7V2ModelTables);
Begin
  oTables.Add(151, 'SECOND OPINION STATUS');
End;


procedure LoadTable152(oTables : THL7V2ModelTables);
Begin
  oTables.Add(152, 'SECOND OPINION DOCUMENTATION RECEIVED');
End;


procedure LoadTable153(oTables : THL7V2ModelTables);
Begin
  oTables.Add(153, 'VALUE CODE');
End;


procedure LoadTable155(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(155, 'ACCEPT/APPLICATION ACKNOWLEDGEMENT CONDITIONS');
    oTable.Items.Add(1, 'AL', 'Always');
    oTable.Items.Add(3, 'ER', 'Error / reject conditions only');
    oTable.Items.Add(2, 'NE', 'Never');
    oTable.Items.Add(4, 'SU', 'Successful completion only');
End;


procedure LoadTable156(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(156, 'DATE/TIME QUALIFIER');
    oTable.Items.Add(7, 'ANY', 'Any date / time within a range');
    oTable.Items.Add(2, 'CAN', 'Cancellation date / time');
    oTable.Items.Add(4, 'COL', 'Collection date / time (equivalent to film or sample collection date / time)');
    oTable.Items.Add(1, 'ORD', 'Order date / time');
    oTable.Items.Add(5, 'RCT', 'Specimen receipt date / time (receipt of specimen in filling ancillary (lab))');
    oTable.Items.Add(6, 'REP', 'Report date / time (report date / time at filling ancillary (i.e., lab))');
    oTable.Items.Add(3, 'SCHED', 'Schedule date / time');
End;


procedure LoadTable157(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(157, 'WHIHC DATE/TIME STATUS QUALIFIER');
    oTable.Items.Add(6, 'ANY', 'Any status');
    oTable.Items.Add(3, 'CFN', 'Current final value (whether final or corrected)');
    oTable.Items.Add(5, 'COR', 'Corrected only (no final with corrections)');
    oTable.Items.Add(4, 'FIN', 'Final only (no corrections)');
    oTable.Items.Add(1, 'PRE', 'Preliminary');
    oTable.Items.Add(2, 'REP', 'Report completion date / time');
End;


procedure LoadTable158(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(158, 'DATE/TIME SELECTION QUALIFIER');
    oTable.Items.Add(1, '1ST', 'First value within range');
    oTable.Items.Add(2, 'ALL', 'All values within the range');
    oTable.Items.Add(3, 'LST', 'Last value within the range');
    oTable.Items.Add(4, 'REV', 'All values within the range returned in reverse chronological order');
End;


procedure LoadTable159(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(159, 'DIET TYPE');
    oTable.Items.Add(1, 'D', 'Diet');
    oTable.Items.Add(3, 'P', 'Preference');
    oTable.Items.Add(2, 'S', 'Supplement');
End;


procedure LoadTable160(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(160, 'TRAY TYPE');
    oTable.Items.Add(1, 'EARLY', 'Early tray');
    oTable.Items.Add(3, 'GUEST', 'Guest tray');
    oTable.Items.Add(2, 'LATE', 'Late tray');
    oTable.Items.Add(5, 'MSG', 'Tray message only');
    oTable.Items.Add(4, 'NO', 'No tray');
End;


procedure LoadTable161(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(161, 'ALLOW SUBSTITUTION');
    oTable.Items.Add(2, 'G', 'Allow generic substitutions');
    oTable.Items.Add(1, 'N', 'Substitutions are not authorized');
    oTable.Items.Add(3, 'T', 'Allow therapeutic substitutions');
End;


procedure LoadTable162(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(162, 'ROUTE OF ADMINISTRATION');
    oTable.Items.Add(1, 'AP', 'Apply Externally');
    oTable.Items.Add(2, 'B', 'Buccal');
    oTable.Items.Add(3, 'DT', 'Dental');
    oTable.Items.Add(4, 'GTT', 'Gastronomy Tube');
    oTable.Items.Add(5, 'GU', 'Magensp'#252'lung');
    oTable.Items.Add(6, 'IA', 'Intra-arterial');
    oTable.Items.Add(7, 'IC', 'Intracardiac');
    oTable.Items.Add(8, 'ID', 'Intradermal');
    oTable.Items.Add(9, 'IH', 'Inhalation');
    oTable.Items.Add(10, 'IM', 'Intramuscular');
    oTable.Items.Add(11, 'IN', 'Intranasal');
    oTable.Items.Add(12, 'IO', 'Intraocular');
    oTable.Items.Add(13, 'IP', 'Intraperitoneal');
    oTable.Items.Add(14, 'IS', 'Intrasynovial');
    oTable.Items.Add(15, 'IT', 'Intrathecal');
    oTable.Items.Add(16, 'IV', 'Intravenous');
    oTable.Items.Add(18, 'NG', 'Nasogastric');
    oTable.Items.Add(17, 'NS', 'Nasal');
    oTable.Items.Add(19, 'OP', 'Ophthalmic');
    oTable.Items.Add(20, 'OT', 'Otic');
    oTable.Items.Add(21, 'PO', 'Oral');
    oTable.Items.Add(22, 'PR', 'Rectal');
    oTable.Items.Add(23, 'SC', 'Subcutaneous');
    oTable.Items.Add(24, 'SL', 'Sublingual');
    oTable.Items.Add(26, 'TD', 'Transdermal');
    oTable.Items.Add(27, 'TL', 'Translingual');
    oTable.Items.Add(25, 'TP', 'Topical');
    oTable.Items.Add(28, 'UR', 'Urethral');
    oTable.Items.Add(29, 'VG', 'Vaginal');
End;


procedure LoadTable163(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(163, 'ADMINISTRIVE SITE');
    oTable.Items.Add(1, 'BE', 'Bilateral Ears');
    oTable.Items.Add(3, 'BN', 'Bilateral Nares');
    oTable.Items.Add(4, 'BU', 'Buttock');
    oTable.Items.Add(5, 'CT', 'Tubus');
    oTable.Items.Add(6, 'LA', 'Left arm');
    oTable.Items.Add(7, 'LAC', 'Left Anterior Chest');
    oTable.Items.Add(8, 'LACF', 'Left Antecubital Fossa');
    oTable.Items.Add(9, 'LD', 'Left Deltoid');
    oTable.Items.Add(10, 'LE', 'Left Ear');
    oTable.Items.Add(11, 'LEJ', 'Left External Jugular');
    oTable.Items.Add(13, 'LF', 'Left Foot');
    oTable.Items.Add(14, 'LG', 'Left Gluteus Medius');
    oTable.Items.Add(15, 'LH', 'Left Hand');
    oTable.Items.Add(16, 'LIJ', 'Left Internal Jugular');
    oTable.Items.Add(17, 'LLAQ', 'Left Lower Abd Quadrant');
    oTable.Items.Add(18, 'LLFA', 'Left Lower Forearm');
    oTable.Items.Add(19, 'LMFA', 'Left Mid Forearm');
    oTable.Items.Add(20, 'LN', 'Left Naris');
    oTable.Items.Add(21, 'LPC', 'Left Posterior Chest');
    oTable.Items.Add(22, 'LSC', 'Left Subclavian');
    oTable.Items.Add(23, 'LT', 'Left Thigh');
    oTable.Items.Add(24, 'LUA', 'Left Upper Arm');
    oTable.Items.Add(25, 'LUAQ', 'Left Upper Abd Quadrant');
    oTable.Items.Add(26, 'LUFA', 'Left Upper Forearm');
    oTable.Items.Add(27, 'LVG', 'Left Ventragluteal');
    oTable.Items.Add(28, 'LVL', 'Left Vastus Lateralis');
    oTable.Items.Add(29, 'NB', 'Nebulized');
    oTable.Items.Add(38, 'OD', 'Right Eye');
    oTable.Items.Add(12, 'OS', 'Left Eye');
    oTable.Items.Add(2, 'OU', 'Bilateral Eyes');
    oTable.Items.Add(30, 'PA', 'Perianal');
    oTable.Items.Add(31, 'PERIN', 'Perineal');
    oTable.Items.Add(32, 'RA', 'Right Arm');
    oTable.Items.Add(33, 'RAC', 'Right Anterior Chest');
    oTable.Items.Add(34, 'RACF', 'Right Antecubital Fossa');
    oTable.Items.Add(35, 'RD', 'Right Deltoid');
    oTable.Items.Add(36, 'RE', 'Right Ear');
    oTable.Items.Add(37, 'REJ', 'Right External Jugular');
    oTable.Items.Add(39, 'RF', 'Right Foot');
    oTable.Items.Add(40, 'RG', 'Right Gluteus Medius');
    oTable.Items.Add(41, 'RH', 'Right Hand');
    oTable.Items.Add(42, 'RIJ', 'Right Internal Jugular');
    oTable.Items.Add(43, 'RLAQ', 'Rt Lower Abd Quadrant');
    oTable.Items.Add(44, 'RLFA', 'Right Lower Forearm');
    oTable.Items.Add(45, 'RMFA', 'Right Mid Forearm');
    oTable.Items.Add(46, 'RN', 'Right Naris');
    oTable.Items.Add(47, 'RPC', 'Right Posterior Chest');
    oTable.Items.Add(48, 'RSC', 'Right Subclavian');
    oTable.Items.Add(49, 'RT', 'Right Thigh');
    oTable.Items.Add(50, 'RUA', 'Right Upper Arm');
    oTable.Items.Add(51, 'RUAQ', 'Right Upper Abd Quadrant');
    oTable.Items.Add(52, 'RUFA', 'Right Upper Forearm');
    oTable.Items.Add(54, 'RVG', 'Right Ventragluteal');
    oTable.Items.Add(53, 'RVL', 'Right Vastus Lateralis');
End;


procedure LoadTable164(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(164, 'ADMINISTRATION DEVICE');
    oTable.Items.Add(1, 'AP', 'Applicator');
    oTable.Items.Add(2, 'BT', 'Buretrol');
    oTable.Items.Add(3, 'HL', 'Heparin Lock');
    oTable.Items.Add(4, 'IPPB', 'IPPB');
    oTable.Items.Add(5, 'IVP', 'IV Pump');
    oTable.Items.Add(6, 'IVS', 'IV Soluset');
    oTable.Items.Add(7, 'MI', 'Metered Inhaler');
    oTable.Items.Add(8, 'NEB', 'Nebulizer');
    oTable.Items.Add(9, 'PCA', 'PCA Pump');
End;


procedure LoadTable165(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(165, 'ADMINISTRATION METHOD');
    oTable.Items.Add(1, 'CH', 'Chew');
    oTable.Items.Add(2, 'DI', 'Dissolve');
    oTable.Items.Add(3, 'DU', 'Dust');
    oTable.Items.Add(4, 'IF', 'Inflitrate');
    oTable.Items.Add(6, 'IR', 'Irrigate');
    oTable.Items.Add(5, 'IS', 'Insert');
    oTable.Items.Add(8, 'IVP', 'IV Push');
    oTable.Items.Add(7, 'IVPB', 'IV Piggyback');
    oTable.Items.Add(9, 'NB', 'Nebulized');
    oTable.Items.Add(11, 'PF', 'Perfuse');
    oTable.Items.Add(10, 'PT', 'Pain');
    oTable.Items.Add(12, 'SH', 'Shampoo');
    oTable.Items.Add(13, 'SO', 'Soak');
    oTable.Items.Add(14, 'WA', 'Wash');
    oTable.Items.Add(15, 'WI', 'Wipe');
End;


procedure LoadTable166(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(166, 'RX COMPONENT TYPE');
    oTable.Items.Add(2, 'A', 'Additive');
    oTable.Items.Add(1, 'B', 'Base');
End;


procedure LoadTable167(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(167, 'SUBSTITUTION STATUS');
    oTable.Items.Add(2, 'G', 'A generic substitution was dispensed');
    oTable.Items.Add(1, 'N', 'No substitute was dispensed');
    oTable.Items.Add(3, 'T', 'A therapeutic substitution was dispensed');
End;


procedure LoadTable168(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(168, 'PROCESSING PRIORITY');
    oTable.Items.Add(2, 'A', 'As soon as possible (a priority lower than stat)');
    oTable.Items.Add(7, 'B', 'Do at bedside or portable (may be used with other codes)');
    oTable.Items.Add(6, 'C', 'Measure continously (e.g., arterial line blood pressure)');
    oTable.Items.Add(4, 'P', 'Preoperative (to be done prior to surgery)');
    oTable.Items.Add(3, 'R', 'Routine');
    oTable.Items.Add(1, 'S', 'Stat (do immediately)');
    oTable.Items.Add(5, 'T', 'Timing critical (do as near as possible to requested time)');
End;


procedure LoadTable169(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(169, 'REPORTIN PRIORITY');
    oTable.Items.Add(1, 'C', 'Call back results');
    oTable.Items.Add(2, 'R', 'Rush reporting');
End;


procedure LoadTable170(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(170, 'DERIVED SPECIMEN');
    oTable.Items.Add(2, 'C', 'Child observation');
    oTable.Items.Add(3, 'N', 'Not applicable');
    oTable.Items.Add(1, 'P', 'Parent observation');
End;


procedure LoadTable171(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(171, 'Country Code');
    oTable.Items.Add(111, '_1', 'Mongolia');
    oTable.Items.Add(81, '_10', 'Comoros');
    oTable.Items.Add(2, '_11', 'Equatorial Guinea');
    oTable.Items.Add(104, '_12', 'Marshall Islands');
    oTable.Items.Add(11, '_2', 'Armenia');
    oTable.Items.Add(12, '_3', 'Azerbaijan');
    oTable.Items.Add(179, '_4', 'Vanuatu');
    oTable.Items.Add(54, '_5', 'Guinea-Bissau');
    oTable.Items.Add(173, '_6', 'Tuvalu');
    oTable.Items.Add(79, '_7', 'Kiribati');
    oTable.Items.Add(166, '_8', 'Tonga');
    oTable.Items.Add(37, '_9', 'Djibouti');
    oTable.Items.Add(123, 'A', 'Austria');
    oTable.Items.Add(68, 'ADN', 'Yemen');
    oTable.Items.Add(4, 'AFG', 'Afghanistan');
    oTable.Items.Add(8, 'AGO', 'Angola');
    oTable.Items.Add(5, 'AL', 'Albania');
    oTable.Items.Add(7, 'AND', 'Andorra');
    oTable.Items.Add(9, 'ANT', 'Antigua and Barbuda');
    oTable.Items.Add(13, 'AUS', 'Australia');
    oTable.Items.Add(18, 'B', 'Belgium');
    oTable.Items.Add(16, 'BD', 'Bangladesh');
    oTable.Items.Add(17, 'BDS', 'Barbados');
    oTable.Items.Add(27, 'BG', 'Bulgaria');
    oTable.Items.Add(19, 'BH', 'Belize');
    oTable.Items.Add(21, 'BHT', 'Bhutan');
    oTable.Items.Add(100, 'BIO', 'Maldives');
    oTable.Items.Add(22, 'BOL', 'Bolivia');
    oTable.Items.Add(23, 'BOS', 'Bosnia and Herzegovina');
    oTable.Items.Add(25, 'BR', 'Brazil');
    oTable.Items.Add(15, 'BRN', 'Bahrain');
    oTable.Items.Add(26, 'BRU', 'Brunei');
    oTable.Items.Add(14, 'BS', 'Bahamas');
    oTable.Items.Add(113, 'BUR', 'Myanmar');
    oTable.Items.Add(185, 'BY', 'Belarus');
    oTable.Items.Add(85, 'C', 'Cuba');
    oTable.Items.Add(72, 'CAM', 'Cameroon');
    oTable.Items.Add(73, 'CDN', 'Canada');
    oTable.Items.Add(145, 'CH', 'Switzerland');
    oTable.Items.Add(168, 'CHD', 'Chad');
    oTable.Items.Add(39, 'CI', 'Ivory Coast');
    oTable.Items.Add(155, 'CL', 'Sri Lanka');
    oTable.Items.Add(80, 'CO', 'Colombia');
    oTable.Items.Add(32, 'CR', 'Costa Rica');
    oTable.Items.Add(74, 'CV', 'Cape Verde');
    oTable.Items.Add(189, 'CY', 'Cyprus');
    oTable.Items.Add(169, 'CZ', 'Czech Republic');
    oTable.Items.Add(34, 'D', 'Germany');
    oTable.Items.Add(36, 'DCM', 'Dominican Republic');
    oTable.Items.Add(33, 'DK', 'Denmark');
    oTable.Items.Add(20, 'DY', 'Benin');
    oTable.Items.Add(6, 'DZ', 'Algeria');
    oTable.Items.Add(154, 'E', 'Spain');
    oTable.Items.Add(77, 'EAK', 'Kenya');
    oTable.Items.Add(163, 'EAT', 'Tanzania');
    oTable.Items.Add(174, 'EAU', 'Uganda');
    oTable.Items.Add(199, 'EAZ', 'Zanzibar');
    oTable.Items.Add(38, 'EC', 'Ecuador');
    oTable.Items.Add(40, 'ES', 'El Salvador');
    oTable.Items.Add(1, 'ET', 'Egypt');
    oTable.Items.Add(3, 'ETH', 'Ethiopia');
    oTable.Items.Add(41, 'EW', 'Estonia');
    oTable.Items.Add(44, 'F', 'France');
    oTable.Items.Add(191, 'FAL', 'Falkland Islands');
    oTable.Items.Add(42, 'FJL', 'Fiji');
    oTable.Items.Add(93, 'FL', 'Liechtenstein');
    oTable.Items.Add(190, 'FR', 'Faeroe Islands');
    oTable.Items.Add(70, 'FRJ', 'Yugoslavia');
    oTable.Items.Add(108, 'FSM', 'Micronesia');
    oTable.Items.Add(45, 'GAB', 'Gabon');
    oTable.Items.Add(51, 'GB', 'United Kingdom');
    oTable.Items.Add(194, 'GBA', 'Channel Islands - Alderney');
    oTable.Items.Add(195, 'GBG', 'Channel Islands - Guernsey');
    oTable.Items.Add(196, 'GBJ', 'Channel Islands - Jersey');
    oTable.Items.Add(197, 'GBM', 'Isle of Man');
    oTable.Items.Add(192, 'GBZ', 'Gibraltar');
    oTable.Items.Add(52, 'GCA', 'Guatemala');
    oTable.Items.Add(47, 'GEO', 'Georgia');
    oTable.Items.Add(48, 'GH', 'Ghana');
    oTable.Items.Add(50, 'GR', 'Greece');
    oTable.Items.Add(55, 'GUY', 'Guyana');
    oTable.Items.Add(176, 'H', 'Hungary');
    oTable.Items.Add(57, 'HCA', 'Honduras');
    oTable.Items.Add(193, 'HK', 'Hongkong');
    oTable.Items.Add(84, 'HR', 'Croatia');
    oTable.Items.Add(28, 'HV', 'Burkina Faso');
    oTable.Items.Add(65, 'I', 'Italy');
    oTable.Items.Add(64, 'IL', 'Israel');
    oTable.Items.Add(58, 'IND', 'India');
    oTable.Items.Add(61, 'IR', 'Iran');
    oTable.Items.Add(62, 'IRL', 'Ireland');
    oTable.Items.Add(60, 'IRQ', 'Iraq');
    oTable.Items.Add(63, 'IS', 'Iceland');
    oTable.Items.Add(67, 'J', 'Japan');
    oTable.Items.Add(66, 'JA', 'Jamaica');
    oTable.Items.Add(69, 'JOR', 'Jordan');
    oTable.Items.Add(71, 'K', 'Cambodia');
    oTable.Items.Add(75, 'KAS', 'Kazakhstan');
    oTable.Items.Add(78, 'KIS', 'Kyrgyzstan');
    oTable.Items.Add(86, 'KWT', 'Kuwait');
    oTable.Items.Add(95, 'L', 'Luxembourg');
    oTable.Items.Add(87, 'LAO', 'Laos');
    oTable.Items.Add(92, 'LAR', 'Libya');
    oTable.Items.Add(91, 'LB', 'Liberia');
    oTable.Items.Add(88, 'LS', 'Lesotho');
    oTable.Items.Add(94, 'LT', 'Lithuania');
    oTable.Items.Add(89, 'LV', 'Latvia');
    oTable.Items.Add(102, 'M', 'Malta');
    oTable.Items.Add(103, 'MA', 'Morocco');
    oTable.Items.Add(97, 'MAK', 'Macedonia');
    oTable.Items.Add(99, 'MAL', 'Malaysia');
    oTable.Items.Add(124, 'MAO', 'Oman');
    oTable.Items.Add(110, 'MC', 'Monaco');
    oTable.Items.Add(107, 'MEX', 'Mexico');
    oTable.Items.Add(109, 'MOL', 'Moldova');
    oTable.Items.Add(112, 'MOZ', 'Mozambique');
    oTable.Items.Add(106, 'MS', 'Mauritius');
    oTable.Items.Add(98, 'MW', 'Malawi');
    oTable.Items.Add(122, 'N', 'Norway');
    oTable.Items.Add(198, 'NA', 'Netherlands Antilles');
    oTable.Items.Add(115, 'NAU', 'Nauru');
    oTable.Items.Add(116, 'NEP', 'Nepal');
    oTable.Items.Add(118, 'NIC', 'Nicaragua');
    oTable.Items.Add(119, 'NL', 'Netherlands');
    oTable.Items.Add(117, 'NZ', 'New Zealand');
    oTable.Items.Add(132, 'P', 'Portugal');
    oTable.Items.Add(126, 'PA', 'Panama');
    oTable.Items.Add(125, 'PAK', 'Pakistan');
    oTable.Items.Add(129, 'PE', 'Peru');
    oTable.Items.Add(131, 'PL', 'Poland');
    oTable.Items.Add(127, 'PNG', 'Papua New Guinea');
    oTable.Items.Add(128, 'PY', 'Paraguay');
    oTable.Items.Add(76, 'QAT', 'Qatar');
    oTable.Items.Add(10, 'RA', 'Argentina');
    oTable.Items.Add(24, 'RB', 'Botswana');
    oTable.Items.Add(162, 'RC', 'Taiwan');
    oTable.Items.Add(188, 'RCA', 'Central African Republic');
    oTable.Items.Add(82, 'RCB', 'Congo');
    oTable.Items.Add(30, 'RCH', 'Chile');
    oTable.Items.Add(53, 'RG', 'Guinea');
    oTable.Items.Add(56, 'RH', 'Haiti');
    oTable.Items.Add(59, 'RI', 'Indonesia');
    oTable.Items.Add(105, 'RIM', 'Mauritania');
    oTable.Items.Add(90, 'RL', 'Lebanon');
    oTable.Items.Add(96, 'RM', 'Madagascar');
    oTable.Items.Add(101, 'RMM', 'Mali');
    oTable.Items.Add(120, 'RN', 'Niger');
    oTable.Items.Add(134, 'RO', 'Romania');
    oTable.Items.Add(83, 'ROK', 'Korea');
    oTable.Items.Add(177, 'ROU', 'Uruguay');
    oTable.Items.Add(130, 'RP', 'Philippines');
    oTable.Items.Add(141, 'RSM', 'San Marino');
    oTable.Items.Add(29, 'RU', 'Burundi');
    oTable.Items.Add(135, 'RUS', 'Russia');
    oTable.Items.Add(133, 'RWA', 'Rwanda');
    oTable.Items.Add(144, 'S', 'Sweden');
    oTable.Items.Add(143, 'SAU', 'Saudi Arabia');
    oTable.Items.Add(136, 'SCN', 'St. Kitts and Nevis');
    oTable.Items.Add(159, 'SD', 'Swaziland');
    oTable.Items.Add(43, 'SF', 'Finland');
    oTable.Items.Add(150, 'SGP', 'Singapore');
    oTable.Items.Add(151, 'SK', 'Slovakia');
    oTable.Items.Add(152, 'SLO', 'Slovenia');
    oTable.Items.Add(158, 'SME', 'Suriname');
    oTable.Items.Add(146, 'SN', 'Senegal');
    oTable.Items.Add(139, 'SOL', 'Solomon Islands');
    oTable.Items.Add(153, 'SP', 'Somalia');
    oTable.Items.Add(142, 'STP', 'Sao Tome and Principe');
    oTable.Items.Add(156, 'SUD', 'Sudan');
    oTable.Items.Add(114, 'SWA', 'Namibia');
    oTable.Items.Add(147, 'SY', 'Seychelles');
    oTable.Items.Add(160, 'SYR', 'Syria');
    oTable.Items.Add(164, 'T', 'Thailand');
    oTable.Items.Add(161, 'TAD', 'Tajikistan');
    oTable.Items.Add(165, 'TG', 'Togo');
    oTable.Items.Add(31, 'TJ', 'China');
    oTable.Items.Add(172, 'TMN', 'Turkmenistan');
    oTable.Items.Add(171, 'TN', 'Tunisia');
    oTable.Items.Add(170, 'TR', 'Turkey');
    oTable.Items.Add(167, 'TT', 'Trinidad and Tobago');
    oTable.Items.Add(175, 'UA', 'Ukraine');
    oTable.Items.Add(182, 'UAE', 'United Arab Emirates');
    oTable.Items.Add(183, 'USA', 'United States of America');
    oTable.Items.Add(178, 'USB', 'Uzbekistan');
    oTable.Items.Add(180, 'V', 'Vatican City State');
    oTable.Items.Add(184, 'VN', 'Vietnam');
    oTable.Items.Add(46, 'WAG', 'Gambia');
    oTable.Items.Add(148, 'WAL', 'Sierra Leone');
    oTable.Items.Add(121, 'WAN', 'Nigeria');
    oTable.Items.Add(35, 'WD', 'Dominica');
    oTable.Items.Add(49, 'WG', 'Grenada');
    oTable.Items.Add(137, 'WL', 'St. Lucia');
    oTable.Items.Add(186, 'WS', 'Western Samoa');
    oTable.Items.Add(138, 'WV', 'St. Vincent and the Grenadines');
    oTable.Items.Add(181, 'YV', 'Venezuela');
    oTable.Items.Add(140, 'Z', 'Zambia');
    oTable.Items.Add(157, 'ZA', 'South Africa');
    oTable.Items.Add(187, 'ZRE', 'Zaire');
    oTable.Items.Add(149, 'ZW', 'Zimbabwe');
End;


procedure LoadTable172(oTables : THL7V2ModelTables);
Begin
  oTables.Add(172, 'VETERANS MILITARY STATUS');
End;


procedure LoadTable173(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(173, 'COORDINATION OF BENEFITS');
    oTable.Items.Add(1, 'CO', 'Coordination');
    oTable.Items.Add(2, 'IN', 'Independent');
End;


procedure LoadTable174(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(174, 'NATURE OF TEST/OBSERVATION');
    oTable.Items.Add(3, 'A', 'Atomic test/observation');
    oTable.Items.Add(5, 'C', 'Calculated single observation');
    oTable.Items.Add(2, 'F', 'Functional procedure');
    oTable.Items.Add(1, 'P', 'Profile or battery');
    oTable.Items.Add(4, 'S', 'Superset--a set of batteries ordered');
End;


procedure LoadTable175(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(175, 'MASTER FILE IDENTIFIER CODE');
    oTable.Items.Add(1, 'CDM', 'Charge description master file (see chapter 6, appendix)');
    oTable.Items.Add(4, 'OM1', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(5, 'OM2', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(6, 'OM3', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(7, 'OM4', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(8, 'OM5', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(9, 'OM6', 'Observation text master file (i.e., Lab) (see Chapter 7, Appendix)');
    oTable.Items.Add(3, 'PRA', 'Practitioner master file (see chapter 8, appendix)');
    oTable.Items.Add(2, 'STF', 'Staff master file (see chapter 8, Appendix)');
End;


procedure LoadTable176(oTables : THL7V2ModelTables);
Begin
  oTables.Add(176, 'MASTER FILE APPLICATION IDENTIFIER');
End;


procedure LoadTable177(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(177, 'CONFIDENTIALITY CODE');
    oTable.Items.Add(8, 'AID', 'AIDS patient');
    oTable.Items.Add(4, 'EMP', 'Employee');
    oTable.Items.Add(10, 'ETH', 'Alcohol / drug treatment patient');
    oTable.Items.Add(9, 'HIV', 'HIV(+) patient');
    oTable.Items.Add(7, 'PSY', 'Psychiatric patient');
    oTable.Items.Add(2, 'R', 'Restricted');
    oTable.Items.Add(3, 'U', 'Usual control');
    oTable.Items.Add(5, 'UWM', 'Unwed mother');
    oTable.Items.Add(1, 'V', 'Very restricted');
    oTable.Items.Add(6, 'VIP', 'Very important person or celebrity');
End;


procedure LoadTable178(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(178, 'FILE-LEVEL EVENT CODE');
    oTable.Items.Add(1, 'REP', 'Replace current version of this master file with the version contained in this message');
    oTable.Items.Add(2, 'UPD', 'Change file records as defined in the record level event codes for each record that follows');
End;


procedure LoadTable179(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(179, 'Response Level');
    oTable.Items.Add(3, 'AL', 'Always');
    oTable.Items.Add(2, 'ER', 'Error / reject conditions only');
    oTable.Items.Add(1, 'NE', 'Never - no application level response needed');
    oTable.Items.Add(4, 'SU', 'Success');
End;


procedure LoadTable180(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(180, 'REcord Level Event Code');
    oTable.Items.Add(5, 'MAC', 'Reactivate deactivated record');
    oTable.Items.Add(1, 'MAD', 'Add record to master file');
    oTable.Items.Add(4, 'MDC', 'Deactivate - discontinue using record in master file, but do not delete from database');
    oTable.Items.Add(2, 'MDL', 'Delete record from master file');
    oTable.Items.Add(3, 'MUP', 'Update record for master file');
End;


procedure LoadTable181(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(181, 'MFN Recode-Level Error Return');
    oTable.Items.Add(1, 'S', 'Successful posting of the record defined by the MFE segment');
    oTable.Items.Add(2, 'U', 'Unsuccessful posting of the record defined by the MFE segment');
End;


procedure LoadTable182(oTables : THL7V2ModelTables);
Begin
  oTables.Add(182, '');
End;


procedure LoadTable183(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(183, 'Active/Inactive');
    oTable.Items.Add(1, 'A', 'Active staff');
    oTable.Items.Add(2, 'I', 'Inactive staff');
End;


procedure LoadTable184(oTables : THL7V2ModelTables);
Begin
  oTables.Add(184, '');
End;


procedure LoadTable185(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(185, 'Preferred Method Of Contrct');
    oTable.Items.Add(5, 'B', 'Beeper number');
    oTable.Items.Add(4, 'C', 'Cellular phone number');
    oTable.Items.Add(6, 'E', 'E-mail address (not in TN format)');
    oTable.Items.Add(3, 'F', 'Fax number');
    oTable.Items.Add(1, 'H', 'Home phone number');
    oTable.Items.Add(2, 'O', 'Office phone number');
End;


procedure LoadTable186(oTables : THL7V2ModelTables);
Begin
  oTables.Add(186, 'Practioner Category');
End;


procedure LoadTable187(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(187, '');
    oTable.Items.Add(2, 'I', 'Institution bills for provider');
    oTable.Items.Add(1, 'P', 'Provider does own billing');
End;


procedure LoadTable188(oTables : THL7V2ModelTables);
Begin
  oTables.Add(188, '');
End;


procedure LoadTable189(oTables : THL7V2ModelTables);
Begin
  oTables.Add(189, '');
End;


procedure LoadTable190(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(190, 'Adress Type');
    oTable.Items.Add(4, 'B', 'Business');
    oTable.Items.Add(1, 'C', 'Current or Temporary');
    oTable.Items.Add(6, 'H', 'Home');
    oTable.Items.Add(3, 'M', 'Mailing');
    oTable.Items.Add(5, 'O', 'Office');
    oTable.Items.Add(2, 'P', 'Permanent');
End;


procedure LoadTable191(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(191, 'Type Of Data');
    oTable.Items.Add(5, 'FT', 'Formatted Text');
    oTable.Items.Add(2, 'NS', 'Non-scanned Image');
    oTable.Items.Add(3, 'SD', 'Scanned Document');
    oTable.Items.Add(1, 'SI', 'Scanned Image');
    oTable.Items.Add(4, 'TX', 'Machine Readable Text Document');
End;


procedure LoadTable192(oTables : THL7V2ModelTables);
Begin
  oTables.Add(192, 'Visit Id type');
End;


procedure LoadTable193(oTables : THL7V2ModelTables);
Var
  oTable : THL7V2ModelTable;
Begin
  oTable := oTables.Add(193, 'Amount Class');
    oTable.Items.Add(1, 'AT', 'Amount');
    oTable.Items.Add(2, 'LM', 'Limit');
    oTable.Items.Add(3, 'PC', 'Percentage');
    oTable.Items.Add(4, 'UL', 'Unlimited');
End;


procedure Definitions22LoadTables(oTables : THL7V2ModelTables);
Begin
  LoadTable0(oTables);
  LoadTable1(oTables);
  LoadTable2(oTables);
  LoadTable3(oTables);
  LoadTable4(oTables);
  LoadTable5(oTables);
  LoadTable6(oTables);
  LoadTable7(oTables);
  LoadTable8(oTables);
  LoadTable9(oTables);
  LoadTable10(oTables);
  LoadTable11(oTables);
  LoadTable12(oTables);
  LoadTable13(oTables);
  LoadTable14(oTables);
  LoadTable15(oTables);
  LoadTable16(oTables);
  LoadTable17(oTables);
  LoadTable18(oTables);
  LoadTable19(oTables);
  LoadTable20(oTables);
  LoadTable21(oTables);
  LoadTable22(oTables);
  LoadTable23(oTables);
  LoadTable24(oTables);
  LoadTable25(oTables);
  LoadTable26(oTables);
  LoadTable27(oTables);
  LoadTable28(oTables);
  LoadTable29(oTables);
  LoadTable30(oTables);
  LoadTable31(oTables);
  LoadTable32(oTables);
  LoadTable33(oTables);
  LoadTable34(oTables);
  LoadTable35(oTables);
  LoadTable36(oTables);
  LoadTable37(oTables);
  LoadTable38(oTables);
  LoadTable39(oTables);
  LoadTable40(oTables);
  LoadTable41(oTables);
  LoadTable42(oTables);
  LoadTable43(oTables);
  LoadTable44(oTables);
  LoadTable45(oTables);
  LoadTable46(oTables);
  LoadTable47(oTables);
  LoadTable48(oTables);
  LoadTable49(oTables);
  LoadTable50(oTables);
  LoadTable51(oTables);
  LoadTable52(oTables);
  LoadTable53(oTables);
  LoadTable55(oTables);
  LoadTable56(oTables);
  LoadTable57(oTables);
  LoadTable58(oTables);
  LoadTable59(oTables);
  LoadTable60(oTables);
  LoadTable61(oTables);
  LoadTable62(oTables);
  LoadTable63(oTables);
  LoadTable64(oTables);
  LoadTable65(oTables);
  LoadTable66(oTables);
  LoadTable67(oTables);
  LoadTable68(oTables);
  LoadTable69(oTables);
  LoadTable70(oTables);
  LoadTable71(oTables);
  LoadTable72(oTables);
  LoadTable73(oTables);
  LoadTable74(oTables);
  LoadTable75(oTables);
  LoadTable76(oTables);
  LoadTable77(oTables);
  LoadTable78(oTables);
  LoadTable79(oTables);
  LoadTable80(oTables);
  LoadTable81(oTables);
  LoadTable82(oTables);
  LoadTable83(oTables);
  LoadTable84(oTables);
  LoadTable85(oTables);
  LoadTable86(oTables);
  LoadTable87(oTables);
  LoadTable88(oTables);
  LoadTable89(oTables);
  LoadTable90(oTables);
  LoadTable91(oTables);
  LoadTable92(oTables);
  LoadTable93(oTables);
  LoadTable94(oTables);
  LoadTable95(oTables);
  LoadTable96(oTables);
  LoadTable97(oTables);
  LoadTable98(oTables);
  LoadTable99(oTables);
  LoadTable100(oTables);
  LoadTable101(oTables);
  LoadTable102(oTables);
  LoadTable103(oTables);
  LoadTable104(oTables);
  LoadTable105(oTables);
  LoadTable106(oTables);
  LoadTable107(oTables);
  LoadTable108(oTables);
  LoadTable109(oTables);
  LoadTable110(oTables);
  LoadTable111(oTables);
  LoadTable112(oTables);
  LoadTable113(oTables);
  LoadTable114(oTables);
  LoadTable115(oTables);
  LoadTable116(oTables);
  LoadTable117(oTables);
  LoadTable118(oTables);
  LoadTable119(oTables);
  LoadTable120(oTables);
  LoadTable121(oTables);
  LoadTable122(oTables);
  LoadTable123(oTables);
  LoadTable124(oTables);
  LoadTable125(oTables);
  LoadTable126(oTables);
  LoadTable127(oTables);
  LoadTable128(oTables);
  LoadTable129(oTables);
  LoadTable130(oTables);
  LoadTable131(oTables);
  LoadTable132(oTables);
  LoadTable133(oTables);
  LoadTable135(oTables);
  LoadTable136(oTables);
  LoadTable137(oTables);
  LoadTable139(oTables);
  LoadTable140(oTables);
  LoadTable141(oTables);
  LoadTable142(oTables);
  LoadTable143(oTables);
  LoadTable144(oTables);
  LoadTable145(oTables);
  LoadTable146(oTables);
  LoadTable147(oTables);
  LoadTable148(oTables);
  LoadTable149(oTables);
  LoadTable150(oTables);
  LoadTable151(oTables);
  LoadTable152(oTables);
  LoadTable153(oTables);
  LoadTable155(oTables);
  LoadTable156(oTables);
  LoadTable157(oTables);
  LoadTable158(oTables);
  LoadTable159(oTables);
  LoadTable160(oTables);
  LoadTable161(oTables);
  LoadTable162(oTables);
  LoadTable163(oTables);
  LoadTable164(oTables);
  LoadTable165(oTables);
  LoadTable166(oTables);
  LoadTable167(oTables);
  LoadTable168(oTables);
  LoadTable169(oTables);
  LoadTable170(oTables);
  LoadTable171(oTables);
  LoadTable172(oTables);
  LoadTable173(oTables);
  LoadTable174(oTables);
  LoadTable175(oTables);
  LoadTable176(oTables);
  LoadTable177(oTables);
  LoadTable178(oTables);
  LoadTable179(oTables);
  LoadTable180(oTables);
  LoadTable181(oTables);
  LoadTable182(oTables);
  LoadTable183(oTables);
  LoadTable184(oTables);
  LoadTable185(oTables);
  LoadTable186(oTables);
  LoadTable187(oTables);
  LoadTable188(oTables);
  LoadTable189(oTables);
  LoadTable190(oTables);
  LoadTable191(oTables);
  LoadTable192(oTables);
  LoadTable193(oTables);
End;


procedure Definitions22LoadDataTypes(oDataTypes : THL7V2ModelDataTypes);
Begin
  oDataTypes.Add('*', 'varies', 0);
  oDataTypes.Add('AD', 'ADDRESS', 0);
  oDataTypes.Add('CE', 'CODED ELEMENT', 0);
  oDataTypes.Add('CF', 'CODED ELEMENT WITH FORMATTED VALUES', 0);
  oDataTypes.Add('CK', 'COMPOSITE ID W/CHK DIGIT', 0);
  oDataTypes.Add('CM', 'COMPOSITE', 0);
  oDataTypes.Add('CN', 'COMPOSITE ID AND NAME', 0);
  oDataTypes.Add('CQ', 'COMPOSITE QUANTITY WITH UNITS', 0);
  oDataTypes.Add('DT', 'DATE', 8);
  oDataTypes.Add('FT', 'FORMATTED TEXT', 0);
  oDataTypes.Add('ID', 'CODED VALUE', 0);
  oDataTypes.Add('MO', 'MONEY', 0);
  oDataTypes.Add('NM', 'NUMERIC', 0);
  oDataTypes.Add('PN', 'PERSON NAME', 48);
  oDataTypes.Add('RP', 'REFERENCE POINTER', 0);
  oDataTypes.Add('SI', 'SEQUENCE ID', 4);
  oDataTypes.Add('ST', 'STRING', 0);
  oDataTypes.Add('TM', 'TIME', 6);
  oDataTypes.Add('TN', 'TELEPHONE NUMBER', 0);
  oDataTypes.Add('TQ', 'TIMING / QUANTITY', 0);
  oDataTypes.Add('TS', 'TIME STAMP', 19);
  oDataTypes.Add('TX', 'TEXT', 0);
End;


procedure Definitions22LoadComponents(oComponents : THL7V2ModelComponents);
Begin
  oComponents.Add('message type', 'ID', 76, 1);
  oComponents.Add('Trigger Event', 'ID', 3, 2);
  oComponents.Add('identifier', 'ID', 0, 3);
  oComponents.Add('text', 'ST', 0, 4);
  oComponents.Add('name of coding system', 'ST', 0, 5);
  oComponents.Add('alternate identifier', 'ST', 0, 6);
  oComponents.Add('alternate text', 'ST', 0, 7);
  oComponents.Add('name of alternate coding system', 'ST', 0, 8);
  oComponents.Add('Segment-ID', 'ST', 0, 9);
  oComponents.Add('Sequence', 'NM', 0, 10);
  oComponents.Add('Field-Position', 'NM', 0, 11);
  oComponents.Add('Code Identifying Error', 'CE', 0, 12);
  oComponents.Add('First data code value', 'ST', 0, 13);
  oComponents.Add('Last data code calue', 'ST', 0, 14);
  oComponents.Add('Batch total 1', 'NM', 0, 15);
  oComponents.Add('Batch total 2', 'NM', 0, 16);
  oComponents.Add('Patient ID', 'ST', 0, 17);
  oComponents.Add('Check digit', 'NM', 0, 18);
  oComponents.Add('Check digit scheme', 'ID', 61, 19);
  oComponents.Add('familiy name', 'ST', 0, 21);
  oComponents.Add('given name', 'ST', 0, 22);
  oComponents.Add('middle initial or name', 'ST', 0, 23);
  oComponents.Add('suffix (e.g. JR or III)', 'ST', 0, 24);
  oComponents.Add('prefix (e.g. DR)', 'ST', 0, 25);
  oComponents.Add('degree (e.g. MD)', 'ST', 0, 26);
  oComponents.Add('street address', 'ST', 0, 27);
  oComponents.Add('other designation', 'ST', 0, 28);
  oComponents.Add('city', 'ST', 0, 29);
  oComponents.Add('state or province', 'ST', 0, 30);
  oComponents.Add('zip or postal code', 'ID', 0, 31);
  oComponents.Add('country', 'ID', 0, 32);
  oComponents.Add('type', 'ID', 0, 33);
  oComponents.Add('other geographic designation', 'ST', 0, 34);
  oComponents.Add('License Number', 'ST', 0, 35);
  oComponents.Add('issuing state,province,country', 'ST', 0, 36);
  oComponents.Add('nurse unit (Station)', 'ID', 79, 37);
  oComponents.Add('Room', 'ID', 79, 38);
  oComponents.Add('Bed', 'ID', 79, 39);
  oComponents.Add('Facility ID', 'ID', 115, 40);
  oComponents.Add('Bed Status', 'ID', 116, 41);
  oComponents.Add('Etage', 'ID', 79, 42);
  oComponents.Add('physician ID', 'ID', 10, 43);
  oComponents.Add('source table id', 'ID', 0, 44);
  oComponents.Add('Adresse', 'AD', 0, 45);
  oComponents.Add('Telefon', 'TN', 0, 46);
  oComponents.Add('Faxnummer', 'TN', 0, 47);
  oComponents.Add('Online-Nummer', 'TN', 0, 48);
  oComponents.Add('E-Mail', 'ST', 0, 49);
  oComponents.Add('financial class ID', 'ID', 64, 50);
  oComponents.Add('effective date', 'TS', 0, 51);
  oComponents.Add('code', 'ID', 113, 52);
  oComponents.Add('discharge location', 'ID', 0, 53);
  oComponents.Add('job code', 'ID', 0, 54);
  oComponents.Add('employee classification', 'ID', 0, 55);
  oComponents.Add('account number', 'NM', 0, 56);
  oComponents.Add('unique placer id', 'ID', 0, 57);
  oComponents.Add('placer application', 'ID', 0, 58);
  oComponents.Add('unique filler id', 'ID', 0, 59);
  oComponents.Add('filler application ID', 'ID', 0, 60);
  oComponents.Add('unique group id', 'ID', 0, 61);
  oComponents.Add('placer application id', 'ID', 0, 62);
  oComponents.Add('Quantity', 'CQ', 0, 63);
  oComponents.Add('interval', 'CM', 0, 64);
  oComponents.Add('duration', 'ST', 0, 65);
  oComponents.Add('start date/time', 'TS', 0, 66);
  oComponents.Add('end date/time', 'TS', 0, 67);
  oComponents.Add('priority', 'ID', 0, 68);
  oComponents.Add('condition', 'ST', 0, 69);
  oComponents.Add('text (TX)', 'TX', 0, 70);
  oComponents.Add('conjunction', 'ID', 0, 71);
  oComponents.Add('order sequencing', 'ST', 0, 72);
  oComponents.Add('parent''s placer order number', 'ST', 0, 73);
  oComponents.Add('parent''s filler order number', 'ST', 0, 74);
  oComponents.Add('ID number', 'ID', 0, 75);
  oComponents.Add('When to Charge', 'ID', 100, 77);
  oComponents.Add('date/time', 'TS', 0, 78);
  oComponents.Add('quantity', 'ST', 0, 80);
  oComponents.Add('units', 'ST', 0, 81);
  oComponents.Add('Specimen source name or code', 'CE', 0, 82);
  oComponents.Add('additives', 'TX', 0, 83);
  oComponents.Add('freetext', 'TX', 0, 84);
  oComponents.Add('body site', 'CE', 0, 85);
  oComponents.Add('site modifier', 'CE', 0, 86);
  oComponents.Add('dollar amount', 'ST', 0, 87);
  oComponents.Add('charge code', 'ST', 0, 88);
  oComponents.Add('interpreter / technician', 'CN', 0, 89);
  oComponents.Add('location', 'CM', 0, 90);
  oComponents.Add('authorization number', 'ST', 0, 97);
  oComponents.Add('date', 'DT', 0, 98);
  oComponents.Add('source', 'ST', 0, 99);
  oComponents.Add('room type', 'ID', 145, 100);
  oComponents.Add('amount type', 'ID', 146, 101);
  oComponents.Add('coverage amount', 'NM', 0, 102);
  oComponents.Add('policy type', 'ID', 147, 103);
  oComponents.Add('amount class', 'ID', 193, 104);
  oComponents.Add('Saal', 'ST', 0, 105);
  oComponents.Add('Tisch', 'ST', 0, 106);
  oComponents.Add('Stuhl', 'ST', 0, 107);
  oComponents.Add('Dispense / Deliver to Location', 'CM', 0, 108);
  oComponents.Add('Procedure Practitioner  ID', 'CN', 10, 109);
  oComponents.Add('delay days', 'ST', 0, 110);
  oComponents.Add('Penalty ID', 'ID', 148, 111);
  oComponents.Add('pre-certification patient type', 'ID', 150, 112);
  oComponents.Add('occurrence code', 'ID', 0, 114);
  oComponents.Add('Value code', 'ID', 0, 115);
  oComponents.Add('occurrence span code', 'ID', 0, 116);
  oComponents.Add('Date', 'TS', 0, 117);
  oComponents.Add('specialty name', 'ST', 0, 118);
  oComponents.Add('ID number', 'ST', 0, 119);
  oComponents.Add('Privilege', 'CE', 0, 120);
  oComponents.Add('location', 'AD', 0, 121);
  oComponents.Add('amount', 'NM', 0, 122);
  oComponents.Add('number of days', 'NM', 0, 123);
  oComponents.Add('penalty amount', 'NM', 0, 124);
  oComponents.Add('pre-certication required', 'ID', 0, 125);
  oComponents.Add('pre-certification window', 'TS', 0, 126);
  oComponents.Add('value amount', 'NM', 0, 127);
  oComponents.Add('occurrence date', 'DT', 0, 128);
  oComponents.Add('occurrence span start date', 'DT', 0, 129);
  oComponents.Add('occurrence span stop date', 'DT', 0, 130);
  oComponents.Add('institution name', 'CE', 0, 131);
  oComponents.Add('governing board', 'ST', 0, 132);
  oComponents.Add('eligible or certified', 'ID', 0, 133);
  oComponents.Add('date of certification', 'DT', 0, 134);
  oComponents.Add('type of ID number (ID)', 'ID', 0, 135);
  oComponents.Add('state/other qualifiying info', 'ST', 0, 136);
  oComponents.Add('privilege class', 'CE', 0, 137);
  oComponents.Add('expiration date', 'DT', 0, 138);
  oComponents.Add('activation date', 'DT', 0, 139);
  oComponents.Add('day type', 'ID', 149, 140);
  oComponents.Add('procedure practitioner type', 'ID', 133, 141);
  oComponents.Add('repeat pattern', 'ST', 0, 142);
  oComponents.Add('explicit time intevall', 'ST', 0, 143);
  oComponents.Add('Klinik', 'ID', 115, 144);
  oComponents.Add('Zentrum', 'ID', 115, 145);
  oComponents.Add('Reference Range', 'CE', 0, 146);
  oComponents.Add('Sex', 'ID', 1, 147);
  oComponents.Add('Age Range', 'CE', 0, 148);
  oComponents.Add('Gestational Age Range', 'CE', 0, 149);
  oComponents.Add('Species', 'ST', 0, 150);
  oComponents.Add('Race / Subspecies', 'ID', 5, 151);
  oComponents.Add('Text Condition', 'ST', 0, 152);
  oComponents.Add('Low Value', 'CE', 0, 153);
  oComponents.Add('High Value', 'CE', 0, 154);
  oComponents.Add('Range', 'CM', 0, 155);
  oComponents.Add('Numeric Change', 'NM', 0, 156);
  oComponents.Add('Percent per Change', 'NM', 0, 157);
  oComponents.Add('Days', 'NM', 0, 158);
  oComponents.Add('numeric threshold', 'NM', 0, 417);
  oComponents.Add('change', 'ST', 0, 418);
  oComponents.Add('length of time-days', 'NM', 0, 419);
  oComponents.Add('time of an event', 'ST', 0, 439);
  oComponents.Add('degree of precision', 'ST', 0, 440);
  oComponents.Add('varies', 'ST', 0, 9999);
End;


procedure Definitions22LoadStructures(oStructures : THL7V2ModelStructures; oComponents : THL7V2ModelComponents);
Var
  oStructure : THL7V2ModelStructure;
Begin
  oStructure := oStructures.Add('TS', 'time stamp', 'TS', 0);
    oStructure.Components.Add(oComponents.GetByNumber(439).Link);
    oStructure.Components.Add(oComponents.GetByNumber(440).Link);
  oStructure := oStructures.Add('TQ', 'timing quantity', 'TQ', 0);
    oStructure.Components.Add(oComponents.GetByNumber(63).Link);
    oStructure.Components.Add(oComponents.GetByNumber(64).Link);
    oStructure.Components.Add(oComponents.GetByNumber(65).Link);
    oStructure.Components.Add(oComponents.GetByNumber(66).Link);
    oStructure.Components.Add(oComponents.GetByNumber(67).Link);
    oStructure.Components.Add(oComponents.GetByNumber(68).Link);
    oStructure.Components.Add(oComponents.GetByNumber(69).Link);
    oStructure.Components.Add(oComponents.GetByNumber(70).Link);
    oStructure.Components.Add(oComponents.GetByNumber(71).Link);
    oStructure.Components.Add(oComponents.GetByNumber(72).Link);
  oStructures.Add('RP', 'reference pointer', 'RP', 0);
  oStructure := oStructures.Add('PN', 'person name', 'PN', 0);
    oStructure.Components.Add(oComponents.GetByNumber(21).Link);
    oStructure.Components.Add(oComponents.GetByNumber(22).Link);
    oStructure.Components.Add(oComponents.GetByNumber(23).Link);
    oStructure.Components.Add(oComponents.GetByNumber(24).Link);
    oStructure.Components.Add(oComponents.GetByNumber(25).Link);
    oStructure.Components.Add(oComponents.GetByNumber(26).Link);
  oStructures.Add('MO', 'money', 'MO', 0);
  oStructure := oStructures.Add('CQ_QUANTITY', 'CQ f'#252'r Mengenangaben', 'CQ', 0);
    oStructure.Components.Add(oComponents.GetByNumber(80).Link);
    oStructure.Components.Add(oComponents.GetByNumber(81).Link);
  oStructures.Add('CQ_COMP_QUANT', 'COMPOSITE QUANTITY WITH UNITS', 'CQ', 0);
  oStructures.Add('COMP_ID_NAME', 'COMPOSITE ID AND NAME', 'CN', 0);
  oStructures.Add('COMP_ID_DIGIT', 'COMPOSITE ID W/CHK DIGIT', 'CK', 0);
  oStructure := oStructures.Add('CN_PHYSICIAN', 'CN f'#252'r '#196'rzte', 'CN', 0);
    oStructure.Components.Add(oComponents.GetByNumber(43).Link);
    oStructure.Components.Add(oComponents.GetByNumber(21).Link);
    oStructure.Components.Add(oComponents.GetByNumber(22).Link);
    oStructure.Components.Add(oComponents.GetByNumber(23).Link);
    oStructure.Components.Add(oComponents.GetByNumber(24).Link);
    oStructure.Components.Add(oComponents.GetByNumber(25).Link);
    oStructure.Components.Add(oComponents.GetByNumber(26).Link);
    oStructure.Components.Add(oComponents.GetByNumber(44).Link);
    oStructure.Components.Add(oComponents.GetByNumber(45).Link);
    oStructure.Components.Add(oComponents.GetByNumber(46).Link);
    oStructure.Components.Add(oComponents.GetByNumber(47).Link);
    oStructure.Components.Add(oComponents.GetByNumber(48).Link);
    oStructure.Components.Add(oComponents.GetByNumber(49).Link);
  oStructure := oStructures.Add('CN_PERSON', 'CN f'#252'r Personen', 'CN', 0);
    oStructure.Components.Add(oComponents.GetByNumber(75).Link);
    oStructure.Components.Add(oComponents.GetByNumber(21).Link);
    oStructure.Components.Add(oComponents.GetByNumber(22).Link);
    oStructure.Components.Add(oComponents.GetByNumber(23).Link);
    oStructure.Components.Add(oComponents.GetByNumber(24).Link);
    oStructure.Components.Add(oComponents.GetByNumber(25).Link);
    oStructure.Components.Add(oComponents.GetByNumber(26).Link);
    oStructure.Components.Add(oComponents.GetByNumber(44).Link);
  oStructure := oStructures.Add('CM_VR', 'value qualifier', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(13).Link);
    oStructure.Components.Add(oComponents.GetByNumber(14).Link);
  oStructure := oStructures.Add('CM_UVC', 'Value code and amount', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(115).Link);
    oStructure.Components.Add(oComponents.GetByNumber(127).Link);
  oStructures.Add('CM_UNDEFINED', 'undefined CM data type', 'CM', 0);
  oStructure := oStructures.Add('CM_SPS', 'specimen source', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(82).Link);
    oStructure.Components.Add(oComponents.GetByNumber(83).Link);
    oStructure.Components.Add(oComponents.GetByNumber(84).Link);
    oStructure.Components.Add(oComponents.GetByNumber(85).Link);
    oStructure.Components.Add(oComponents.GetByNumber(86).Link);
  oStructure := oStructures.Add('CM_SPD', 'Specialty', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(118).Link);
    oStructure.Components.Add(oComponents.GetByNumber(132).Link);
    oStructure.Components.Add(oComponents.GetByNumber(133).Link);
    oStructure.Components.Add(oComponents.GetByNumber(134).Link);
  oStructure := oStructures.Add('CM_RMC', 'Room Coverage', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(100).Link);
    oStructure.Components.Add(oComponents.GetByNumber(101).Link);
    oStructure.Components.Add(oComponents.GetByNumber(102).Link);
  oStructure := oStructures.Add('CM_RI', 'interval', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(142).Link);
    oStructure.Components.Add(oComponents.GetByNumber(143).Link);
  oStructure := oStructures.Add('CM_RFR', 'reference range', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(146).Link);
    oStructure.Components.Add(oComponents.GetByNumber(147).Link);
    oStructure.Components.Add(oComponents.GetByNumber(148).Link);
    oStructure.Components.Add(oComponents.GetByNumber(149).Link);
    oStructure.Components.Add(oComponents.GetByNumber(150).Link);
    oStructure.Components.Add(oComponents.GetByNumber(151).Link);
    oStructure.Components.Add(oComponents.GetByNumber(152).Link);
  oStructure := oStructures.Add('CM_RANGE', 'Wertebereich', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(153).Link);
    oStructure.Components.Add(oComponents.GetByNumber(154).Link);
  oStructure := oStructures.Add('CM_PTA', 'Policy Type', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(103).Link);
    oStructure.Components.Add(oComponents.GetByNumber(104).Link);
    oStructure.Components.Add(oComponents.GetByNumber(122).Link);
  oStructure := oStructures.Add('CM_PRACTITIONER', 'Ma'#223'nahme durchgef'#252'hrt von', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(109).Link);
    oStructure.Components.Add(oComponents.GetByNumber(141).Link);
  oStructure := oStructures.Add('CM_POSITION', 'Sitzplatz bzw. Saal / Tisch / Stuhl', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(105).Link);
    oStructure.Components.Add(oComponents.GetByNumber(106).Link);
    oStructure.Components.Add(oComponents.GetByNumber(107).Link);
  oStructure := oStructures.Add('CM_PLN', 'Practitioner ID Numbers', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(119).Link);
    oStructure.Components.Add(oComponents.GetByNumber(135).Link);
    oStructure.Components.Add(oComponents.GetByNumber(136).Link);
  oStructure := oStructures.Add('CM_PLACER', 'Auftragsnummer des Auftraggebers / der auftraggebenden Stelle', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(57).Link);
    oStructure.Components.Add(oComponents.GetByNumber(58).Link);
  oStructure := oStructures.Add('CM_PIP', 'Privileges', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(120).Link);
    oStructure.Components.Add(oComponents.GetByNumber(137).Link);
    oStructure.Components.Add(oComponents.GetByNumber(138).Link);
    oStructure.Components.Add(oComponents.GetByNumber(139).Link);
  oStructure := oStructures.Add('CM_PEN', 'penalty', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(111).Link);
    oStructure.Components.Add(oComponents.GetByNumber(124).Link);
  oStructure := oStructures.Add('CM_PCF', 'Pre-certification required', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(112).Link);
    oStructure.Components.Add(oComponents.GetByNumber(125).Link);
    oStructure.Components.Add(oComponents.GetByNumber(126).Link);
  oStructure := oStructures.Add('CM_PAT_ID_0192', 'Patient ID with table 0192', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(17).Link);
    oStructure.Components.Add(oComponents.GetByNumber(18).Link);
    oStructure.Components.Add(oComponents.GetByNumber(19).Link);
    oStructure.Components.Add(oComponents.GetByNumber(40).Link);
    oStructure.Components.Add(oComponents.GetByNumber(33).Link);
  oStructure := oStructures.Add('CM_PAT_ID', 'Patient ID', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(17).Link);
    oStructure.Components.Add(oComponents.GetByNumber(18).Link);
    oStructure.Components.Add(oComponents.GetByNumber(19).Link);
    oStructure.Components.Add(oComponents.GetByNumber(40).Link);
    oStructure.Components.Add(oComponents.GetByNumber(33).Link);
  oStructure := oStructures.Add('CM_OSP', 'occurence span', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(116).Link);
    oStructure.Components.Add(oComponents.GetByNumber(129).Link);
    oStructure.Components.Add(oComponents.GetByNumber(130).Link);
  oStructure := oStructures.Add('CM_OCD', 'occurence', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(114).Link);
    oStructure.Components.Add(oComponents.GetByNumber(128).Link);
  oStructure := oStructures.Add('CM_NDL', 'observing practitioner', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(89).Link);
    oStructure.Components.Add(oComponents.GetByNumber(66).Link);
    oStructure.Components.Add(oComponents.GetByNumber(67).Link);
    oStructure.Components.Add(oComponents.GetByNumber(90).Link);
  oStructure := oStructures.Add('CM_MSG', 'Message Type', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(1).Link);
    oStructure.Components.Add(oComponents.GetByNumber(2).Link);
  oStructure := oStructures.Add('CM_MOC', 'Charge To Practise', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(87).Link);
    oStructure.Components.Add(oComponents.GetByNumber(88).Link);
  oStructure := oStructures.Add('CM_LICENSE_NO', 'CM f'#252'r F'#252'hrerscheinlizenzen', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(35).Link);
    oStructure.Components.Add(oComponents.GetByNumber(36).Link);
  oStructure := oStructures.Add('CM_LA1', 'Location with address information', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(108).Link);
    oStructure.Components.Add(oComponents.GetByNumber(121).Link);
  oStructure := oStructures.Add('CM_JOB_CODE', 'Berufsbezeichnung', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(54).Link);
    oStructure.Components.Add(oComponents.GetByNumber(55).Link);
  oStructure := oStructures.Add('CM_INTERNAL_LOCATION', 'CM f'#252'r Ortsangaben im Krankenhaus', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(37).Link);
    oStructure.Components.Add(oComponents.GetByNumber(38).Link);
    oStructure.Components.Add(oComponents.GetByNumber(39).Link);
    oStructure.Components.Add(oComponents.GetByNumber(40).Link);
    oStructure.Components.Add(oComponents.GetByNumber(41).Link);
    oStructure.Components.Add(oComponents.GetByNumber(42).Link);
    oStructure.Components.Add(oComponents.GetByNumber(144).Link);
    oStructure.Components.Add(oComponents.GetByNumber(145).Link);
  oStructure := oStructures.Add('CM_GROUP_ID', 'Auftragsgruppennummer', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(61).Link);
    oStructure.Components.Add(oComponents.GetByNumber(62).Link);
  oStructure := oStructures.Add('CM_FINANCE', 'CM f'#252'r Finanzen', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(50).Link);
    oStructure.Components.Add(oComponents.GetByNumber(51).Link);
  oStructure := oStructures.Add('CM_FILLER', 'Bearbeitungsnummer der Leistungsstelle', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(59).Link);
    oStructure.Components.Add(oComponents.GetByNumber(60).Link);
  oStructure := oStructures.Add('CM_ELD', 'error', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(9).Link);
    oStructure.Components.Add(oComponents.GetByNumber(10).Link);
    oStructure.Components.Add(oComponents.GetByNumber(11).Link);
    oStructure.Components.Add(oComponents.GetByNumber(12).Link);
  oStructure := oStructures.Add('CM_EIP', 'parent order', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(73).Link);
    oStructure.Components.Add(oComponents.GetByNumber(74).Link);
  oStructure := oStructures.Add('CM_DTN', 'Day Type and Number', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(140).Link);
    oStructure.Components.Add(oComponents.GetByNumber(123).Link);
  oStructure := oStructures.Add('CM_DLT', 'delta check', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(155).Link);
    oStructure.Components.Add(oComponents.GetByNumber(417).Link);
    oStructure.Components.Add(oComponents.GetByNumber(418).Link);
    oStructure.Components.Add(oComponents.GetByNumber(419).Link);
  oStructure := oStructures.Add('CM_DLD', 'discharge location', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(53).Link);
    oStructure.Components.Add(oComponents.GetByNumber(51).Link);
  oStructure := oStructures.Add('CM_DIN', 'activation date', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(117).Link);
    oStructure.Components.Add(oComponents.GetByNumber(131).Link);
  oStructure := oStructures.Add('CM_DDI', 'daily deductible', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(110).Link);
    oStructure.Components.Add(oComponents.GetByNumber(122).Link);
    oStructure.Components.Add(oComponents.GetByNumber(123).Link);
  oStructure := oStructures.Add('CM_CCD', 'charge time', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(77).Link);
    oStructure.Components.Add(oComponents.GetByNumber(78).Link);
  oStructure := oStructures.Add('CM_BATCH_TOTAL', 'CM for Batch Totals', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(15).Link);
    oStructure.Components.Add(oComponents.GetByNumber(16).Link);
  oStructure := oStructures.Add('CM_AUI', 'authorization information', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(97).Link);
    oStructure.Components.Add(oComponents.GetByNumber(98).Link);
    oStructure.Components.Add(oComponents.GetByNumber(99).Link);
  oStructure := oStructures.Add('CM_ABS_RANGE', 'absolute range', 'CM', 0);
    oStructure.Components.Add(oComponents.GetByNumber(155).Link);
    oStructure.Components.Add(oComponents.GetByNumber(156).Link);
    oStructure.Components.Add(oComponents.GetByNumber(157).Link);
    oStructure.Components.Add(oComponents.GetByNumber(158).Link);
  oStructure := oStructures.Add('CK_PAT_ID', 'CK f'#252'r Patienten-IDs', 'CK', 0);
    oStructure.Components.Add(oComponents.GetByNumber(17).Link);
    oStructure.Components.Add(oComponents.GetByNumber(18).Link);
    oStructure.Components.Add(oComponents.GetByNumber(19).Link);
    oStructure.Components.Add(oComponents.GetByNumber(40).Link);
  oStructure := oStructures.Add('CK_ACCOUNT_NO', 'Abrechnungsnummer', 'CK', 0);
    oStructure.Components.Add(oComponents.GetByNumber(56).Link);
    oStructure.Components.Add(oComponents.GetByNumber(18).Link);
    oStructure.Components.Add(oComponents.GetByNumber(19).Link);
    oStructure.Components.Add(oComponents.GetByNumber(40).Link);
  oStructures.Add('CK', 'composite ID with check digit', 'CK', 0);
  oStructures.Add('CF', 'coded element with formatted values', 'CF', 0);
  oStructure := oStructures.Add('CE_0184', 'CE_NORM mit Tab. 0184', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0181', 'CE_NORM mit Tab. 0181', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0175', 'CE_NORM mit Tab. 0175', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0165', 'CE_NORM mit Tab. 0165', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0164', 'CE_NORM mit Tab. 0164', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0163', 'CE_NORM mit Tab. 0163', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0162', 'CE_NORM mit Tab. 0162', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0160', 'CE_NORM mit Tab. 0160', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0132', '', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0131', 'CE_NORM mit Tab. 0131', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0129', '', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0118', '', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0066', 'CE_NORM mit Tab. 0066', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0063', '', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0051', 'CE_NORM mit Tab. 0051', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE_0049', 'CE with table 49', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('CE', 'coded element', 'CE', 0);
    oStructure.Components.Add(oComponents.GetByNumber(3).Link);
    oStructure.Components.Add(oComponents.GetByNumber(4).Link);
    oStructure.Components.Add(oComponents.GetByNumber(5).Link);
    oStructure.Components.Add(oComponents.GetByNumber(6).Link);
    oStructure.Components.Add(oComponents.GetByNumber(7).Link);
    oStructure.Components.Add(oComponents.GetByNumber(8).Link);
  oStructure := oStructures.Add('AD', 'address', 'AD', 0);
    oStructure.Components.Add(oComponents.GetByNumber(27).Link);
    oStructure.Components.Add(oComponents.GetByNumber(28).Link);
    oStructure.Components.Add(oComponents.GetByNumber(29).Link);
    oStructure.Components.Add(oComponents.GetByNumber(30).Link);
    oStructure.Components.Add(oComponents.GetByNumber(31).Link);
    oStructure.Components.Add(oComponents.GetByNumber(32).Link);
    oStructure.Components.Add(oComponents.GetByNumber(33).Link);
    oStructure.Components.Add(oComponents.GetByNumber(34).Link);
  oStructures.Add('varies', 'variable data type', '*', 1);
  oStructures.Add('TX', 'text data', 'TX', 1);
  oStructures.Add('TN', 'telephone number', 'TN', 1);
  oStructures.Add('TM', 'time', 'TM', 1);
  oStructures.Add('ST', 'string data', 'ST', 1);
  oStructures.Add('SI', 'SEQUENCE ID', 'SI', 1);
  oStructures.Add('NM', 'numeric', 'NM', 1);
  oStructures.Add('ID', 'CODED VALUE', 'ID', 1);
  oStructures.Add('FT', 'formatted text data', 'FT', 1);
  oStructures.Add('DT', 'DATE', 'DT', 1);
End;


procedure LoadDataElements1(oDataElements : THL7V2ModelDataElements);
Begin
  oDataElements.Add('Field separator', 1, 'ST', 1, 0);
  oDataElements.Add('Encoding characters', 2, 'ST', 4, 0);
  oDataElements.Add('Sending application', 3, 'ST', 15, 0);
  oDataElements.Add('Sending facility', 4, 'ST', 20, 0);
  oDataElements.Add('Receiving application', 5, 'ST', 30, 0);
  oDataElements.Add('Receiving facility', 6, 'ST', 30, 0);
  oDataElements.Add('Date / Time of message', 7, 'TS', 26, 0);
  oDataElements.Add('Security', 8, 'ST', 40, 0);
  oDataElements.Add('Message type', 9, 'CM_MSG', 7, 76);
  oDataElements.Add('Message Control ID', 10, 'ST', 20, 0);
  oDataElements.Add('Processing ID', 11, 'ID', 1, 103);
  oDataElements.Add('Version ID', 12, 'ID', 8, 104);
  oDataElements.Add('Sequence number', 13, 'NM', 15, 0);
  oDataElements.Add('Continuation pointer', 14, 'ST', 180, 0);
  oDataElements.Add('Accept acknowledgement type', 15, 'ID', 2, 155);
  oDataElements.Add('Application acknowledgement type', 16, 'ID', 2, 155);
  oDataElements.Add('Country code', 17, 'ID', 2, 0);
  oDataElements.Add('Acknowledgement code', 18, 'ID', 2, 8);
  oDataElements.Add('Text Message', 20, 'ST', 80, 0);
  oDataElements.Add('Expected Sequence Number', 21, 'NM', 15, 0);
  oDataElements.Add('Delayed Acknowledgement type', 22, 'ID', 1, 102);
  oDataElements.Add('Error Condition', 23, 'CE', 100, 0);
  oDataElements.Add('Error Code and Location', 24, 'CM_ELD', 80, 60);
  oDataElements.Add('Query date / time', 25, 'TS', 26, 0);
  oDataElements.Add('Query Format Code', 26, 'ID', 1, 106);
  oDataElements.Add('Query Priority', 27, 'ID', 1, 91);
  oDataElements.Add('Query ID', 28, 'ST', 10, 0);
  oDataElements.Add('Deferred Response Type', 29, 'ID', 1, 107);
  oDataElements.Add('Deferred response date / time', 30, 'TS', 26, 0);
  oDataElements.Add('Quantity Limited Request', 31, 'CQ_COMP_QUANT', 10, 126);
  oDataElements.Add('Who Subject Filter', 32, 'ST', 20, 0);
  oDataElements.Add('What Subject Filter', 33, 'ID', 3, 48);
  oDataElements.Add('What Department Data Code', 34, 'ST', 20, 0);
  oDataElements.Add('What data code value qualifier', 35, 'CM_VR', 20, 0);
  oDataElements.Add('Query Results Level', 36, 'ID', 1, 108);
  oDataElements.Add('Where Subject Filter', 37, 'ST', 20, 0);
  oDataElements.Add('When data start date / time', 38, 'TS', 26, 0);
  oDataElements.Add('When data end date / time', 39, 'TS', 26, 0);
  oDataElements.Add('What User Qualifier', 40, 'ST', 20, 0);
  oDataElements.Add('Other QRY Subject Filter', 41, 'ST', 20, 0);
  oDataElements.Add('Which date / time qualifier', 42, 'ID', 12, 156);
  oDataElements.Add('Which date / time status qualifier', 43, 'ID', 12, 157);
  oDataElements.Add('Date / time selection qualifier', 44, 'ID', 12, 158);
  oDataElements.Add('R/U date / time', 45, 'TS', 26, 0);
  oDataElements.Add('Report Priority', 46, 'ID', 1, 109);
  oDataElements.Add('R/U Who Subject Definition', 47, 'ST', 20, 0);
  oDataElements.Add('R/U What Subject Definition', 48, 'ID', 3, 48);
  oDataElements.Add('R/U What Department Code', 49, 'ST', 20, 0);
  oDataElements.Add('R/U display / print locations', 50, 'ST', 20, 0);
  oDataElements.Add('R/U Results Level', 51, 'ID', 1, 108);
  oDataElements.Add('R/U Where Subject Definition', 52, 'ST', 20, 0);
  oDataElements.Add('R/U when data start date / time', 53, 'TS', 26, 0);
  oDataElements.Add('R/U when data end date / time', 54, 'TS', 26, 0);
  oDataElements.Add('R/U What User Qualifier', 55, 'ST', 20, 0);
  oDataElements.Add('R/U Other Results Subject Definition', 56, 'ST', 20, 0);
  oDataElements.Add('R/U which date / time qualifier', 57, 'ID', 12, 156);
  oDataElements.Add('R/U which date / time status qualifier', 58, 'ID', 12, 157);
  oDataElements.Add('R/U date / time selection qualifier', 59, 'ID', 12, 158);
  oDataElements.Add('Continuation Pointer', 60, 'ST', 180, 0);
  oDataElements.Add('Set ID - Display Data', 61, 'SI', 4, 0);
  oDataElements.Add('Display Level', 62, 'SI', 4, 0);
  oDataElements.Add('Data Line', 63, 'TX', 300, 0);
  oDataElements.Add('Logical Break Point', 64, 'ST', 2, 0);
  oDataElements.Add('Result ID', 65, 'TX', 20, 0);
  oDataElements.Add('Addendum Continuation Pointer', 66, 'ST', 65536, 0);
  oDataElements.Add('File Field Separator', 67, 'ST', 1, 0);
  oDataElements.Add('File Encoding Characters', 68, 'ST', 4, 0);
  oDataElements.Add('File Sending Application', 69, 'ST', 15, 0);
  oDataElements.Add('File Sending Facility', 70, 'ST', 20, 0);
  oDataElements.Add('File Receiving Application', 71, 'ST', 30, 0);
  oDataElements.Add('File Receiving Facility', 72, 'ST', 30, 0);
  oDataElements.Add('File creation date / time', 73, 'TS', 26, 0);
  oDataElements.Add('File Security', 74, 'ST', 40, 0);
  oDataElements.Add('File name / ID', 75, 'ST', 20, 0);
  oDataElements.Add('File Header Comment', 76, 'ST', 80, 0);
  oDataElements.Add('File Control ID', 77, 'ST', 20, 0);
  oDataElements.Add('Reference File Control ID', 78, 'ST', 20, 0);
  oDataElements.Add('File Batch Count', 79, 'NM', 10, 0);
  oDataElements.Add('File Trailer Comment', 80, 'ST', 80, 0);
  oDataElements.Add('Batch Field Separator', 81, 'ST', 1, 0);
  oDataElements.Add('Batch Encoding Characters', 82, 'ST', 4, 0);
  oDataElements.Add('Batch Sending Application', 83, 'ST', 15, 0);
  oDataElements.Add('Batch Sending Facility', 84, 'ST', 20, 0);
  oDataElements.Add('Batch Receiving Application', 85, 'ST', 30, 0);
  oDataElements.Add('Batch Receiving Facility', 86, 'ST', 30, 0);
  oDataElements.Add('Batch creation date / time', 87, 'TS', 26, 0);
  oDataElements.Add('Batch Security', 88, 'ST', 40, 0);
  oDataElements.Add('Batch name / ID / type', 89, 'ST', 20, 0);
  oDataElements.Add('Batch Comment', 90, 'ST', 80, 0);
  oDataElements.Add('Batch Control ID', 91, 'ST', 20, 0);
  oDataElements.Add('Reference Batch Control ID', 92, 'ST', 20, 0);
  oDataElements.Add('Batch Message Count', 93, 'ST', 10, 0);
  oDataElements.Add('Batch Comment', 94, 'ST', 80, 0);
  oDataElements.Add('Batch Totals', 95, 'CM_BATCH_TOTAL', 100, 0);
  oDataElements.Add('Set ID - Notes and Comments', 96, 'SI', 4, 0);
  oDataElements.Add('Source of Comment', 97, 'ID', 8, 105);
  oDataElements.Add('Comment', 98, 'FT', 65536, 0);
  oDataElements.Add('Event Type Code', 99, 'ID', 3, 3);
  oDataElements.Add('Date / time of event', 100, 'TS', 26, 0);
  oDataElements.Add('Date / time planned event', 101, 'TS', 26, 0);
  oDataElements.Add('Event Reason Code', 102, 'ID', 3, 62);
  oDataElements.Add('Operator ID', 103, 'ID', 5, 188);
  oDataElements.Add('Set ID - Patient ID', 104, 'SI', 4, 0);
  oDataElements.Add('Patient ID (External ID)', 105, 'CK_PAT_ID', 16, 0);
  oDataElements.Add('Patient ID (Internal ID)', 106, 'CM_PAT_ID', 20, 0);
  oDataElements.Add('Alternate Patient ID', 107, 'ST', 12, 0);
  oDataElements.Add('Patient Name', 108, 'PN', 48, 0);
  oDataElements.Add('Mother''s Maiden Name', 109, 'ST', 30, 0);
  oDataElements.Add('Date of Birth', 110, 'TS', 26, 0);
  oDataElements.Add('Sex', 111, 'ID', 1, 1);
  oDataElements.Add('Patient Alias', 112, 'PN', 48, 0);
  oDataElements.Add('Race', 113, 'ID', 1, 5);
  oDataElements.Add('Patient Address', 114, 'AD', 106, 0);
  oDataElements.Add('County code', 115, 'ID', 4, 0);
  oDataElements.Add('Phone Number - Home', 116, 'TN', 40, 0);
  oDataElements.Add('Phone Number - Business', 117, 'TN', 40, 0);
  oDataElements.Add('Language - Patient', 118, 'ST', 25, 0);
  oDataElements.Add('Marital Status', 119, 'ID', 1, 2);
  oDataElements.Add('Religion', 120, 'ID', 3, 6);
  oDataElements.Add('Patient Account Number', 121, 'CK_PAT_ID', 20, 0);
  oDataElements.Add('Social security number - patient', 122, 'ST', 16, 0);
  oDataElements.Add('Driver''s license number - patient', 123, 'CM_LICENSE_NO', 25, 0);
  oDataElements.Add('Mother''s Identifier', 124, 'CK_PAT_ID', 20, 0);
  oDataElements.Add('Ethnic Group', 125, 'ID', 1, 189);
  oDataElements.Add('Birth Place', 126, 'ST', 25, 0);
  oDataElements.Add('Multiple Birth Indicator', 127, 'ID', 2, 0);
  oDataElements.Add('Birth Order', 128, 'NM', 2, 0);
  oDataElements.Add('Citizenship', 129, 'ID', 3, 171);
  oDataElements.Add('Veterans Military Status', 130, 'ST', 60, 0);
  oDataElements.Add('Set ID - Patient Visit', 131, 'SI', 4, 0);
  oDataElements.Add('Patient Class', 132, 'ID', 1, 4);
  oDataElements.Add('Assigned Patient Location', 133, 'CM_INTERNAL_LOCATION', 12, 79);
  oDataElements.Add('Admission Type', 134, 'ID', 2, 7);
  oDataElements.Add('Preadmit Number', 135, 'ST', 20, 0);
  oDataElements.Add('Prior Patient Location', 136, 'CM_INTERNAL_LOCATION', 12, 0);
  oDataElements.Add('Attending Doctor', 137, 'CN_PHYSICIAN', 60, 10);
  oDataElements.Add('Referring Doctor', 138, 'CN_PHYSICIAN', 60, 10);
  oDataElements.Add('Consulting Doctor', 139, 'CN_PHYSICIAN', 60, 10);
  oDataElements.Add('Hospital Service', 140, 'ID', 3, 69);
  oDataElements.Add('Temporary Location', 141, 'CM_INTERNAL_LOCATION', 12, 79);
  oDataElements.Add('Preadmit Test Indicator', 142, 'ID', 2, 87);
  oDataElements.Add('Readmission indicator', 143, 'ID', 2, 92);
  oDataElements.Add('Admit Source', 144, 'ID', 3, 23);
  oDataElements.Add('Ambulatory Status', 145, 'ID', 2, 9);
  oDataElements.Add('VIP Indicator', 146, 'ID', 2, 99);
  oDataElements.Add('Admitting Doctor', 147, 'CN_PHYSICIAN', 60, 10);
  oDataElements.Add('Patient type', 148, 'ID', 2, 18);
  oDataElements.Add('Visit Number', 149, 'CM_PAT_ID', 15, 0);
  oDataElements.Add('Financial Class', 150, 'CM_FINANCE', 50, 64);
  oDataElements.Add('Charge Price Indicator', 151, 'ID', 2, 32);
  oDataElements.Add('Courtesy Code', 152, 'ID', 2, 45);
  oDataElements.Add('Credit Rating', 153, 'ID', 2, 46);
  oDataElements.Add('Contract Code', 154, 'ID', 2, 44);
  oDataElements.Add('Contract Effective Date', 155, 'DT', 8, 0);
  oDataElements.Add('Contract Amount', 156, 'NM', 12, 0);
  oDataElements.Add('Contract Period', 157, 'NM', 3, 0);
  oDataElements.Add('Interest Code', 158, 'ID', 2, 73);
  oDataElements.Add('Transfer to bad debt - code', 159, 'ID', 1, 110);
  oDataElements.Add('Transfer to bad debt - date', 160, 'DT', 8, 0);
  oDataElements.Add('Bad Debt Agency Code', 161, 'ID', 10, 21);
  oDataElements.Add('Bad Debt Transfer Amount', 162, 'NM', 12, 0);
  oDataElements.Add('Bad Debt Recovery Amount', 163, 'NM', 12, 0);
  oDataElements.Add('Delete Account Indicator', 164, 'ID', 1, 111);
  oDataElements.Add('Delete Account Date', 165, 'DT', 8, 0);
  oDataElements.Add('Discharge Disposition', 166, 'ID', 3, 112);
  oDataElements.Add('Discharged to Location', 167, 'CM_DLD', 25, 113);
  oDataElements.Add('Diet Type', 168, 'ID', 2, 114);
  oDataElements.Add('Servicing Facility', 169, 'ID', 4, 115);
  oDataElements.Add('Bed Status', 170, 'ID', 1, 116);
  oDataElements.Add('Account Status', 171, 'ID', 2, 117);
  oDataElements.Add('Pending Location', 172, 'CM_INTERNAL_LOCATION', 12, 0);
  oDataElements.Add('Prior Temporary Location', 173, 'CM_INTERNAL_LOCATION', 12, 0);
  oDataElements.Add('Admit date / time', 174, 'TS', 26, 0);
  oDataElements.Add('Discharge date / time', 175, 'TS', 26, 0);
  oDataElements.Add('Current Patient Balance', 176, 'NM', 12, 0);
  oDataElements.Add('Total Charges', 177, 'NM', 12, 0);
  oDataElements.Add('Total Adjustments', 178, 'NM', 12, 0);
  oDataElements.Add('Total Payments', 179, 'NM', 12, 0);
  oDataElements.Add('Alternate Visit ID', 180, 'CM_PAT_ID_0192', 20, 0);
  oDataElements.Add('Prior Pending Location', 181, 'CM_INTERNAL_LOCATION', 12, 0);
  oDataElements.Add('Accommodation Code', 182, 'CE_0129', 60, 129);
  oDataElements.Add('Admit Reason', 183, 'CE', 60, 0);
  oDataElements.Add('Transfer Reason', 184, 'CE', 60, 0);
  oDataElements.Add('Patient Valuables', 185, 'ST', 25, 0);
  oDataElements.Add('Patient Valuables Location', 186, 'ST', 25, 0);
  oDataElements.Add('Visit User Code', 187, 'ID', 2, 130);
  oDataElements.Add('Expected Admit Date', 188, 'DT', 8, 0);
  oDataElements.Add('Expected Discharge Date', 189, 'DT', 8, 0);
  oDataElements.Add('Set ID - Next of Kin', 190, 'SI', 4, 0);
  oDataElements.Add('Name', 191, 'PN', 48, 0);
  oDataElements.Add('Relationship', 192, 'CE_0063', 60, 63);
  oDataElements.Add('Address', 193, 'AD', 106, 0);
  oDataElements.Add('Phone Number', 194, 'TN', 40, 0);
  oDataElements.Add('Business Phone Number', 195, 'TN', 40, 0);
  oDataElements.Add('Contact Role', 196, 'CE_0131', 60, 131);
  oDataElements.Add('Start Date', 197, 'DT', 8, 0);
  oDataElements.Add('End Date', 198, 'DT', 8, 0);
  oDataElements.Add('Next of Kin', 199, 'ST', 60, 0);
  oDataElements.Add('Next of kin job code / class', 200, 'CM_JOB_CODE', 60, 0);
  oDataElements.Add('Next of Kin Employee Number', 201, 'ST', 20, 0);
  oDataElements.Add('Organization Name', 202, 'ST', 60, 0);
  oDataElements.Add('Set ID - Allergy', 203, 'SI', 4, 0);
  oDataElements.Add('Allergy Type', 204, 'ID', 2, 127);
  oDataElements.Add('Allergy code / mnemonic / description', 205, 'CE', 60, 0);
  oDataElements.Add('Allergy Severity', 206, 'ID', 2, 128);
  oDataElements.Add('Allergy Reaction', 207, 'ST', 15, 0);
  oDataElements.Add('Identification Date', 208, 'DT', 8, 0);
  oDataElements.Add('Bed Location', 209, 'CM_INTERNAL_LOCATION', 12, 79);
  oDataElements.Add('Prior Patient ID - Internal', 211, 'CM_PAT_ID', 20, 0);
  oDataElements.Add('Prior Alternate Patient ID', 212, 'CM_PAT_ID', 16, 0);
  oDataElements.Add('Prior Patient Account Number', 213, 'CK_ACCOUNT_NO', 20, 0);
  oDataElements.Add('Prior Patient ID - External', 214, 'CK_PAT_ID', 16, 0);
  oDataElements.Add('Order Control', 215, 'ID', 2, 119);
  oDataElements.Add('Placer Order Number', 216, 'CM_PLACER', 75, 0);
  oDataElements.Add('Filler Order Number', 217, 'CM_FILLER', 75, 0);
  oDataElements.Add('Placer Group Number', 218, 'CM_GROUP_ID', 75, 0);
  oDataElements.Add('Order Status', 219, 'ID', 2, 38);
  oDataElements.Add('Response Flag', 220, 'ID', 1, 121);
  oDataElements.Add('Quantity / timing', 221, 'TQ', 200, 0);
  oDataElements.Add('Parent', 222, 'CM_EIP', 200, 0);
  oDataElements.Add('Date / time of transaction', 223, 'TS', 26, 0);
  oDataElements.Add('Entered By', 224, 'CN_PERSON', 80, 0);
  oDataElements.Add('Verified By', 225, 'CN_PERSON', 80, 0);
  oDataElements.Add('Ordering Provider', 226, 'CN_PERSON', 80, 0);
  oDataElements.Add('Enterer''s Location', 227, 'CM_UNDEFINED', 80, 0);
  oDataElements.Add('Call Back Phone Number', 228, 'TN', 40, 0);
  oDataElements.Add('Order effective date / time', 229, 'TS', 26, 0);
  oDataElements.Add('Order Control Code Reason', 230, 'CE', 200, 0);
  oDataElements.Add('Entering Organization', 231, 'CE', 60, 0);
  oDataElements.Add('Entering Device', 232, 'CE', 60, 0);
  oDataElements.Add('Action by', 233, 'CN_PERSON', 80, 0);
  oDataElements.Add('When to Charge', 234, 'CM_CCD', 15, 100);
  oDataElements.Add('Charge Type', 235, 'ID', 50, 122);
  oDataElements.Add('Account ID', 236, 'CK_ACCOUNT_NO', 100, 0);
  oDataElements.Add('Set ID - Observation Request', 237, 'SI', 4, 0);
  oDataElements.Add('Universal Service ID', 238, 'CE', 200, 0);
  oDataElements.Add('Priority (not used)', 239, 'ID', 2, 0);
  oDataElements.Add('Requested date / time (not used)', 240, 'TS', 26, 0);
  oDataElements.Add('Observation date / time', 241, 'TS', 26, 0);
  oDataElements.Add('Observation end date / time', 242, 'TS', 26, 0);
  oDataElements.Add('Collection Volume', 243, 'CQ_QUANTITY', 20, 0);
  oDataElements.Add('Collector Identifier', 244, 'CN_PERSON', 60, 0);
  oDataElements.Add('Specimen action code', 245, 'ID', 1, 65);
  oDataElements.Add('Danger Code', 246, 'CE', 60, 0);
  oDataElements.Add('Relevant clinical information', 247, 'ST', 300, 0);
  oDataElements.Add('Specimen received date / time', 248, 'TS', 26, 0);
  oDataElements.Add('Specimen source', 249, 'CM_SPS', 300, 70);
  oDataElements.Add('Order Callback Phone Number', 250, 'TN', 40, 0);
  oDataElements.Add('Placer field 1', 251, 'ST', 60, 0);
  oDataElements.Add('Placer field 2', 252, 'ST', 60, 0);
  oDataElements.Add('Filler Field 1', 253, 'ST', 60, 0);
  oDataElements.Add('Filler Field 2', 254, 'ST', 60, 0);
  oDataElements.Add('Results report / status change - date / time', 255, 'TS', 26, 0);
  oDataElements.Add('Charge to Practice', 256, 'CM_MOC', 40, 0);
  oDataElements.Add('Diagnostic service section ID', 257, 'ID', 10, 74);
  oDataElements.Add('Result Status', 258, 'ID', 1, 123);
  oDataElements.Add('Parent Result', 259, 'CM_UNDEFINED', 200, 0);
  oDataElements.Add('Result Copies To', 260, 'CN_PERSON', 150, 0);
  oDataElements.Add('Parent Number', 261, 'CM_EIP', 150, 0);
  oDataElements.Add('Transportation Mode', 262, 'ID', 20, 124);
  oDataElements.Add('Reason for Study', 263, 'CE', 300, 0);
  oDataElements.Add('Principal Result Interpreter', 264, 'CM_NDL', 60, 0);
  oDataElements.Add('Assistant Result Interpreter', 265, 'CM_NDL', 60, 0);
  oDataElements.Add('Technician', 266, 'CM_NDL', 60, 0);
  oDataElements.Add('Transcriptionist', 267, 'CM_NDL', 60, 0);
  oDataElements.Add('Scheduled date / time', 268, 'TS', 26, 0);
  oDataElements.Add('Type', 269, 'ID', 1, 159);
  oDataElements.Add('Service Period', 270, 'CE', 60, 0);
  oDataElements.Add('Diet, Supplement, or Preference Code', 271, 'CE', 60, 0);
  oDataElements.Add('Text Instruction', 272, 'ST', 80, 0);
  oDataElements.Add('Tray Type', 273, 'CE_0160', 60, 160);
  oDataElements.Add('Requisition Line Number', 275, 'SI', 4, 0);
  oDataElements.Add('Item Code - Internal', 276, 'CE', 60, 0);
  oDataElements.Add('Item Code - External', 277, 'CE', 60, 0);
  oDataElements.Add('Hospital Item Code', 278, 'CE', 60, 0);
  oDataElements.Add('Requisition Quantity', 279, 'NM', 6, 0);
  oDataElements.Add('Requisition Unit of measure', 280, 'CE', 60, 0);
  oDataElements.Add('Department cost center', 281, 'ID', 30, 0);
  oDataElements.Add('Item Natural Account Code', 282, 'ID', 30, 0);
  oDataElements.Add('Deliver-to ID', 283, 'CE', 60, 0);
  oDataElements.Add('Date Needed', 284, 'DT', 8, 0);
  oDataElements.Add('Anticipated Price', 285, 'SI', 10, 0);
  oDataElements.Add('Manufacturer ID', 286, 'CE', 60, 0);
  oDataElements.Add('Manufacturer''s Catalog', 287, 'ST', 16, 0);
  oDataElements.Add('Vendor ID', 288, 'CE', 60, 0);
  oDataElements.Add('Vendor Catalog', 289, 'ST', 16, 0);
  oDataElements.Add('Taxable', 290, 'ID', 1, 136);
  oDataElements.Add('Substitute Allowed', 291, 'ID', 1, 136);
  oDataElements.Add('Requested Give Code', 292, 'CE', 100, 0);
  oDataElements.Add('Requested Give Amount - Minimum', 293, 'NM', 20, 0);
  oDataElements.Add('Requested Give Amount - Maximum', 294, 'NM', 20, 0);
  oDataElements.Add('Requested Give Units', 295, 'CE', 60, 0);
  oDataElements.Add('Requested Dosage Form', 296, 'CE', 60, 0);
  oDataElements.Add('Provider''s Pharmacy Instructions', 297, 'CE', 200, 0);
  oDataElements.Add('Provider''s Administration Instructions', 298, 'CE', 200, 0);
  oDataElements.Add('Deliver-to location', 299, 'CM_LA1', 12, 0);
  oDataElements.Add('Allow Substitutions', 300, 'ID', 1, 161);
  oDataElements.Add('Requested Dispense Code', 301, 'CE', 100, 0);
  oDataElements.Add('Requested Dispense Amount', 302, 'NM', 20, 0);
  oDataElements.Add('Requested Dispense Units', 303, 'CE', 60, 0);
  oDataElements.Add('Number of Refills', 304, 'NM', 3, 0);
  oDataElements.Add('Ordering Provider''s DEA Number', 305, 'CN_PERSON', 60, 0);
  oDataElements.Add('Pharmacist Verifier ID', 306, 'CN_PERSON', 60, 0);
  oDataElements.Add('Needs Human Review', 307, 'ID', 1, 0);
  oDataElements.Add('Requested Give Per (Time Unit)', 308, 'ST', 20, 0);
  oDataElements.Add('Route', 309, 'CE_0162', 60, 162);
  oDataElements.Add('Site', 310, 'CE_0163', 60, 163);
  oDataElements.Add('Administration Device', 311, 'CE_0164', 60, 164);
  oDataElements.Add('Administration Method', 312, 'CE_0165', 60, 165);
  oDataElements.Add('RX Component Type', 313, 'ID', 1, 166);
  oDataElements.Add('Component Code', 314, 'CE', 100, 0);
  oDataElements.Add('Component Amount', 315, 'NM', 20, 0);
  oDataElements.Add('Component Units', 316, 'CE', 20, 0);
  oDataElements.Add('Give Code', 317, 'CE', 100, 0);
  oDataElements.Add('Give Amount - Minimum', 318, 'NM', 20, 0);
  oDataElements.Add('Give Amount - Maximum', 319, 'NM', 20, 0);
  oDataElements.Add('Give Units', 320, 'CE', 60, 0);
  oDataElements.Add('Give Dosage Form', 321, 'CE', 60, 0);
  oDataElements.Add('Substitution Status', 322, 'ID', 1, 167);
  oDataElements.Add('Dispense Amount', 323, 'NM', 20, 0);
  oDataElements.Add('Dispense Units', 324, 'CE', 60, 0);
  oDataElements.Add('Prescription Number', 325, 'ST', 20, 0);
  oDataElements.Add('Number of Refills Remaining', 326, 'NM', 20, 0);
  oDataElements.Add('Number of refills / doses dispensed', 327, 'NM', 20, 0);
  oDataElements.Add('Date / time of most recent refill or dose dispensed', 328, 'TS', 26, 0);
  oDataElements.Add('Total Daily Dose', 329, 'CQ_QUANTITY', 10, 0);
  oDataElements.Add('Pharmacy Special Dispensing Instructions', 330, 'CE', 200, 0);
  oDataElements.Add('Give Per (Time Unit)', 331, 'ST', 20, 0);
  oDataElements.Add('Give Rate Amount', 332, 'CE', 6, 0);
  oDataElements.Add('Give Rate Units', 333, 'CE', 60, 0);
  oDataElements.Add('Dispense Sub-ID Counter', 334, 'NM', 4, 0);
  oDataElements.Add('Dispense / give code', 335, 'CE', 100, 0);
  oDataElements.Add('Date / time dispensed', 336, 'TS', 26, 0);
  oDataElements.Add('Actual Dispense Amount', 337, 'NM', 20, 0);
  oDataElements.Add('Actual Dispense Units', 338, 'CE', 60, 0);
  oDataElements.Add('Actual Dosage Form', 339, 'CE', 60, 0);
  oDataElements.Add('Dispense Notes', 340, 'ST', 200, 0);
  oDataElements.Add('Dispensing Provider', 341, 'CN_PERSON', 200, 0);
  oDataElements.Add('Give Sub-ID Counter', 342, 'NM', 4, 0);
  oDataElements.Add('Pharmacy Special Administration Instructions', 343, 'CE', 200, 0);
  oDataElements.Add('Administration Sub-ID Counter', 344, 'NM', 4, 0);
  oDataElements.Add('Date / time start of administration', 345, 'TS', 26, 0);
  oDataElements.Add('Date / time end of administration', 346, 'TS', 26, 0);
  oDataElements.Add('Administered Code', 347, 'CE', 100, 0);
  oDataElements.Add('Administered Amount', 348, 'NM', 20, 0);
  oDataElements.Add('Administered Units', 349, 'CE', 60, 0);
  oDataElements.Add('Administered Dosage Form', 350, 'CE', 60, 0);
  oDataElements.Add('Administration Notes', 351, 'ST', 200, 0);
  oDataElements.Add('Administering Provider', 352, 'CN_PERSON', 200, 0);
  oDataElements.Add('Administered-at Location', 353, 'CM_LA1', 12, 0);
  oDataElements.Add('Administered Per (Time Unit)', 354, 'ST', 20, 0);
  oDataElements.Add('Set ID - financial transaction', 355, 'SI', 4, 0);
  oDataElements.Add('Transaction ID', 356, 'ST', 12, 0);
  oDataElements.Add('Transaction batch ID', 357, 'ST', 10, 0);
  oDataElements.Add('Transaction date', 358, 'DT', 8, 0);
  oDataElements.Add('Transaction posting date', 359, 'DT', 8, 0);
  oDataElements.Add('Transaction type', 360, 'ID', 8, 17);
  oDataElements.Add('Transaction code', 361, 'CE_0132', 20, 132);
  oDataElements.Add('Transaction description', 362, 'ST', 40, 0);
  oDataElements.Add('Transaction description - alternate', 363, 'ST', 40, 0);
  oDataElements.Add('Transaction quantity', 364, 'NM', 4, 0);
  oDataElements.Add('Transaction amount - extended', 365, 'NM', 12, 0);
  oDataElements.Add('Transaction amount - unit', 366, 'NM', 12, 0);
  oDataElements.Add('Department code', 367, 'CE_0049', 60, 49);
  oDataElements.Add('Insurance plan ID', 368, 'ID', 8, 72);
  oDataElements.Add('Insurance amount', 369, 'NM', 12, 0);
  oDataElements.Add('Fee schedule', 370, 'ID', 1, 24);
  oDataElements.Add('Diagnosis code', 371, 'CE_0051', 8, 51);
  oDataElements.Add('Performed by code', 372, 'CN_PERSON', 60, 84);
  oDataElements.Add('Ordered by code', 373, 'CN_PERSON', 60, 0);
  oDataElements.Add('Unit cost', 374, 'NM', 12, 0);
  oDataElements.Add('Set ID - diagnosis', 375, 'SI', 4, 0);
  oDataElements.Add('Diagnosis coding method', 376, 'ID', 2, 53);
  oDataElements.Add('Diagnosis code', 377, 'ID', 8, 51);
  oDataElements.Add('Diagnosis description', 378, 'ST', 40, 0);
  oDataElements.Add('Diagnosis date / time', 379, 'TS', 26, 0);
  oDataElements.Add('Diagnosis / DRG type', 380, 'ID', 2, 52);
  oDataElements.Add('Major diagnostic category', 381, 'CE_0118', 60, 118);
  oDataElements.Add('Diagnostic related group', 382, 'ID', 4, 55);
  oDataElements.Add('DRG approval indicator', 383, 'ID', 2, 0);
  oDataElements.Add('DRG grouper review code', 384, 'ID', 2, 56);
  oDataElements.Add('Outlier type', 385, 'ID', 60, 83);
  oDataElements.Add('Outlier days', 386, 'NM', 3, 0);
  oDataElements.Add('Outlier cost', 387, 'NM', 12, 0);
  oDataElements.Add('Grouper version and type', 388, 'ST', 4, 0);
  oDataElements.Add('Diagnosis / DRG priority', 389, 'NM', 2, 0);
  oDataElements.Add('Diagnosing clinician', 390, 'CN_PERSON', 60, 0);
  oDataElements.Add('Set ID - procedure', 391, 'SI', 4, 0);
  oDataElements.Add('Procedure coding method', 392, 'ID', 2, 89);
  oDataElements.Add('Procedure code', 393, 'ID', 10, 88);
  oDataElements.Add('Procedure description', 394, 'ST', 40, 0);
  oDataElements.Add('Procedure date / time', 395, 'TS', 26, 0);
  oDataElements.Add('Procedure type', 396, 'ID', 2, 90);
  oDataElements.Add('Procedure minutes', 397, 'NM', 4, 0);
  oDataElements.Add('Anesthesiologist', 398, 'CN_PERSON', 60, 10);
  oDataElements.Add('Anesthesia code', 399, 'ID', 2, 19);
  oDataElements.Add('Anesthesia minutes', 400, 'NM', 4, 0);
  oDataElements.Add('Surgeon', 401, 'CN_PERSON', 60, 10);
  oDataElements.Add('Procedure Practitioner', 402, 'CM_PRACTITIONER', 60, 10);
  oDataElements.Add('Consent code', 403, 'ID', 2, 59);
  oDataElements.Add('Procedure priority', 404, 'NM', 2, 0);
  oDataElements.Add('Set ID - guarantor', 405, 'SI', 4, 0);
  oDataElements.Add('Guarantor number', 406, 'COMP_ID_DIGIT', 20, 0);
  oDataElements.Add('Guarantor name', 407, 'PN', 48, 0);
  oDataElements.Add('Guarantor spouse name', 408, 'PN', 48, 0);
  oDataElements.Add('Guarantor address', 409, 'AD', 106, 0);
  oDataElements.Add('Guarantor phone number - home', 410, 'TN', 40, 0);
  oDataElements.Add('Guarantor phone number - business', 411, 'TN', 40, 0);
  oDataElements.Add('Guarantor date of birth', 412, 'DT', 8, 0);
  oDataElements.Add('Guarantor sex', 413, 'ID', 1, 1);
  oDataElements.Add('Guarantor type', 414, 'ID', 2, 68);
  oDataElements.Add('Guarantor relationship', 415, 'ID', 2, 63);
  oDataElements.Add('Guarantor social security number', 416, 'ST', 11, 0);
  oDataElements.Add('Guarantor date - begin', 417, 'DT', 8, 0);
  oDataElements.Add('Guarantor date - end', 418, 'DT', 8, 0);
  oDataElements.Add('Guarantor priority', 419, 'NM', 2, 0);
  oDataElements.Add('Guarantor employer name', 420, 'ST', 45, 0);
  oDataElements.Add('Guarantor employer address', 421, 'AD', 106, 0);
  oDataElements.Add('Guarantor employ phone number', 422, 'TN', 40, 0);
  oDataElements.Add('Guarantor employee ID number', 423, 'ST', 20, 0);
  oDataElements.Add('Guarantor employment status', 424, 'ID', 2, 66);
  oDataElements.Add('Guarantor organization', 425, 'ST', 60, 0);
  oDataElements.Add('Set ID - insurance', 426, 'SI', 4, 0);
  oDataElements.Add('Insurance company ID', 428, 'ST', 9, 0);
  oDataElements.Add('Insurance company name', 429, 'ST', 45, 0);
  oDataElements.Add('Insurance company address', 430, 'AD', 106, 0);
  oDataElements.Add('Insurance company contact pers', 431, 'PN', 48, 0);
  oDataElements.Add('Insurance company phone number', 432, 'TN', 40, 0);
  oDataElements.Add('Group number', 433, 'ST', 12, 0);
  oDataElements.Add('Group name', 434, 'ST', 35, 0);
  oDataElements.Add('Insured''s group employer ID', 435, 'ST', 12, 0);
  oDataElements.Add('Insured''s group employer name', 436, 'ST', 45, 0);
  oDataElements.Add('Plan effective date', 437, 'DT', 8, 0);
  oDataElements.Add('Plan expiration date', 438, 'DT', 8, 0);
  oDataElements.Add('Authorization information', 439, 'CM_AUI', 55, 0);
  oDataElements.Add('Plan type', 440, 'ID', 5, 86);
  oDataElements.Add('Name of insured', 441, 'PN', 48, 0);
  oDataElements.Add('Insured''s relationship to patient', 442, 'ID', 2, 63);
  oDataElements.Add('Insured''s date of birth', 443, 'DT', 8, 0);
  oDataElements.Add('Insured''s address', 444, 'AD', 106, 0);
  oDataElements.Add('Assignment of benefits', 445, 'ID', 2, 135);
  oDataElements.Add('Coordination of benefits', 446, 'ID', 2, 173);
  oDataElements.Add('Coordination of benefits - priority', 447, 'ST', 2, 0);
  oDataElements.Add('Notice of admission code', 448, 'ID', 2, 136);
  oDataElements.Add('Notice of admission date', 449, 'DT', 8, 0);
  oDataElements.Add('Report of eligibility code', 450, 'ID', 4, 0);
  oDataElements.Add('Report of eligibility date', 451, 'DT', 8, 0);
  oDataElements.Add('Release information code', 452, 'ID', 2, 93);
  oDataElements.Add('Pre-admit certification (PAC)', 453, 'ST', 15, 0);
  oDataElements.Add('Verification date / time', 454, 'TS', 26, 0);
  oDataElements.Add('Verification by', 455, 'CN_PERSON', 60, 0);
  oDataElements.Add('Type of agreement code', 456, 'ID', 2, 98);
  oDataElements.Add('Billing status', 457, 'ID', 2, 22);
  oDataElements.Add('Lifetime reserve days', 458, 'NM', 4, 0);
  oDataElements.Add('Delay before lifetime reserve days', 459, 'NM', 4, 0);
  oDataElements.Add('Company plan code', 460, 'ID', 8, 42);
  oDataElements.Add('Policy number', 461, 'ST', 15, 0);
  oDataElements.Add('Policy deductible', 462, 'NM', 12, 0);
  oDataElements.Add('Policy limit - amount', 463, 'NM', 12, 0);
  oDataElements.Add('Policy limit - days', 464, 'NM', 4, 0);
  oDataElements.Add('Room rate - semi-private', 465, 'NM', 12, 0);
  oDataElements.Add('Room rate - private', 466, 'NM', 12, 0);
  oDataElements.Add('Insured''s employment status', 467, 'CE_0066', 60, 66);
  oDataElements.Add('Insured''s sex', 468, 'ID', 1, 1);
  oDataElements.Add('Insured''s employer address', 469, 'AD', 106, 0);
  oDataElements.Add('Verification status', 470, 'ST', 2, 0);
  oDataElements.Add('Prior insurance plan ID', 471, 'ID', 8, 72);
  oDataElements.Add('Insured''s employee ID', 472, 'ST', 15, 0);
  oDataElements.Add('Insured''s social security number', 473, 'ST', 9, 0);
  oDataElements.Add('Insured''s employer name', 474, 'CN_PERSON', 60, 0);
  oDataElements.Add('Employer information data', 475, 'ID', 1, 139);
  oDataElements.Add('Mail claim party', 476, 'ID', 1, 137);
  oDataElements.Add('Medicare health insurance card number', 477, 'NM', 15, 0);
  oDataElements.Add('Medicaid case name', 478, 'PN', 48, 0);
  oDataElements.Add('Medicaid case number', 479, 'NM', 15, 0);
  oDataElements.Add('Champus sponsor name', 480, 'PN', 48, 0);
  oDataElements.Add('Champus ID number', 481, 'NM', 20, 0);
  oDataElements.Add('Dependent of champus recipient', 482, 'ID', 1, 0);
  oDataElements.Add('Champus organization', 483, 'ST', 25, 0);
  oDataElements.Add('Champus station', 484, 'ST', 25, 0);
  oDataElements.Add('Champus service', 485, 'ID', 14, 140);
  oDataElements.Add('Champus rank / grade', 486, 'ID', 2, 141);
  oDataElements.Add('Champus status', 487, 'ID', 3, 142);
  oDataElements.Add('Champus retire date', 488, 'DT', 8, 0);
  oDataElements.Add('Champus non-availability certification on file', 489, 'ID', 1, 136);
  oDataElements.Add('Baby coverage', 490, 'ID', 1, 136);
  oDataElements.Add('Combine baby bill', 491, 'ID', 1, 136);
  oDataElements.Add('Blood deductible (43)', 492, 'NM', 1, 136);
  oDataElements.Add('Special coverage approval name', 493, 'PN', 48, 0);
  oDataElements.Add('Special coverage approval title', 494, 'ST', 30, 0);
  oDataElements.Add('Non-covered insurance code', 495, 'ID', 8, 143);
  oDataElements.Add('Payor ID', 496, 'ST', 6, 0);
  oDataElements.Add('Payor subscriber ID', 497, 'ST', 6, 0);
  oDataElements.Add('Eligibility source', 498, 'ID', 1, 144);
  oDataElements.Add('Room coverage type / amount', 499, 'CM_RMC', 25, 145);
  oDataElements.Add('Policy type / amount', 500, 'CM_PTA', 25, 147);
  oDataElements.Add('Daily deductible', 501, 'CM_DDI', 25, 0);
  oDataElements.Add('Set ID - insurance certification', 502, 'SI', 4, 0);
  oDataElements.Add('Certification number', 503, 'ST', 25, 0);
  oDataElements.Add('Certified by', 504, 'CN_PERSON', 60, 0);
End;


procedure LoadDataElements2(oDataElements : THL7V2ModelDataElements);
Begin
  oDataElements.Add('Certification required', 505, 'ID', 1, 136);
  oDataElements.Add('Penalty', 506, 'CM_PEN', 10, 148);
  oDataElements.Add('Certification date / time', 507, 'TS', 26, 0);
  oDataElements.Add('Certification modify date / time', 508, 'TS', 26, 0);
  oDataElements.Add('Operator', 509, 'CN_PERSON', 60, 0);
  oDataElements.Add('Certification begin date', 510, 'DT', 8, 0);
  oDataElements.Add('Certification end date', 511, 'DT', 8, 0);
  oDataElements.Add('Days', 512, 'CM_DTN', 3, 149);
  oDataElements.Add('Non-concur code / description', 513, 'CE', 60, 0);
  oDataElements.Add('Non-concur effective date / time', 514, 'TS', 26, 0);
  oDataElements.Add('Physician reviewer', 515, 'CN_PERSON', 60, 0);
  oDataElements.Add('Certification contact', 516, 'ST', 48, 0);
  oDataElements.Add('Certification contact phone number', 517, 'TN', 40, 0);
  oDataElements.Add('Appeal reason', 518, 'CE', 60, 0);
  oDataElements.Add('Certification agency', 519, 'CE', 60, 0);
  oDataElements.Add('Certification agency phone number', 520, 'TN', 40, 0);
  oDataElements.Add('Pre-certification required / window', 521, 'CM_PCF', 40, 150);
  oDataElements.Add('Case manager', 522, 'ST', 48, 0);
  oDataElements.Add('Second opinion date', 523, 'DT', 8, 0);
  oDataElements.Add('Second opinion status', 524, 'ID', 1, 151);
  oDataElements.Add('Second opinion documentation received', 525, 'ID', 1, 152);
  oDataElements.Add('Second opinion practitioner', 526, 'CN_PERSON', 60, 0);
  oDataElements.Add('Accident date / time', 527, 'TS', 26, 0);
  oDataElements.Add('Accident code', 528, 'ID', 2, 50);
  oDataElements.Add('Accident location', 529, 'ST', 25, 0);
  oDataElements.Add('Set ID - UB82', 530, 'SI', 4, 0);
  oDataElements.Add('Blood deductible', 531, 'NM', 1, 0);
  oDataElements.Add('Blood furnished pints of (40)', 532, 'NM', 2, 0);
  oDataElements.Add('Blood replaced pints (41)', 533, 'NM', 2, 0);
  oDataElements.Add('Blood not replaced pints (42)', 534, 'NM', 2, 0);
  oDataElements.Add('Co-insurance days (25)', 535, 'NM', 2, 0);
  oDataElements.Add('Condition code (35-39)', 536, 'ID', 2, 43);
  oDataElements.Add('Covered days (23)', 537, 'NM', 3, 0);
  oDataElements.Add('Non-covered days (24)', 538, 'NM', 3, 0);
  oDataElements.Add('Value amount and code (46-49)', 539, 'CM_UVC', 12, 153);
  oDataElements.Add('Number of grace days (90)', 540, 'NM', 2, 0);
  oDataElements.Add('Special program indicator (44)', 541, 'ID', 2, 0);
  oDataElements.Add('PSRO / UR approval indicator (87)', 542, 'ID', 1, 0);
  oDataElements.Add('PSRO / UR approved stay - from (88)', 543, 'DT', 8, 0);
  oDataElements.Add('PSRO / UR approved stay - to (89)', 544, 'DT', 8, 0);
  oDataElements.Add('Occurrence (28-32)', 545, 'CM_OCD', 20, 0);
  oDataElements.Add('Occurrence span (33)', 546, 'ID', 2, 0);
  oDataElements.Add('Occurrence span start date (33)', 547, 'DT', 8, 0);
  oDataElements.Add('Occurrence span end date (33)', 548, 'DT', 8, 0);
  oDataElements.Add('UB-82 locator 2', 549, 'ST', 30, 0);
  oDataElements.Add('UB-82 locator 9', 550, 'ST', 7, 0);
  oDataElements.Add('UB-82 locator 27', 551, 'ST', 8, 0);
  oDataElements.Add('UB-82 locator 45', 552, 'ST', 17, 0);
  oDataElements.Add('Set ID - UB92', 553, 'SI', 4, 0);
  oDataElements.Add('Co-insurance days (9)', 554, 'ST', 3, 0);
  oDataElements.Add('Condition code (24-30)', 555, 'ID', 2, 43);
  oDataElements.Add('Covered days (7)', 556, 'ST', 3, 0);
  oDataElements.Add('Non-covered days (8)', 557, 'ST', 4, 0);
  oDataElements.Add('Value amount and code (39-41)', 558, 'CM_UVC', 11, 0);
  oDataElements.Add('Occurrence code and date (32-35)', 559, 'CM_OCD', 11, 0);
  oDataElements.Add('Occurrence span code / dates (36)', 560, 'CM_OSP', 28, 0);
  oDataElements.Add('UB92 locator 2 (state)', 561, 'ST', 29, 0);
  oDataElements.Add('UB92 locator 11 (state)', 562, 'ST', 12, 0);
  oDataElements.Add('UB92 locator 31 (national)', 563, 'ST', 5, 0);
  oDataElements.Add('Document control number (37)', 564, 'ST', 23, 0);
  oDataElements.Add('UB92 locator 49 (national)', 565, 'ST', 4, 0);
  oDataElements.Add('UB92 locator 56 (state)', 566, 'ST', 14, 0);
  oDataElements.Add('UB92 locator 57 (national)', 567, 'ST', 27, 0);
  oDataElements.Add('UB92 Locator 78 (state)', 568, 'ST', 2, 0);
  oDataElements.Add('Set ID - Observational Simple', 569, 'SI', 4, 0);
  oDataElements.Add('Value Type', 570, 'ID', 2, 125);
  oDataElements.Add('Observation Identifier', 571, 'CE', 80, 0);
  oDataElements.Add('Observation Sub-ID', 572, 'ST', 20, 0);
  oDataElements.Add('Observation Value', 573, 'varies', 65536, 0);
  oDataElements.Add('Units', 574, 'CE', 60, 0);
  oDataElements.Add('References Range', 575, 'ST', 60, 0);
  oDataElements.Add('Abnormal Flags', 576, 'ID', 10, 78);
  oDataElements.Add('Probability', 577, 'NM', 5, 0);
  oDataElements.Add('Nature of Abnormal Test', 578, 'ID', 5, 80);
  oDataElements.Add('Observation result status', 579, 'ID', 2, 85);
  oDataElements.Add('Effective date last observation normal values', 580, 'TS', 26, 0);
  oDataElements.Add('User Defined Access Checks', 581, 'ST', 20, 0);
  oDataElements.Add('Date / time of the observation', 582, 'TS', 26, 0);
  oDataElements.Add('Producer''s ID', 583, 'CE', 60, 0);
  oDataElements.Add('Responsible Observer', 584, 'CN_PHYSICIAN', 60, 0);
  oDataElements.Add('Segment Type ID', 585, 'ST', 3, 0);
  oDataElements.Add('Sequence Number - Test/ Observation Master File', 586, 'NM', 4, 0);
  oDataElements.Add('Producer''s test / observation ID', 587, 'CE', 200, 0);
  oDataElements.Add('Permitted Data Types', 588, 'ID', 12, 125);
  oDataElements.Add('Specimen Required', 589, 'ID', 1, 136);
  oDataElements.Add('Producer ID', 590, 'CE', 200, 0);
  oDataElements.Add('Observation Description', 591, 'TX', 200, 0);
  oDataElements.Add('Other test / observation IDs for the observation', 592, 'CE', 200, 0);
  oDataElements.Add('Other Names', 593, 'ST', 200, 0);
  oDataElements.Add('Preferred Report Name for the Observation', 594, 'ST', 30, 0);
  oDataElements.Add('Preferred Short Name or Mnemonic for Observation', 595, 'ST', 8, 0);
  oDataElements.Add('Preferred Long Name for the Observation', 596, 'ST', 200, 0);
  oDataElements.Add('Orderability', 597, 'ID', 1, 136);
  oDataElements.Add('Identity of instrument used to perform this study', 598, 'CE', 60, 0);
  oDataElements.Add('Coded Representation of Method', 599, 'CE', 200, 0);
  oDataElements.Add('Portable', 600, 'ID', 1, 136);
  oDataElements.Add('Observation producing department / section', 601, 'ID', 1, 0);
  oDataElements.Add('Telephone Number of Section', 602, 'TN', 40, 0);
  oDataElements.Add('Nature of test / observation', 603, 'ID', 1, 174);
  oDataElements.Add('Report Subheader', 604, 'CE', 200, 0);
  oDataElements.Add('Report Display Order', 605, 'ST', 20, 0);
  oDataElements.Add('Date / time stamp for any change in definition for obs', 606, 'TS', 26, 0);
  oDataElements.Add('Effective date / time of change', 607, 'TS', 26, 0);
  oDataElements.Add('Typical Turn-around Time', 608, 'NM', 20, 0);
  oDataElements.Add('Processing Time', 609, 'NM', 20, 0);
  oDataElements.Add('Processing Priority', 610, 'ID', 40, 168);
  oDataElements.Add('Reporting Priority', 611, 'ID', 5, 169);
  oDataElements.Add('Outside Site(s) Where Observation may be Performed', 612, 'CE', 200, 0);
  oDataElements.Add('Address of Outside Site(s)', 613, 'AD', 1000, 0);
  oDataElements.Add('Phone Number of Outside Site', 614, 'TN', 400, 0);
  oDataElements.Add('Confidentiality Code', 615, 'ID', 1, 177);
  oDataElements.Add('Observations required to interpret the observation', 616, 'CE', 200, 0);
  oDataElements.Add('Interpretation of Observations', 617, 'TX', 65536, 0);
  oDataElements.Add('Contraindications to Observations', 618, 'CE', 65536, 0);
  oDataElements.Add('Reflex tests / observations', 619, 'CE', 200, 0);
  oDataElements.Add('Rules that Trigger Reflex Testing', 620, 'ST', 80, 0);
  oDataElements.Add('Fixed Canned Message', 621, 'CE', 65536, 0);
  oDataElements.Add('Patient Preparation', 622, 'TX', 200, 0);
  oDataElements.Add('Procedure Medication', 623, 'CE', 200, 0);
  oDataElements.Add('Factors that may affect the observation', 624, 'TX', 200, 0);
  oDataElements.Add('Test / observation performance schedule', 625, 'ST', 60, 0);
  oDataElements.Add('Description of Test Methods', 626, 'TX', 65536, 0);
  oDataElements.Add('Units of Measure', 627, 'CE', 60, 0);
  oDataElements.Add('Range of Decimal Precision', 628, 'NM', 10, 0);
  oDataElements.Add('Corresponding SI Units of Measure', 629, 'CE', 60, 0);
  oDataElements.Add('SI Conversion Factor', 630, 'TX', 20, 0);
  oDataElements.Add('Reference (normal) range - ordinal & continuous observations', 631, 'CM_RFR', 200, 0);
  oDataElements.Add('Critical range for ordinal and continuous observations', 632, 'CM_RANGE', 200, 0);
  oDataElements.Add('Absolute range for ordinal and continuous observations', 633, 'CM_ABS_RANGE', 200, 0);
  oDataElements.Add('Delta Check Criteria', 634, 'CM_DLT', 200, 0);
  oDataElements.Add('Minimum Meaningful Increments', 635, 'NM', 20, 0);
  oDataElements.Add('Preferred Coding System', 636, 'ID', 5, 0);
  oDataElements.Add('Valid coded answers', 637, 'CE', 60, 0);
  oDataElements.Add('Normal test codes for categorical observations', 638, 'CE', 200, 0);
  oDataElements.Add('Abnormal test codes for categorical observations', 639, 'CE', 200, 0);
  oDataElements.Add('Critical test codes for categorical observations', 640, 'CE', 200, 0);
  oDataElements.Add('Data Type', 641, 'ID', 2, 0);
  oDataElements.Add('Derived Specimen', 642, 'ID', 1, 170);
  oDataElements.Add('Container Description', 643, 'TX', 60, 0);
  oDataElements.Add('Container Volume', 644, 'NM', 20, 0);
  oDataElements.Add('Container Units', 645, 'CE', 60, 0);
  oDataElements.Add('Specimen', 646, 'CE', 60, 0);
  oDataElements.Add('Additive', 647, 'CE', 60, 0);
  oDataElements.Add('Preparation', 648, 'TX', 10240, 0);
  oDataElements.Add('Special Handling Requirements', 649, 'TX', 10240, 0);
  oDataElements.Add('Normal Collection Volume', 650, 'CQ_QUANTITY', 20, 0);
  oDataElements.Add('Minimum Collection Volume', 651, 'CQ_COMP_QUANT', 20, 0);
  oDataElements.Add('Specimen Requirements', 652, 'TX', 10240, 0);
  oDataElements.Add('Specimen Priorities', 653, 'ID', 60, 27);
  oDataElements.Add('Specimen Retention Time', 654, 'CQ_COMP_QUANT', 20, 0);
  oDataElements.Add('Tests / observations included within an ordered test battery', 655, 'CE', 200, 0);
  oDataElements.Add('Observation ID Suffixes', 656, 'ST', 200, 0);
  oDataElements.Add('Derivation Rule', 657, 'TX', 10240, 0);
  oDataElements.Add('Master file identifier', 658, 'CE_0175', 60, 175);
  oDataElements.Add('Master file application identifier', 659, 'ID', 6, 176);
  oDataElements.Add('File-level event code', 660, 'ID', 3, 178);
  oDataElements.Add('Entered date / time', 661, 'TS', 26, 0);
  oDataElements.Add('Effective date / time', 662, 'TS', 26, 0);
  oDataElements.Add('Response level code', 663, 'ID', 2, 179);
  oDataElements.Add('Record-level event code', 664, 'ID', 3, 180);
  oDataElements.Add('MFN control ID', 665, 'ST', 20, 0);
  oDataElements.Add('Primary key value', 667, 'CE', 60, 0);
  oDataElements.Add('Event completion date / time', 668, 'TS', 26, 0);
  oDataElements.Add('Error return code and/or text', 669, 'CE_0181', 60, 181);
  oDataElements.Add('STF - primary key value', 671, 'CE', 60, 0);
  oDataElements.Add('Staff ID Code', 672, 'CE', 60, 0);
  oDataElements.Add('Staff Name', 673, 'PN', 48, 0);
  oDataElements.Add('Staff Type', 674, 'ID', 2, 182);
  oDataElements.Add('Active / inactive', 675, 'ID', 1, 183);
  oDataElements.Add('Department', 676, 'CE_0184', 200, 184);
  oDataElements.Add('Service', 677, 'CE', 200, 0);
  oDataElements.Add('Phone', 678, 'TN', 40, 0);
  oDataElements.Add('Office / home address', 679, 'AD', 106, 0);
  oDataElements.Add('Activation Date', 680, 'CM_DIN', 19, 0);
  oDataElements.Add('Inactivation Date', 681, 'CM_DIN', 19, 0);
  oDataElements.Add('Backup Person ID', 682, 'CE', 60, 0);
  oDataElements.Add('E-mail Address', 683, 'ST', 40, 0);
  oDataElements.Add('Preferred method of Contact', 684, 'ID', 1, 185);
  oDataElements.Add('PRA - primary key value', 685, 'ST', 20, 0);
  oDataElements.Add('Practitioner group', 686, 'CE', 60, 0);
  oDataElements.Add('Practitioner Category', 687, 'ID', 3, 186);
  oDataElements.Add('Provider Billing', 688, 'ID', 1, 187);
  oDataElements.Add('Specialty', 689, 'CM_SPD', 100, 0);
  oDataElements.Add('Practitioner ID Numbers', 690, 'CM_PLN', 100, 0);
  oDataElements.Add('Privileges', 691, 'CM_PIP', 20, 0);
  oDataElements.Add('System Date/Time', 742, 'TS', 26, 0);
  oDataElements.Add('Statistics Available', 743, 'ID', 1, 136);
  oDataElements.Add('Source Identifier', 744, 'ST', 30, 0);
  oDataElements.Add('Source Type', 745, 'ID', 3, 0);
  oDataElements.Add('Statistics Start', 746, 'TS', 26, 0);
  oDataElements.Add('Statistics End', 747, 'TS', 26, 0);
  oDataElements.Add('Receive Character Count', 748, 'NM', 10, 0);
  oDataElements.Add('Send Character Count', 749, 'NM', 10, 0);
  oDataElements.Add('Message Received', 750, 'NM', 10, 0);
  oDataElements.Add('Message Sent', 751, 'NM', 10, 0);
  oDataElements.Add('Checksum Errors Received', 752, 'NM', 10, 0);
  oDataElements.Add('Length Errors Received', 753, 'NM', 10, 0);
  oDataElements.Add('Other Errors Received', 754, 'NM', 10, 0);
  oDataElements.Add('Connect Timeouts', 755, 'NM', 10, 0);
  oDataElements.Add('Receive Timeouts', 756, 'NM', 10, 0);
  oDataElements.Add('Network Errors', 757, 'NM', 10, 0);
  oDataElements.Add('Network Change Type', 758, 'ID', 4, 0);
  oDataElements.Add('Current CPU', 759, 'ST', 30, 0);
  oDataElements.Add('Current Fileserver', 760, 'ST', 30, 0);
  oDataElements.Add('Current Application', 761, 'ST', 30, 0);
  oDataElements.Add('Current Facility', 762, 'ST', 30, 0);
  oDataElements.Add('New CPU', 763, 'ST', 30, 0);
  oDataElements.Add('New Fileserver', 764, 'ST', 30, 0);
  oDataElements.Add('New Application', 765, 'ST', 30, 0);
  oDataElements.Add('New Facility', 766, 'ST', 30, 0);
  oDataElements.Add('new number (within next version)', 99998, 'TX', 0, 0);
  oDataElements.Add('new (within next version)', 99999, 'TX', 0, 0);
End;


procedure Definitions22LoadDataElements(oDataElements : THL7V2ModelDataElements);
Begin
  LoadDataElements1(oDataElements);
  LoadDataElements2(oDataElements);
End;


procedure Definitions22LoadSegments(oSegments : THL7V2ModelSegments);
Var
  oSegment : THL7V2ModelSegment;
Begin
  oSegments.Add('<', 'begin choice');
  oSegments.Add('>', 'end choice');
  oSegment := oSegments.Add('ACC', 'ACCIDENT');
    oSegment.Fields.Add(527, False, 0, False, 1);
    oSegment.Fields.Add(528, False, 0, False, 2);
    oSegment.Fields.Add(529, False, 0, False, 3);
  oSegment := oSegments.Add('ADD', 'ADDENDUM');
    oSegment.Fields.Add(66, False, 0, False, 1);
  oSegment := oSegments.Add('AL1', 'PATIENT ALLERGY INFORMATION');
    oSegment.Fields.Add(203, False, 0, True, 1);
    oSegment.Fields.Add(204, False, 0, False, 2);
    oSegment.Fields.Add(205, False, 0, True, 3);
    oSegment.Fields.Add(206, False, 0, False, 4);
    oSegment.Fields.Add(207, False, 0, False, 5);
    oSegment.Fields.Add(208, False, 0, False, 6);
  oSegment := oSegments.Add('BHS', 'BATCH HEADER');
    oSegment.Fields.Add(81, False, 0, True, 1);
    oSegment.Fields.Add(82, False, 0, True, 2);
    oSegment.Fields.Add(83, False, 0, False, 3);
    oSegment.Fields.Add(84, False, 0, False, 4);
    oSegment.Fields.Add(85, False, 0, False, 5);
    oSegment.Fields.Add(86, False, 0, False, 6);
    oSegment.Fields.Add(87, False, 0, False, 7);
    oSegment.Fields.Add(88, False, 0, False, 8);
    oSegment.Fields.Add(89, False, 0, False, 9);
    oSegment.Fields.Add(90, False, 0, False, 10);
    oSegment.Fields.Add(91, False, 0, False, 11);
    oSegment.Fields.Add(92, False, 0, False, 12);
  oSegment := oSegments.Add('BLG', 'BILLING');
    oSegment.Fields.Add(234, False, 0, False, 1);
    oSegment.Fields.Add(235, False, 0, False, 2);
    oSegment.Fields.Add(236, False, 0, False, 3);
  oSegment := oSegments.Add('BTS', 'BATCH TRAILER');
    oSegment.Fields.Add(93, False, 0, False, 1);
    oSegment.Fields.Add(94, False, 0, False, 2);
    oSegment.Fields.Add(95, True, 0, False, 3);
  oSegment := oSegments.Add('DG1', 'DIAGNOSIS');
    oSegment.Fields.Add(375, False, 0, True, 1);
    oSegment.Fields.Add(376, False, 0, True, 2);
    oSegment.Fields.Add(377, False, 0, False, 3);
    oSegment.Fields.Add(378, False, 0, False, 4);
    oSegment.Fields.Add(379, False, 0, False, 5);
    oSegment.Fields.Add(380, False, 0, True, 6);
    oSegment.Fields.Add(381, False, 0, False, 7);
    oSegment.Fields.Add(382, False, 0, False, 8);
    oSegment.Fields.Add(383, False, 0, False, 9);
    oSegment.Fields.Add(384, False, 0, False, 10);
    oSegment.Fields.Add(385, False, 0, False, 11);
    oSegment.Fields.Add(386, False, 0, False, 12);
    oSegment.Fields.Add(387, False, 0, False, 13);
    oSegment.Fields.Add(388, False, 0, False, 14);
    oSegment.Fields.Add(389, False, 0, False, 15);
    oSegment.Fields.Add(390, False, 0, False, 16);
  oSegment := oSegments.Add('DSC', 'CONTINUATION POINTER');
    oSegment.Fields.Add(60, False, 0, False, 1);
  oSegment := oSegments.Add('DSP', 'DISPLAY DATA');
    oSegment.Fields.Add(61, False, 0, False, 1);
    oSegment.Fields.Add(62, False, 0, False, 2);
    oSegment.Fields.Add(63, False, 0, True, 3);
    oSegment.Fields.Add(64, False, 0, False, 4);
    oSegment.Fields.Add(65, False, 0, False, 5);
  oSegment := oSegments.Add('ERR', 'ERROR');
    oSegment.Fields.Add(24, True, 0, True, 1);
  oSegment := oSegments.Add('EVN', 'EVENT TYPE');
    oSegment.Fields.Add(99, False, 0, True, 1);
    oSegment.Fields.Add(100, False, 0, True, 2);
    oSegment.Fields.Add(101, False, 0, False, 3);
    oSegment.Fields.Add(102, False, 0, False, 4);
    oSegment.Fields.Add(103, False, 0, False, 5);
  oSegment := oSegments.Add('FHS', 'FILE HEADER');
    oSegment.Fields.Add(67, False, 0, True, 1);
    oSegment.Fields.Add(68, False, 0, True, 2);
    oSegment.Fields.Add(69, False, 0, False, 3);
    oSegment.Fields.Add(70, False, 0, False, 4);
    oSegment.Fields.Add(71, False, 0, False, 5);
    oSegment.Fields.Add(72, False, 0, False, 6);
    oSegment.Fields.Add(73, False, 0, False, 7);
    oSegment.Fields.Add(74, False, 0, False, 8);
    oSegment.Fields.Add(75, False, 0, False, 9);
    oSegment.Fields.Add(76, False, 0, False, 10);
    oSegment.Fields.Add(77, False, 0, False, 11);
    oSegment.Fields.Add(78, False, 0, False, 12);
  oSegment := oSegments.Add('FT1', 'FINANCIAL TRANSACTION');
    oSegment.Fields.Add(355, False, 0, False, 1);
    oSegment.Fields.Add(356, False, 0, False, 2);
    oSegment.Fields.Add(357, False, 0, False, 3);
    oSegment.Fields.Add(358, False, 0, True, 4);
    oSegment.Fields.Add(359, False, 0, False, 5);
    oSegment.Fields.Add(360, False, 0, True, 6);
    oSegment.Fields.Add(361, False, 0, True, 7);
    oSegment.Fields.Add(362, False, 0, False, 8);
    oSegment.Fields.Add(363, False, 0, False, 9);
    oSegment.Fields.Add(364, False, 0, False, 10);
    oSegment.Fields.Add(365, False, 0, False, 11);
    oSegment.Fields.Add(366, False, 0, False, 12);
    oSegment.Fields.Add(367, False, 0, False, 13);
    oSegment.Fields.Add(368, False, 0, True, 14);
    oSegment.Fields.Add(369, False, 0, False, 15);
    oSegment.Fields.Add(133, False, 0, False, 16);
    oSegment.Fields.Add(370, False, 0, False, 17);
    oSegment.Fields.Add(148, False, 0, False, 18);
    oSegment.Fields.Add(371, True, 0, False, 19);
    oSegment.Fields.Add(372, False, 0, False, 20);
    oSegment.Fields.Add(373, False, 0, False, 21);
    oSegment.Fields.Add(374, False, 0, False, 22);
    oSegment.Fields.Add(217, False, 0, False, 23);
  oSegment := oSegments.Add('FTS', 'FILE TRAILER');
    oSegment.Fields.Add(79, False, 0, False, 1);
    oSegment.Fields.Add(80, False, 0, False, 2);
  oSegment := oSegments.Add('GT1', 'GUARANTOR');
    oSegment.Fields.Add(405, False, 0, True, 1);
    oSegment.Fields.Add(406, False, 0, False, 2);
    oSegment.Fields.Add(407, False, 0, True, 3);
    oSegment.Fields.Add(408, False, 0, False, 4);
    oSegment.Fields.Add(409, False, 0, False, 5);
    oSegment.Fields.Add(410, True, 3, False, 6);
    oSegment.Fields.Add(411, True, 3, False, 7);
    oSegment.Fields.Add(412, False, 0, False, 8);
    oSegment.Fields.Add(413, False, 0, False, 9);
    oSegment.Fields.Add(414, False, 0, False, 10);
    oSegment.Fields.Add(415, False, 0, False, 11);
    oSegment.Fields.Add(416, False, 0, False, 12);
    oSegment.Fields.Add(417, False, 0, False, 13);
    oSegment.Fields.Add(418, False, 0, False, 14);
    oSegment.Fields.Add(419, False, 0, False, 15);
    oSegment.Fields.Add(420, False, 0, False, 16);
    oSegment.Fields.Add(421, False, 0, False, 17);
    oSegment.Fields.Add(422, True, 3, False, 18);
    oSegment.Fields.Add(423, False, 0, False, 19);
    oSegment.Fields.Add(424, False, 0, False, 20);
    oSegment.Fields.Add(425, False, 0, False, 21);
  oSegment := oSegments.Add('IN1', 'INSURANCE');
    oSegment.Fields.Add(426, False, 0, True, 1);
    oSegment.Fields.Add(368, False, 0, True, 2);
    oSegment.Fields.Add(428, False, 0, True, 3);
    oSegment.Fields.Add(429, False, 0, False, 4);
    oSegment.Fields.Add(430, False, 0, False, 5);
    oSegment.Fields.Add(431, False, 0, False, 6);
    oSegment.Fields.Add(432, True, 3, False, 7);
    oSegment.Fields.Add(433, False, 0, False, 8);
    oSegment.Fields.Add(434, False, 0, False, 9);
    oSegment.Fields.Add(435, False, 0, False, 10);
    oSegment.Fields.Add(436, False, 0, False, 11);
    oSegment.Fields.Add(437, False, 0, False, 12);
    oSegment.Fields.Add(438, False, 0, False, 13);
    oSegment.Fields.Add(439, False, 0, False, 14);
    oSegment.Fields.Add(440, False, 0, False, 15);
    oSegment.Fields.Add(441, False, 0, False, 16);
    oSegment.Fields.Add(442, False, 0, False, 17);
    oSegment.Fields.Add(443, False, 0, False, 18);
    oSegment.Fields.Add(444, False, 0, False, 19);
    oSegment.Fields.Add(445, False, 0, False, 20);
    oSegment.Fields.Add(446, False, 0, False, 21);
    oSegment.Fields.Add(447, False, 0, False, 22);
    oSegment.Fields.Add(448, False, 0, False, 23);
    oSegment.Fields.Add(449, False, 0, False, 24);
    oSegment.Fields.Add(450, False, 0, False, 25);
    oSegment.Fields.Add(451, False, 0, False, 26);
    oSegment.Fields.Add(452, False, 0, False, 27);
    oSegment.Fields.Add(453, False, 0, False, 28);
    oSegment.Fields.Add(454, False, 0, False, 29);
    oSegment.Fields.Add(455, False, 0, False, 30);
    oSegment.Fields.Add(456, False, 0, False, 31);
    oSegment.Fields.Add(457, False, 0, False, 32);
    oSegment.Fields.Add(458, False, 0, False, 33);
    oSegment.Fields.Add(459, False, 0, False, 34);
    oSegment.Fields.Add(460, False, 0, False, 35);
    oSegment.Fields.Add(461, False, 0, False, 36);
    oSegment.Fields.Add(462, False, 0, False, 37);
    oSegment.Fields.Add(463, False, 0, False, 38);
    oSegment.Fields.Add(464, False, 0, False, 39);
    oSegment.Fields.Add(465, False, 0, False, 40);
    oSegment.Fields.Add(466, False, 0, False, 41);
    oSegment.Fields.Add(467, False, 0, False, 42);
    oSegment.Fields.Add(468, False, 0, False, 43);
    oSegment.Fields.Add(469, False, 0, False, 44);
    oSegment.Fields.Add(470, False, 0, False, 45);
    oSegment.Fields.Add(471, False, 0, False, 46);
  oSegment := oSegments.Add('IN2', 'INSURANCE ADDITIONAL INFO');
    oSegment.Fields.Add(472, False, 0, False, 1);
    oSegment.Fields.Add(473, False, 0, False, 2);
    oSegment.Fields.Add(474, False, 0, False, 3);
    oSegment.Fields.Add(475, False, 0, False, 4);
    oSegment.Fields.Add(476, False, 0, False, 5);
    oSegment.Fields.Add(477, False, 0, False, 6);
    oSegment.Fields.Add(478, False, 0, False, 7);
    oSegment.Fields.Add(479, False, 0, False, 8);
    oSegment.Fields.Add(480, False, 0, False, 9);
    oSegment.Fields.Add(481, False, 0, False, 10);
    oSegment.Fields.Add(482, False, 0, False, 11);
    oSegment.Fields.Add(483, False, 0, False, 12);
    oSegment.Fields.Add(484, False, 0, False, 13);
    oSegment.Fields.Add(485, False, 0, False, 14);
    oSegment.Fields.Add(486, False, 0, False, 15);
    oSegment.Fields.Add(487, False, 0, False, 16);
    oSegment.Fields.Add(488, False, 0, False, 17);
    oSegment.Fields.Add(489, False, 0, False, 18);
    oSegment.Fields.Add(490, False, 0, False, 19);
    oSegment.Fields.Add(491, False, 0, False, 20);
    oSegment.Fields.Add(531, False, 0, False, 21);
    oSegment.Fields.Add(493, False, 0, False, 22);
    oSegment.Fields.Add(494, False, 0, False, 23);
    oSegment.Fields.Add(495, True, 0, False, 24);
    oSegment.Fields.Add(496, False, 0, False, 25);
    oSegment.Fields.Add(497, False, 0, False, 26);
    oSegment.Fields.Add(498, False, 0, False, 27);
    oSegment.Fields.Add(499, True, 0, False, 28);
    oSegment.Fields.Add(500, True, 0, False, 29);
    oSegment.Fields.Add(501, False, 0, False, 30);
  oSegment := oSegments.Add('IN3', 'INSURANCE ADDITIONAL INFO-CERTIFICATION');
    oSegment.Fields.Add(502, False, 0, True, 1);
    oSegment.Fields.Add(503, False, 0, False, 2);
    oSegment.Fields.Add(504, False, 0, False, 3);
    oSegment.Fields.Add(505, False, 0, False, 4);
    oSegment.Fields.Add(506, False, 0, False, 5);
    oSegment.Fields.Add(507, False, 0, False, 6);
    oSegment.Fields.Add(508, False, 0, False, 7);
    oSegment.Fields.Add(509, False, 0, False, 8);
    oSegment.Fields.Add(510, False, 0, False, 9);
    oSegment.Fields.Add(511, False, 0, False, 10);
    oSegment.Fields.Add(512, False, 0, False, 11);
    oSegment.Fields.Add(513, False, 0, False, 12);
    oSegment.Fields.Add(514, False, 0, False, 13);
    oSegment.Fields.Add(515, False, 0, False, 14);
    oSegment.Fields.Add(516, False, 0, False, 15);
    oSegment.Fields.Add(517, True, 3, False, 16);
    oSegment.Fields.Add(518, False, 0, False, 17);
    oSegment.Fields.Add(519, False, 0, False, 18);
    oSegment.Fields.Add(520, True, 3, False, 19);
    oSegment.Fields.Add(521, True, 0, False, 20);
    oSegment.Fields.Add(522, False, 0, False, 21);
    oSegment.Fields.Add(523, False, 0, False, 22);
    oSegment.Fields.Add(524, False, 0, False, 23);
    oSegment.Fields.Add(525, False, 0, False, 24);
    oSegment.Fields.Add(526, False, 0, False, 25);
  oSegment := oSegments.Add('MFA', 'MASTER FILE ACKNOWLEDGEMENT');
    oSegment.Fields.Add(664, False, 0, True, 1);
    oSegment.Fields.Add(665, False, 0, False, 2);
    oSegment.Fields.Add(668, False, 0, False, 3);
    oSegment.Fields.Add(669, False, 0, True, 4);
    oSegment.Fields.Add(667, True, 0, True, 5);
  oSegment := oSegments.Add('MFE', 'MASTER FILE ENTRY');
    oSegment.Fields.Add(664, False, 0, True, 1);
    oSegment.Fields.Add(665, False, 0, False, 2);
    oSegment.Fields.Add(662, False, 0, False, 3);
    oSegment.Fields.Add(667, True, 0, True, 4);
  oSegment := oSegments.Add('MFI', 'MASTER FILE IDENTIFICATION');
    oSegment.Fields.Add(658, False, 0, True, 1);
    oSegment.Fields.Add(659, False, 0, False, 2);
    oSegment.Fields.Add(660, False, 0, True, 3);
    oSegment.Fields.Add(661, False, 0, False, 4);
    oSegment.Fields.Add(662, False, 0, False, 5);
    oSegment.Fields.Add(663, False, 0, True, 6);
  oSegment := oSegments.Add('MRG', 'MERGE PATIENT INFORMATION');
    oSegment.Fields.Add(211, False, 0, True, 1);
    oSegment.Fields.Add(212, False, 0, False, 2);
    oSegment.Fields.Add(213, False, 0, False, 3);
    oSegment.Fields.Add(214, False, 0, False, 4);
  oSegment := oSegments.Add('MSA', 'MESSAGE ACKNOWLEDGMENT');
    oSegment.Fields.Add(18, False, 0, True, 1);
    oSegment.Fields.Add(10, False, 0, True, 2);
    oSegment.Fields.Add(20, False, 0, False, 3);
    oSegment.Fields.Add(21, False, 0, False, 4);
    oSegment.Fields.Add(22, False, 0, False, 5);
    oSegment.Fields.Add(23, False, 0, False, 6);
  oSegment := oSegments.Add('MSH', 'MESSAGE HEADER');
    oSegment.Fields.Add(1, False, 0, True, 1);
    oSegment.Fields.Add(2, False, 0, True, 2);
    oSegment.Fields.Add(3, False, 0, False, 3);
    oSegment.Fields.Add(4, False, 0, False, 4);
    oSegment.Fields.Add(5, False, 0, False, 5);
    oSegment.Fields.Add(6, False, 0, False, 6);
    oSegment.Fields.Add(7, False, 0, False, 7);
    oSegment.Fields.Add(8, False, 0, False, 8);
    oSegment.Fields.Add(9, False, 0, True, 9);
    oSegment.Fields.Add(10, False, 0, True, 10);
    oSegment.Fields.Add(11, False, 0, True, 11);
    oSegment.Fields.Add(12, False, 0, True, 12);
    oSegment.Fields.Add(13, False, 0, False, 13);
    oSegment.Fields.Add(14, False, 0, False, 14);
    oSegment.Fields.Add(15, False, 0, False, 15);
    oSegment.Fields.Add(16, False, 0, False, 16);
    oSegment.Fields.Add(17, False, 0, False, 17);
  oSegment := oSegments.Add('NCK', 'System Clock');
    oSegment.Fields.Add(742, False, 0, True, 1);
  oSegment := oSegments.Add('NK1', 'NEXT OF KIN');
    oSegment.Fields.Add(190, False, 0, True, 1);
    oSegment.Fields.Add(191, False, 0, False, 2);
    oSegment.Fields.Add(192, False, 0, False, 3);
    oSegment.Fields.Add(193, False, 0, False, 4);
    oSegment.Fields.Add(194, True, 3, False, 5);
    oSegment.Fields.Add(195, False, 0, False, 6);
    oSegment.Fields.Add(196, False, 0, False, 7);
    oSegment.Fields.Add(197, False, 0, False, 8);
    oSegment.Fields.Add(198, False, 0, False, 9);
    oSegment.Fields.Add(199, False, 0, False, 10);
    oSegment.Fields.Add(200, False, 0, False, 11);
    oSegment.Fields.Add(201, False, 0, False, 12);
    oSegment.Fields.Add(202, False, 0, False, 13);
  oSegment := oSegments.Add('NPU', 'BED STATUS UPDATE');
    oSegment.Fields.Add(209, False, 0, True, 1);
    oSegment.Fields.Add(170, False, 0, False, 2);
  oSegment := oSegments.Add('NSC', 'STATUS CHANGE');
    oSegment.Fields.Add(758, False, 0, True, 1);
    oSegment.Fields.Add(759, False, 0, False, 2);
    oSegment.Fields.Add(760, False, 0, False, 3);
    oSegment.Fields.Add(761, False, 0, False, 4);
    oSegment.Fields.Add(762, False, 0, False, 5);
    oSegment.Fields.Add(763, False, 0, False, 6);
    oSegment.Fields.Add(764, False, 0, False, 7);
    oSegment.Fields.Add(765, False, 0, False, 8);
    oSegment.Fields.Add(766, False, 0, False, 9);
  oSegment := oSegments.Add('NST', 'Statistics');
    oSegment.Fields.Add(743, False, 0, True, 1);
    oSegment.Fields.Add(744, False, 0, False, 2);
    oSegment.Fields.Add(745, False, 0, False, 3);
    oSegment.Fields.Add(746, False, 0, False, 4);
    oSegment.Fields.Add(747, False, 0, False, 5);
    oSegment.Fields.Add(748, False, 0, False, 6);
    oSegment.Fields.Add(749, False, 0, False, 7);
    oSegment.Fields.Add(750, False, 0, False, 8);
    oSegment.Fields.Add(751, False, 0, False, 9);
    oSegment.Fields.Add(752, False, 0, False, 10);
    oSegment.Fields.Add(753, False, 0, False, 11);
    oSegment.Fields.Add(754, False, 0, False, 12);
    oSegment.Fields.Add(755, False, 0, False, 13);
    oSegment.Fields.Add(756, False, 0, False, 14);
    oSegment.Fields.Add(757, False, 0, False, 15);
  oSegment := oSegments.Add('NTE', 'NOTES AND COMMENTS');
    oSegment.Fields.Add(96, False, 0, False, 1);
    oSegment.Fields.Add(97, False, 0, False, 2);
    oSegment.Fields.Add(98, True, 0, False, 3);
  oSegment := oSegments.Add('OBR', 'OBSERVATION REQUEST');
    oSegment.Fields.Add(237, False, 0, False, 1);
    oSegment.Fields.Add(216, False, 0, False, 2);
    oSegment.Fields.Add(217, False, 0, False, 3);
    oSegment.Fields.Add(238, False, 0, True, 4);
    oSegment.Fields.Add(239, False, 0, False, 5);
    oSegment.Fields.Add(240, False, 0, False, 6);
    oSegment.Fields.Add(241, False, 0, False, 7);
    oSegment.Fields.Add(242, False, 0, False, 8);
    oSegment.Fields.Add(243, False, 0, False, 9);
    oSegment.Fields.Add(244, True, 0, False, 10);
    oSegment.Fields.Add(245, False, 0, False, 11);
    oSegment.Fields.Add(246, False, 0, False, 12);
    oSegment.Fields.Add(247, False, 0, False, 13);
    oSegment.Fields.Add(248, False, 0, False, 14);
    oSegment.Fields.Add(249, False, 0, False, 15);
    oSegment.Fields.Add(226, False, 0, False, 16);
    oSegment.Fields.Add(250, True, 2, False, 17);
    oSegment.Fields.Add(251, False, 0, False, 18);
    oSegment.Fields.Add(252, False, 0, False, 19);
    oSegment.Fields.Add(253, False, 0, False, 20);
    oSegment.Fields.Add(254, False, 0, False, 21);
    oSegment.Fields.Add(255, False, 0, False, 22);
    oSegment.Fields.Add(256, False, 0, False, 23);
    oSegment.Fields.Add(257, False, 0, False, 24);
    oSegment.Fields.Add(258, False, 0, False, 25);
    oSegment.Fields.Add(259, False, 0, False, 26);
    oSegment.Fields.Add(221, True, 0, False, 27);
    oSegment.Fields.Add(260, True, 5, False, 28);
    oSegment.Fields.Add(261, False, 0, False, 29);
    oSegment.Fields.Add(262, False, 0, False, 30);
    oSegment.Fields.Add(263, True, 0, False, 31);
    oSegment.Fields.Add(264, False, 0, False, 32);
    oSegment.Fields.Add(265, True, 0, False, 33);
    oSegment.Fields.Add(266, True, 0, False, 34);
    oSegment.Fields.Add(267, True, 0, False, 35);
    oSegment.Fields.Add(268, False, 0, False, 36);
  oSegment := oSegments.Add('OBX', 'OBSERVATION RESULT');
    oSegment.Fields.Add(569, False, 0, False, 1);
    oSegment.Fields.Add(570, False, 0, True, 2);
    oSegment.Fields.Add(571, False, 0, True, 3);
    oSegment.Fields.Add(572, False, 0, False, 4);
    oSegment.Fields.Add(573, False, 0, False, 5);
    oSegment.Fields.Add(574, False, 0, False, 6);
    oSegment.Fields.Add(575, False, 0, False, 7);
    oSegment.Fields.Add(576, True, 5, False, 8);
    oSegment.Fields.Add(577, False, 0, False, 9);
    oSegment.Fields.Add(578, False, 0, False, 10);
    oSegment.Fields.Add(579, False, 0, True, 11);
    oSegment.Fields.Add(580, False, 0, False, 12);
    oSegment.Fields.Add(581, False, 0, False, 13);
    oSegment.Fields.Add(582, False, 0, False, 14);
    oSegment.Fields.Add(583, False, 0, False, 15);
    oSegment.Fields.Add(584, False, 0, False, 16);
  oSegment := oSegments.Add('ODS', 'DIETARY ORDERS, SUPPLEMENTS, and PREFERENCES');
    oSegment.Fields.Add(269, False, 0, True, 1);
    oSegment.Fields.Add(270, True, 10, False, 2);
    oSegment.Fields.Add(271, True, 20, True, 3);
    oSegment.Fields.Add(272, True, 2, False, 4);
  oSegment := oSegments.Add('ODT', 'DIET TRAY INSTRUCTION');
    oSegment.Fields.Add(273, False, 0, True, 1);
    oSegment.Fields.Add(270, True, 10, False, 2);
    oSegment.Fields.Add(272, True, 2, False, 3);
  oSegment := oSegments.Add('OM1', 'GENERAL - fields that apply to most observations');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(587, False, 0, True, 3);
    oSegment.Fields.Add(588, True, 0, False, 4);
    oSegment.Fields.Add(589, False, 0, True, 5);
    oSegment.Fields.Add(590, False, 0, True, 6);
    oSegment.Fields.Add(591, False, 0, False, 7);
    oSegment.Fields.Add(592, False, 0, False, 8);
    oSegment.Fields.Add(593, True, 0, True, 9);
    oSegment.Fields.Add(594, False, 0, False, 10);
    oSegment.Fields.Add(595, False, 0, False, 11);
    oSegment.Fields.Add(596, False, 0, False, 12);
    oSegment.Fields.Add(597, False, 0, False, 13);
    oSegment.Fields.Add(598, True, 0, False, 14);
    oSegment.Fields.Add(599, True, 0, False, 15);
    oSegment.Fields.Add(600, False, 0, False, 16);
    oSegment.Fields.Add(601, True, 0, False, 17);
    oSegment.Fields.Add(602, False, 0, False, 18);
    oSegment.Fields.Add(603, False, 0, True, 19);
    oSegment.Fields.Add(604, False, 0, False, 20);
    oSegment.Fields.Add(605, False, 0, False, 21);
    oSegment.Fields.Add(606, False, 0, True, 22);
    oSegment.Fields.Add(607, False, 0, False, 23);
    oSegment.Fields.Add(608, False, 0, False, 24);
    oSegment.Fields.Add(609, False, 0, False, 25);
    oSegment.Fields.Add(610, True, 0, False, 26);
    oSegment.Fields.Add(611, False, 0, False, 27);
    oSegment.Fields.Add(612, True, 0, False, 28);
    oSegment.Fields.Add(613, True, 0, False, 29);
    oSegment.Fields.Add(614, True, 0, False, 30);
    oSegment.Fields.Add(615, False, 0, False, 31);
    oSegment.Fields.Add(616, True, 0, False, 32);
    oSegment.Fields.Add(617, False, 0, False, 33);
    oSegment.Fields.Add(618, True, 0, False, 34);
    oSegment.Fields.Add(619, True, 0, False, 35);
    oSegment.Fields.Add(620, False, 0, False, 36);
    oSegment.Fields.Add(621, True, 0, False, 37);
    oSegment.Fields.Add(622, False, 0, False, 38);
    oSegment.Fields.Add(623, False, 0, False, 39);
    oSegment.Fields.Add(624, False, 0, False, 40);
    oSegment.Fields.Add(625, True, 0, False, 41);
    oSegment.Fields.Add(626, False, 0, False, 42);
  oSegment := oSegments.Add('OM2', 'NUMERIC OBSERVATION');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(627, False, 0, False, 3);
    oSegment.Fields.Add(628, False, 0, False, 4);
    oSegment.Fields.Add(629, False, 0, False, 5);
    oSegment.Fields.Add(630, True, 0, True, 6);
    oSegment.Fields.Add(631, True, 0, False, 7);
    oSegment.Fields.Add(632, False, 0, False, 8);
    oSegment.Fields.Add(633, False, 0, False, 9);
    oSegment.Fields.Add(634, True, 0, False, 10);
    oSegment.Fields.Add(635, False, 0, False, 11);
  oSegment := oSegments.Add('OM3', 'CATEGORICAL TEST/OBSERVATION');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(636, False, 0, False, 3);
    oSegment.Fields.Add(637, True, 0, False, 4);
    oSegment.Fields.Add(638, True, 0, False, 5);
    oSegment.Fields.Add(639, False, 0, False, 6);
    oSegment.Fields.Add(640, False, 0, False, 7);
    oSegment.Fields.Add(641, False, 0, False, 8);
  oSegment := oSegments.Add('OM4', 'OBSERVATION that require specimens');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(642, False, 0, False, 3);
    oSegment.Fields.Add(643, False, 0, False, 4);
    oSegment.Fields.Add(644, False, 0, False, 5);
    oSegment.Fields.Add(645, False, 0, False, 6);
    oSegment.Fields.Add(646, False, 0, False, 7);
    oSegment.Fields.Add(647, False, 0, False, 8);
    oSegment.Fields.Add(648, False, 0, False, 9);
    oSegment.Fields.Add(649, False, 0, False, 10);
    oSegment.Fields.Add(650, False, 0, False, 11);
    oSegment.Fields.Add(651, False, 0, False, 12);
    oSegment.Fields.Add(652, False, 0, False, 13);
    oSegment.Fields.Add(653, True, 0, False, 14);
    oSegment.Fields.Add(654, False, 0, False, 15);
  oSegment := oSegments.Add('OM5', 'OBSERVATION BATTERIES');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(655, True, 0, False, 3);
    oSegment.Fields.Add(656, False, 0, False, 4);
  oSegment := oSegments.Add('OM6', 'OBSERVATIONS that are calculated from other obersvations');
    oSegment.Fields.Add(585, False, 0, False, 1);
    oSegment.Fields.Add(586, False, 0, False, 2);
    oSegment.Fields.Add(657, False, 0, False, 3);
  oSegment := oSegments.Add('ORC', 'COMMOM ORDER');
    oSegment.Fields.Add(215, False, 0, True, 1);
    oSegment.Fields.Add(216, False, 0, False, 2);
    oSegment.Fields.Add(217, False, 0, False, 3);
    oSegment.Fields.Add(218, False, 0, False, 4);
    oSegment.Fields.Add(219, False, 0, False, 5);
    oSegment.Fields.Add(220, False, 0, False, 6);
    oSegment.Fields.Add(221, True, 0, False, 7);
    oSegment.Fields.Add(222, False, 0, False, 8);
    oSegment.Fields.Add(223, False, 0, False, 9);
    oSegment.Fields.Add(224, False, 0, False, 10);
    oSegment.Fields.Add(225, False, 0, False, 11);
    oSegment.Fields.Add(226, False, 0, False, 12);
    oSegment.Fields.Add(227, False, 0, False, 13);
    oSegment.Fields.Add(228, True, 2, False, 14);
    oSegment.Fields.Add(229, False, 0, False, 15);
    oSegment.Fields.Add(230, False, 0, False, 16);
    oSegment.Fields.Add(231, False, 0, False, 17);
    oSegment.Fields.Add(232, False, 0, False, 18);
    oSegment.Fields.Add(233, False, 0, False, 19);
  oSegment := oSegments.Add('PID', 'PATIENT IDENTIFICATION');
    oSegment.Fields.Add(104, False, 0, False, 1);
    oSegment.Fields.Add(105, False, 0, False, 2);
    oSegment.Fields.Add(106, True, 0, True, 3);
    oSegment.Fields.Add(107, False, 0, False, 4);
    oSegment.Fields.Add(108, False, 0, True, 5);
    oSegment.Fields.Add(109, False, 0, False, 6);
    oSegment.Fields.Add(110, False, 0, False, 7);
    oSegment.Fields.Add(111, False, 0, False, 8);
    oSegment.Fields.Add(112, True, 0, False, 9);
    oSegment.Fields.Add(113, False, 0, False, 10);
    oSegment.Fields.Add(114, True, 3, False, 11);
    oSegment.Fields.Add(115, False, 0, False, 12);
    oSegment.Fields.Add(116, True, 3, False, 13);
    oSegment.Fields.Add(117, True, 3, False, 14);
    oSegment.Fields.Add(118, False, 0, False, 15);
    oSegment.Fields.Add(119, False, 0, False, 16);
    oSegment.Fields.Add(120, False, 0, False, 17);
    oSegment.Fields.Add(121, False, 0, False, 18);
    oSegment.Fields.Add(122, False, 0, False, 19);
    oSegment.Fields.Add(123, False, 0, False, 20);
    oSegment.Fields.Add(124, False, 0, False, 21);
    oSegment.Fields.Add(125, False, 0, False, 22);
    oSegment.Fields.Add(126, False, 0, False, 23);
    oSegment.Fields.Add(127, False, 0, False, 24);
    oSegment.Fields.Add(128, False, 0, False, 25);
    oSegment.Fields.Add(129, True, 0, False, 26);
    oSegment.Fields.Add(130, False, 0, False, 27);
  oSegment := oSegments.Add('PR1', 'PROCEDURES');
    oSegment.Fields.Add(391, False, 0, True, 1);
    oSegment.Fields.Add(392, True, 0, True, 2);
    oSegment.Fields.Add(393, True, 0, True, 3);
    oSegment.Fields.Add(394, True, 0, False, 4);
    oSegment.Fields.Add(395, False, 0, True, 5);
    oSegment.Fields.Add(396, False, 0, True, 6);
    oSegment.Fields.Add(397, False, 0, False, 7);
    oSegment.Fields.Add(398, False, 0, False, 8);
    oSegment.Fields.Add(399, False, 0, False, 9);
    oSegment.Fields.Add(400, False, 0, False, 10);
    oSegment.Fields.Add(401, False, 0, False, 11);
    oSegment.Fields.Add(402, True, 0, False, 12);
    oSegment.Fields.Add(403, False, 0, False, 13);
    oSegment.Fields.Add(404, False, 0, False, 14);
  oSegment := oSegments.Add('PRA', 'practitioner detail');
    oSegment.Fields.Add(685, False, 0, True, 1);
    oSegment.Fields.Add(686, True, 0, False, 2);
    oSegment.Fields.Add(687, True, 0, False, 3);
    oSegment.Fields.Add(688, False, 0, False, 4);
    oSegment.Fields.Add(689, True, 0, False, 5);
    oSegment.Fields.Add(690, True, 0, False, 6);
    oSegment.Fields.Add(691, True, 0, False, 7);
  oSegment := oSegments.Add('PV1', 'PATIENT VISIT');
    oSegment.Fields.Add(131, False, 0, False, 1);
    oSegment.Fields.Add(132, False, 0, True, 2);
    oSegment.Fields.Add(133, False, 0, False, 3);
    oSegment.Fields.Add(134, False, 0, False, 4);
    oSegment.Fields.Add(135, False, 0, False, 5);
    oSegment.Fields.Add(136, False, 0, False, 6);
    oSegment.Fields.Add(137, False, 0, False, 7);
    oSegment.Fields.Add(138, False, 0, False, 8);
    oSegment.Fields.Add(139, True, 0, False, 9);
    oSegment.Fields.Add(140, False, 0, False, 10);
    oSegment.Fields.Add(141, False, 0, False, 11);
    oSegment.Fields.Add(142, False, 0, False, 12);
    oSegment.Fields.Add(143, False, 0, False, 13);
    oSegment.Fields.Add(144, False, 0, False, 14);
    oSegment.Fields.Add(145, True, 0, False, 15);
    oSegment.Fields.Add(146, False, 0, False, 16);
    oSegment.Fields.Add(147, False, 0, False, 17);
    oSegment.Fields.Add(148, False, 0, False, 18);
    oSegment.Fields.Add(149, False, 0, False, 19);
    oSegment.Fields.Add(150, True, 4, False, 20);
    oSegment.Fields.Add(151, False, 0, False, 21);
    oSegment.Fields.Add(152, False, 0, False, 22);
    oSegment.Fields.Add(153, False, 0, False, 23);
    oSegment.Fields.Add(154, True, 0, False, 24);
    oSegment.Fields.Add(155, True, 0, False, 25);
    oSegment.Fields.Add(156, True, 0, False, 26);
    oSegment.Fields.Add(157, True, 0, False, 27);
    oSegment.Fields.Add(158, False, 0, False, 28);
    oSegment.Fields.Add(159, False, 0, False, 29);
    oSegment.Fields.Add(160, False, 0, False, 30);
    oSegment.Fields.Add(161, False, 0, False, 31);
    oSegment.Fields.Add(162, False, 0, False, 32);
    oSegment.Fields.Add(163, False, 0, False, 33);
    oSegment.Fields.Add(164, False, 0, False, 34);
    oSegment.Fields.Add(165, False, 0, False, 35);
    oSegment.Fields.Add(166, False, 0, False, 36);
    oSegment.Fields.Add(167, False, 0, False, 37);
    oSegment.Fields.Add(168, False, 0, False, 38);
    oSegment.Fields.Add(169, False, 0, False, 39);
    oSegment.Fields.Add(170, False, 0, False, 40);
    oSegment.Fields.Add(171, False, 0, False, 41);
    oSegment.Fields.Add(172, False, 0, False, 42);
    oSegment.Fields.Add(173, False, 0, False, 43);
    oSegment.Fields.Add(174, False, 0, False, 44);
    oSegment.Fields.Add(175, False, 0, False, 45);
    oSegment.Fields.Add(176, False, 0, False, 46);
    oSegment.Fields.Add(177, False, 0, False, 47);
    oSegment.Fields.Add(178, False, 0, False, 48);
    oSegment.Fields.Add(179, False, 0, False, 49);
    oSegment.Fields.Add(180, False, 0, False, 50);
  oSegment := oSegments.Add('PV2', 'PATIENT VISIT - additional information');
    oSegment.Fields.Add(181, False, 0, False, 1);
    oSegment.Fields.Add(182, False, 0, False, 2);
    oSegment.Fields.Add(183, False, 0, False, 3);
    oSegment.Fields.Add(184, False, 0, False, 4);
    oSegment.Fields.Add(185, True, 0, False, 5);
    oSegment.Fields.Add(186, False, 0, False, 6);
    oSegment.Fields.Add(187, False, 0, False, 7);
    oSegment.Fields.Add(188, False, 0, False, 8);
    oSegment.Fields.Add(189, False, 0, False, 9);
  oSegment := oSegments.Add('QRD', 'QUERY DEFINITION');
    oSegment.Fields.Add(25, False, 0, True, 1);
    oSegment.Fields.Add(26, False, 0, True, 2);
    oSegment.Fields.Add(27, False, 0, True, 3);
    oSegment.Fields.Add(28, False, 0, True, 4);
    oSegment.Fields.Add(29, False, 0, False, 5);
    oSegment.Fields.Add(30, False, 0, False, 6);
    oSegment.Fields.Add(31, False, 0, True, 7);
    oSegment.Fields.Add(32, True, 0, True, 8);
    oSegment.Fields.Add(33, True, 0, True, 9);
    oSegment.Fields.Add(34, True, 0, True, 10);
    oSegment.Fields.Add(35, True, 0, False, 11);
    oSegment.Fields.Add(36, False, 0, False, 12);
  oSegment := oSegments.Add('QRF', 'QUERY FILTER');
    oSegment.Fields.Add(37, True, 0, True, 1);
    oSegment.Fields.Add(38, False, 0, False, 2);
    oSegment.Fields.Add(39, False, 0, False, 3);
    oSegment.Fields.Add(40, True, 0, False, 4);
    oSegment.Fields.Add(41, True, 0, False, 5);
    oSegment.Fields.Add(42, True, 0, False, 6);
    oSegment.Fields.Add(43, True, 0, False, 7);
    oSegment.Fields.Add(44, True, 0, False, 8);
  oSegment := oSegments.Add('RQ1', 'REQUISITION DETAIL-!');
    oSegment.Fields.Add(285, False, 0, False, 1);
    oSegment.Fields.Add(286, False, 0, False, 2);
    oSegment.Fields.Add(287, False, 0, False, 3);
    oSegment.Fields.Add(288, False, 0, False, 4);
    oSegment.Fields.Add(289, False, 0, False, 5);
    oSegment.Fields.Add(290, False, 0, False, 6);
    oSegment.Fields.Add(291, False, 0, False, 7);
  oSegment := oSegments.Add('RQD', 'REQUISITION DETAIL');
    oSegment.Fields.Add(275, False, 0, False, 1);
    oSegment.Fields.Add(276, False, 0, False, 2);
    oSegment.Fields.Add(277, False, 0, False, 3);
    oSegment.Fields.Add(278, False, 0, False, 4);
    oSegment.Fields.Add(279, False, 0, False, 5);
    oSegment.Fields.Add(280, False, 0, False, 6);
    oSegment.Fields.Add(281, False, 0, False, 7);
    oSegment.Fields.Add(282, False, 0, False, 8);
    oSegment.Fields.Add(283, False, 0, False, 9);
    oSegment.Fields.Add(284, False, 0, False, 10);
  oSegment := oSegments.Add('RXA', 'PHARMACY AADMINISTRATION');
    oSegment.Fields.Add(342, False, 0, True, 1);
    oSegment.Fields.Add(344, False, 0, True, 2);
    oSegment.Fields.Add(345, False, 0, True, 3);
    oSegment.Fields.Add(346, False, 0, True, 4);
    oSegment.Fields.Add(347, False, 0, True, 5);
    oSegment.Fields.Add(348, False, 0, True, 6);
    oSegment.Fields.Add(349, False, 0, False, 7);
    oSegment.Fields.Add(350, False, 0, False, 8);
    oSegment.Fields.Add(351, False, 0, False, 9);
    oSegment.Fields.Add(352, False, 0, False, 10);
    oSegment.Fields.Add(353, False, 0, False, 11);
    oSegment.Fields.Add(354, False, 0, False, 12);
  oSegment := oSegments.Add('RXC', 'PHARMACY COMPONENT ORDER');
    oSegment.Fields.Add(313, False, 0, True, 1);
    oSegment.Fields.Add(314, False, 0, True, 2);
    oSegment.Fields.Add(315, False, 0, True, 3);
    oSegment.Fields.Add(316, False, 0, True, 4);
  oSegment := oSegments.Add('RXD', 'PHARMACY DISPENSE');
    oSegment.Fields.Add(334, False, 0, False, 1);
    oSegment.Fields.Add(335, False, 0, True, 2);
    oSegment.Fields.Add(336, False, 0, False, 3);
    oSegment.Fields.Add(337, False, 0, True, 4);
    oSegment.Fields.Add(338, False, 0, False, 5);
    oSegment.Fields.Add(339, False, 0, False, 6);
    oSegment.Fields.Add(325, False, 0, True, 7);
    oSegment.Fields.Add(326, False, 0, False, 8);
    oSegment.Fields.Add(340, True, 0, False, 9);
    oSegment.Fields.Add(341, False, 0, False, 10);
    oSegment.Fields.Add(322, False, 0, False, 11);
    oSegment.Fields.Add(329, False, 0, False, 12);
    oSegment.Fields.Add(299, False, 0, False, 13);
    oSegment.Fields.Add(307, False, 0, False, 14);
    oSegment.Fields.Add(330, False, 0, False, 15);
  oSegment := oSegments.Add('RXE', 'PHARMACY ENCODED ORDER');
    oSegment.Fields.Add(221, True, 0, False, 1);
    oSegment.Fields.Add(317, False, 0, True, 2);
    oSegment.Fields.Add(318, False, 0, True, 3);
    oSegment.Fields.Add(319, False, 0, False, 4);
    oSegment.Fields.Add(320, False, 0, True, 5);
    oSegment.Fields.Add(321, False, 0, False, 6);
    oSegment.Fields.Add(298, True, 0, False, 7);
    oSegment.Fields.Add(299, False, 0, False, 8);
    oSegment.Fields.Add(322, False, 0, False, 9);
    oSegment.Fields.Add(323, False, 0, False, 10);
    oSegment.Fields.Add(324, False, 0, False, 11);
    oSegment.Fields.Add(304, False, 0, False, 12);
    oSegment.Fields.Add(305, False, 0, False, 13);
    oSegment.Fields.Add(306, False, 0, False, 14);
    oSegment.Fields.Add(325, False, 0, True, 15);
    oSegment.Fields.Add(326, False, 0, False, 16);
    oSegment.Fields.Add(327, False, 0, False, 17);
    oSegment.Fields.Add(328, False, 0, False, 18);
    oSegment.Fields.Add(329, False, 0, False, 19);
    oSegment.Fields.Add(307, False, 0, False, 20);
    oSegment.Fields.Add(330, False, 0, False, 21);
    oSegment.Fields.Add(331, False, 0, False, 22);
    oSegment.Fields.Add(332, False, 0, False, 23);
    oSegment.Fields.Add(333, False, 0, False, 24);
  oSegment := oSegments.Add('RXG', 'PHARMACY GIVE');
    oSegment.Fields.Add(342, False, 0, True, 1);
    oSegment.Fields.Add(334, False, 0, False, 2);
    oSegment.Fields.Add(221, True, 0, False, 3);
    oSegment.Fields.Add(317, False, 0, True, 4);
    oSegment.Fields.Add(318, False, 0, True, 5);
    oSegment.Fields.Add(319, False, 0, False, 6);
    oSegment.Fields.Add(320, False, 0, True, 7);
    oSegment.Fields.Add(321, False, 0, False, 8);
    oSegment.Fields.Add(351, False, 0, False, 9);
    oSegment.Fields.Add(322, False, 0, False, 10);
    oSegment.Fields.Add(299, False, 0, False, 11);
    oSegment.Fields.Add(307, False, 0, False, 12);
    oSegment.Fields.Add(343, True, 0, False, 13);
    oSegment.Fields.Add(331, False, 0, False, 14);
    oSegment.Fields.Add(332, False, 0, False, 15);
    oSegment.Fields.Add(333, False, 0, False, 16);
  oSegment := oSegments.Add('RXO', 'PHARMACY PRESCRIPTION ORDER');
    oSegment.Fields.Add(292, False, 0, True, 1);
    oSegment.Fields.Add(293, False, 0, True, 2);
    oSegment.Fields.Add(294, False, 0, False, 3);
    oSegment.Fields.Add(295, False, 0, True, 4);
    oSegment.Fields.Add(296, False, 0, False, 5);
    oSegment.Fields.Add(297, True, 0, False, 6);
    oSegment.Fields.Add(298, True, 0, False, 7);
    oSegment.Fields.Add(299, False, 0, False, 8);
    oSegment.Fields.Add(300, False, 0, False, 9);
    oSegment.Fields.Add(301, False, 0, False, 10);
    oSegment.Fields.Add(302, False, 0, False, 11);
    oSegment.Fields.Add(303, False, 0, False, 12);
    oSegment.Fields.Add(304, False, 0, False, 13);
    oSegment.Fields.Add(305, False, 0, False, 14);
    oSegment.Fields.Add(306, False, 0, False, 15);
    oSegment.Fields.Add(307, False, 0, False, 16);
    oSegment.Fields.Add(308, False, 0, False, 17);
  oSegment := oSegments.Add('RXR', 'PHARMACY ROUTE');
    oSegment.Fields.Add(309, False, 0, True, 1);
    oSegment.Fields.Add(310, False, 0, False, 2);
    oSegment.Fields.Add(311, False, 0, False, 3);
    oSegment.Fields.Add(312, False, 0, False, 4);
  oSegment := oSegments.Add('STF', 'staff identification segment');
    oSegment.Fields.Add(671, False, 0, True, 1);
    oSegment.Fields.Add(672, True, 0, False, 2);
    oSegment.Fields.Add(673, False, 0, False, 3);
    oSegment.Fields.Add(674, True, 0, False, 4);
    oSegment.Fields.Add(111, False, 0, False, 5);
    oSegment.Fields.Add(110, False, 0, False, 6);
    oSegment.Fields.Add(675, False, 0, False, 7);
    oSegment.Fields.Add(676, True, 0, False, 8);
    oSegment.Fields.Add(677, True, 0, False, 9);
    oSegment.Fields.Add(678, True, 0, False, 10);
    oSegment.Fields.Add(679, True, 2, False, 11);
    oSegment.Fields.Add(680, True, 0, False, 12);
    oSegment.Fields.Add(681, True, 0, False, 13);
    oSegment.Fields.Add(682, True, 0, False, 14);
    oSegment.Fields.Add(683, True, 0, False, 15);
    oSegment.Fields.Add(684, False, 0, False, 16);
  oSegment := oSegments.Add('UB1', 'UB82 DATA');
    oSegment.Fields.Add(530, False, 0, False, 1);
    oSegment.Fields.Add(492, False, 0, False, 2);
    oSegment.Fields.Add(532, False, 0, False, 3);
    oSegment.Fields.Add(533, False, 0, False, 4);
    oSegment.Fields.Add(534, False, 0, False, 5);
    oSegment.Fields.Add(535, False, 0, False, 6);
    oSegment.Fields.Add(536, True, 5, False, 7);
    oSegment.Fields.Add(537, False, 0, False, 8);
    oSegment.Fields.Add(538, False, 0, False, 9);
    oSegment.Fields.Add(539, True, 8, False, 10);
    oSegment.Fields.Add(540, False, 0, False, 11);
    oSegment.Fields.Add(541, False, 0, False, 12);
    oSegment.Fields.Add(542, False, 0, False, 13);
    oSegment.Fields.Add(543, False, 0, False, 14);
    oSegment.Fields.Add(544, False, 0, False, 15);
    oSegment.Fields.Add(545, True, 5, False, 16);
    oSegment.Fields.Add(546, False, 0, False, 17);
    oSegment.Fields.Add(547, False, 0, False, 18);
    oSegment.Fields.Add(548, False, 0, False, 19);
    oSegment.Fields.Add(549, False, 0, False, 20);
    oSegment.Fields.Add(550, False, 0, False, 21);
    oSegment.Fields.Add(551, False, 0, False, 22);
    oSegment.Fields.Add(552, False, 0, False, 23);
  oSegment := oSegments.Add('UB2', 'UB92 DATA');
    oSegment.Fields.Add(553, False, 0, False, 1);
    oSegment.Fields.Add(554, False, 0, False, 2);
    oSegment.Fields.Add(555, True, 7, False, 3);
    oSegment.Fields.Add(556, False, 0, False, 4);
    oSegment.Fields.Add(557, False, 0, False, 5);
    oSegment.Fields.Add(558, True, 12, False, 6);
    oSegment.Fields.Add(559, True, 8, False, 7);
    oSegment.Fields.Add(560, True, 2, False, 8);
    oSegment.Fields.Add(561, True, 2, False, 9);
    oSegment.Fields.Add(562, True, 2, False, 10);
    oSegment.Fields.Add(563, False, 0, False, 11);
    oSegment.Fields.Add(564, True, 3, False, 12);
    oSegment.Fields.Add(565, True, 23, False, 13);
    oSegment.Fields.Add(566, True, 5, False, 14);
    oSegment.Fields.Add(567, False, 0, False, 15);
    oSegment.Fields.Add(568, True, 2, False, 16);
  oSegment := oSegments.Add('URD', 'RESULTS/UPDATE DEFINITION');
    oSegment.Fields.Add(45, False, 0, False, 1);
    oSegment.Fields.Add(46, False, 0, False, 2);
    oSegment.Fields.Add(47, True, 0, True, 3);
    oSegment.Fields.Add(48, True, 0, False, 4);
    oSegment.Fields.Add(49, True, 0, False, 5);
    oSegment.Fields.Add(50, True, 0, False, 6);
    oSegment.Fields.Add(51, False, 0, False, 7);
  oSegment := oSegments.Add('URS', 'UNSOLICITED SELECTION');
    oSegment.Fields.Add(52, True, 0, True, 1);
    oSegment.Fields.Add(53, False, 0, False, 2);
    oSegment.Fields.Add(54, False, 0, False, 3);
    oSegment.Fields.Add(55, True, 0, False, 4);
    oSegment.Fields.Add(56, True, 0, False, 5);
    oSegment.Fields.Add(57, True, 0, False, 6);
    oSegment.Fields.Add(58, True, 0, False, 7);
    oSegment.Fields.Add(59, True, 0, False, 8);
  oSegments.Add('Zxx', 'any Z segment');
  oSegments.Add('[', 'begin optional');
  oSegments.Add(']', 'end optional');
  oSegments.Add('{', 'begin repetition');
  oSegments.Add('|', 'next choice');
  oSegments.Add('}', 'end repetition');
End;


procedure Definitions22LoadMessageStructures(oStructures : THL7V2ModelMessageStructures);
Var
  oStructure : THL7V2ModelMessageStructure;
  oGrp1 : THL7V2ModelSegmentGroup;
  oGrp2 : THL7V2ModelSegmentGroup;
  oGrp3 : THL7V2ModelSegmentGroup;
  oGrp4 : THL7V2ModelSegmentGroup;
Begin
  oStructures.Add('?', 'unknown', '', '', '');
  oStructures.Add('ACK', 'Standard Acknowlegdement', 'A01', 'ACK', '');
  oStructure := oStructures.Add('ACK_A01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A05', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A05', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A06', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A06', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A07', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A07', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A08', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A08', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A09', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A09', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A10', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A10', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A11', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A11', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A12', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A12', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A13', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A13', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A14', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A14', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A15', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A15', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A16', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A16', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A17', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A17', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A18', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A18', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A20', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A20', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A21', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A21', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A22', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A22', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A23', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A23', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A24', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A24', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A25', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A25', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A26', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A26', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A27', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A27', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A28', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A28', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A29', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A29', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A30', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A30', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A31', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A31', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A32', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A32', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A33', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A33', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A34', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A34', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A35', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A35', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A36', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A36', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_A37', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_A37', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_N01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_N01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
  oStructure := oStructures.Add('ACK_O01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_O01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_O02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_O02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_P01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_P01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_P02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_P02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_P03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_P03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_Q02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_Q02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_Q03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_Q03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ACK_Q05', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_Q05', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
  oStructure := oStructures.Add('ACK_R01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_R01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
  oStructure := oStructures.Add('ACK_R02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_R02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
  oStructure := oStructures.Add('ACK_R03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_R03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
  oStructure := oStructures.Add('ACK_R04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ACK_R04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
  oStructure := oStructures.Add('ADR_A19', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADR_A19', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('QUERY_RESPONSE', False, True, gtGroup);
      oGrp1.Children.Add('EVN', True, False, gtSingle);
      oGrp1.Children.Add('PID', False, False, gtSingle);
      oGrp1.Children.Add('NK1', True, True, gtSingle);
      oGrp1.Children.Add('PV1', False, False, gtSingle);
      oGrp1.Children.Add('PV2', True, False, gtSingle);
      oGrp1.Children.Add('OBX', True, True, gtSingle);
      oGrp1.Children.Add('AL1', True, True, gtSingle);
      oGrp1.Children.Add('DG1', True, True, gtSingle);
      oGrp1.Children.Add('PR1', True, True, gtSingle);
      oGrp1.Children.Add('GT1', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('INSURANCE', True, False, gtGroup);
        oGrp3 := oGrp2.Children.Add('', False, True, gtGroup);
          oGrp3.Children.Add('IN1', False, False, gtSingle);
          oGrp3.Children.Add('IN2', True, False, gtSingle);
          oGrp3.Children.Add('IN3', True, False, gtSingle);
      oGrp1.Children.Add('ACC', True, False, gtSingle);
      oGrp1.Children.Add('UB1', True, False, gtSingle);
      oGrp1.Children.Add('UB2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A05', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A05', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A06', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A06', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A07', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A07', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A08', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A08', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A09', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A09', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A10', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A10', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A11', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A11', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A12', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A12', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A13', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A13', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A14', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A14', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A15', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A15', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A16', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A16', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A17', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A17', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A18', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A18', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A20', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A20', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NPU', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A21', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A21', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A22', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A22', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A23', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A23', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A24', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A24', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A25', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A25', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A26', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A26', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A27', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A27', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A28', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A28', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A29', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A29', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A30', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A30', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A31', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A31', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NK1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('AL1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DG1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('PR1', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('GT1', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('INSURANCE', True, False, gtGroup);
      oGrp2 := oGrp1.Children.Add('', False, True, gtGroup);
        oGrp2.Children.Add('IN1', False, False, gtSingle);
        oGrp2.Children.Add('IN2', True, False, gtSingle);
        oGrp2.Children.Add('IN3', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ACC', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('ADT_A32', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A32', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A33', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A33', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
  oStructure := oStructures.Add('ADT_A34', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A34', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A35', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A35', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A36', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A36', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MRG', False, False, gtSingle);
  oStructure := oStructures.Add('ADT_A37', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ADT_A37', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', True, False, gtSingle);
  oStructure := oStructures.Add('BAR_P01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('BAR_P01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('VISIT', False, True, gtGroup);
      oGrp1.Children.Add('PV1', True, False, gtSingle);
      oGrp1.Children.Add('PV2', True, False, gtSingle);
      oGrp1.Children.Add('OBX', True, True, gtSingle);
      oGrp1.Children.Add('AL1', True, True, gtSingle);
      oGrp1.Children.Add('DG1', True, True, gtSingle);
      oGrp1.Children.Add('PR1', True, True, gtSingle);
      oGrp1.Children.Add('GT1', True, True, gtSingle);
      oGrp1.Children.Add('NK1', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('INSURANCE', True, False, gtGroup);
        oGrp3 := oGrp2.Children.Add('', False, True, gtGroup);
          oGrp3.Children.Add('IN1', False, False, gtSingle);
          oGrp3.Children.Add('IN2', True, False, gtSingle);
          oGrp3.Children.Add('IN3', True, False, gtSingle);
      oGrp1.Children.Add('ACC', True, False, gtSingle);
      oGrp1.Children.Add('UB1', True, False, gtSingle);
      oGrp1.Children.Add('UB2', True, False, gtSingle);
  oStructure := oStructures.Add('BAR_P02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('BAR_P02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('PATIENT', False, True, gtGroup);
      oGrp1.Children.Add('PID', False, False, gtSingle);
      oGrp1.Children.Add('PV1', True, False, gtSingle);
  oStructure := oStructures.Add('DFT_P03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('DFT_P03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('EVN', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PID', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV1', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('PV2', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('OBX', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('FT1', False, True, gtSingle);
  oStructure := oStructures.Add('DSR_P04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('DSR_P04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSP', False, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('DSR_Q01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('DSR_Q01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSP', False, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('DSR_Q03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('DSR_Q03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSP', False, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('DSR_R03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('DSR_R03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSP', False, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFD_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFD_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFD_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFD_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFD_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFD_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFK_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFK_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFK_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFK_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFK_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFK_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFA', True, True, gtSingle);
  oStructure := oStructures.Add('MFN_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFN_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
  oStructure := oStructures.Add('MFN_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFN_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF_STAFF', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
  oStructure := oStructures.Add('MFN_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFN_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF_TEST', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
  oStructure := oStructures.Add('MFQ_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFQ_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFQ_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFQ_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFQ_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFQ_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFR_M01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFR_M01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFR_M02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFR_M02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF_STAFF', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('MFR_M03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('MFR_M03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MFI', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('MF_TEST', False, True, gtGroup);
      oGrp1.Children.Add('MFE', False, False, gtSingle);
      oGrp1.Children.Add('Zxx', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('NMD_N01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('NMD_N01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('CLOCK_AND_STATS_WITH_NOTES', False, True, gtGroup);
      oGrp2 := oGrp1.Children.Add('CLOCK', True, False, gtGroup);
        oGrp2.Children.Add('NCK', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('APP_STATS', True, False, gtGroup);
        oGrp2.Children.Add('NST', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('APP_STATUS', True, False, gtGroup);
        oGrp2.Children.Add('NSC', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
  oStructure := oStructures.Add('NMQ_N02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('NMQ_N02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('QRY_WITH_DETAIL', True, False, gtGroup);
      oGrp1.Children.Add('QRD', False, False, gtSingle);
      oGrp1.Children.Add('QRF', True, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('CLOCK_AND_STATISTICS', False, True, gtGroup);
      oGrp1.Children.Add('NCK', True, False, gtSingle);
      oGrp1.Children.Add('NST', True, False, gtSingle);
      oGrp1.Children.Add('NSC', True, False, gtSingle);
  oStructure := oStructures.Add('NMR_N02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('NMR_N02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('ERR', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', True, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('CLOCK_AND_STATS_WITH_NOTES_ALT', False, True, gtGroup);
      oGrp1.Children.Add('NCK', True, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
      oGrp1.Children.Add('NST', True, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
      oGrp1.Children.Add('NSC', True, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
  oStructure := oStructures.Add('ORF_R04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ORF_R04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('QUERY_RESPONSE', False, True, gtGroup);
      oGrp1.Children.Add('QRD', False, False, gtSingle);
      oGrp1.Children.Add('QRF', True, False, gtSingle);
      oGrp1.Children.Add('PID', True, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('ORDER', False, True, gtGroup);
      oGrp1.Children.Add('ORC', True, False, gtSingle);
      oGrp1.Children.Add('OBR', False, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('OBSERVATION', False, True, gtGroup);
        oGrp2.Children.Add('OBX', True, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('ORM_O01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ORM_O01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NTE', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('PATIENT', True, False, gtGroup);
      oGrp1.Children.Add('PID', False, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
      oGrp1.Children.Add('PV1', True, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('ORDER', False, True, gtGroup);
      oGrp1.Children.Add('ORC', False, False, gtSingle);
      oGrp2 := oGrp1.Children.Add('ORDER_DETAIL', True, False, gtGroup);
        oGrp3 := oGrp2.Children.Add('CHOICE', False, True, gtChoice);
          oGrp3.Children.Add('OBR', False, False, gtSingle);
          oGrp3.Children.Add('RQD', False, False, gtSingle);
          oGrp3.Children.Add('RQ1', False, False, gtSingle);
          oGrp3.Children.Add('RXO', False, False, gtSingle);
          oGrp3.Children.Add('ODS', False, False, gtSingle);
          oGrp3.Children.Add('ODT', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
        oGrp2.Children.Add('OBX', True, True, gtSingle);
        oGrp2.Children.Add('NTE', False, True, gtSingle);
      oGrp1.Children.Add('BLG', True, False, gtSingle);
  oStructure := oStructures.Add('ORR_O02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ORR_O02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('MSA', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('NTE', True, True, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('PATIENT', True, False, gtGroup);
      oGrp1.Children.Add('PID', True, False, gtSingle);
      oGrp1.Children.Add('NTE', True, True, gtSingle);
      oGrp2 := oGrp1.Children.Add('ORDER', False, True, gtGroup);
        oGrp2.Children.Add('ORC', False, False, gtSingle);
        oGrp3 := oGrp2.Children.Add('ORDER_DETAIL', True, False, gtGroup);
          oGrp4 := oGrp3.Children.Add('CHOICE', False, True, gtChoice);
            oGrp4.Children.Add('OBR', False, False, gtSingle);
            oGrp4.Children.Add('RQD', False, False, gtSingle);
            oGrp4.Children.Add('RQ1', False, False, gtSingle);
            oGrp4.Children.Add('RXO', False, False, gtSingle);
            oGrp4.Children.Add('ODS', False, False, gtSingle);
            oGrp4.Children.Add('ODT', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
  oStructure := oStructures.Add('ORU_R01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ORU_R01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('PATIENT_RESULT', False, True, gtGroup);
      oGrp2 := oGrp1.Children.Add('PATIENT', True, False, gtGroup);
        oGrp2.Children.Add('PID', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
        oGrp2.Children.Add('PV1', True, False, gtSingle);
      oGrp2 := oGrp1.Children.Add('ORDER_OBSERVATION', False, True, gtGroup);
        oGrp2.Children.Add('ORC', True, False, gtSingle);
        oGrp2.Children.Add('OBR', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
        oGrp3 := oGrp2.Children.Add('OBSERVATION', False, True, gtGroup);
          oGrp3.Children.Add('OBX', True, False, gtSingle);
          oGrp3.Children.Add('NTE', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('ORU_R03', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('ORU_R03', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oGrp1 := oStructure.SegmentMap.Children.Add('PATIENT_RESULT', False, True, gtGroup);
      oGrp2 := oGrp1.Children.Add('PATIENT', True, False, gtGroup);
        oGrp2.Children.Add('PID', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
        oGrp2.Children.Add('PV1', True, False, gtSingle);
      oGrp2 := oGrp1.Children.Add('ORDER_OBSERVATION', False, True, gtGroup);
        oGrp2.Children.Add('ORC', True, False, gtSingle);
        oGrp2.Children.Add('OBR', False, False, gtSingle);
        oGrp2.Children.Add('NTE', True, True, gtSingle);
        oGrp3 := oGrp2.Children.Add('OBSERVATION', False, True, gtGroup);
          oGrp3.Children.Add('OBX', True, False, gtSingle);
          oGrp3.Children.Add('NTE', True, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('QRY_A19', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('QRY_A19', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
  oStructure := oStructures.Add('QRY_P04', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('QRY_P04', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('QRY_Q01', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('QRY_Q01', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('QRY_Q02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('QRY_Q02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('QRY_R02', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('QRY_R02', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('QRF', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', True, False, gtSingle);
  oStructure := oStructures.Add('UDM_Q05', '(Implicitly Created by HL7Connect)', '', '', '');
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create;
  oStructure.SegmentMap := THL7V2ModelSegmentGroup.Create('UDM_Q05', False, False, gtGroup);
    oStructure.SegmentMap.Children.Add('MSH', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('URD', False, False, gtSingle);
    oStructure.SegmentMap.Children.Add('URS', True, False, gtSingle);
    oStructure.SegmentMap.Children.Add('DSP', False, True, gtSingle);
    oStructure.SegmentMap.Children.Add('DSC', False, False, gtSingle);
End;


procedure Definitions22LoadEvents(oEvents : THL7V2ModelEvents);
Var
  oEvent : THL7V2ModelEvent;
Begin
  oEvent := oEvents.Add('A01', 'Admit a Patient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A02', 'Transfer a patient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A03', 'Discharge a patient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A04', 'Register a Patient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A05', 'Pre-admit a Patient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A06', 'Transfer an Outpatient to Inpatient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A07', 'Transfer an Inpatient to Outpatient');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A08', 'Update Patient Information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A09', 'Patient Departing');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A10', 'Patient Arriving');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A11', 'Cancel Admit');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A12', 'Cancel Transfer');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A13', 'Cancel Discharge');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A14', 'Pending Admit');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A15', 'Pending Transfer');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A16', 'Pending Discharge');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A17', 'Swap Patients');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A18', 'Merge Patient Information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A19', 'Patient Query');
    oEvent.Messages.Add('QRY', '?', 'ADR', '?');
  oEvent := oEvents.Add('A20', 'Bed Status Update');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A21', 'A Patient Goes On A "Leave Of Absence"');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A22', 'A Patient Returns From A "Leave Of Absence"');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A23', 'Delete a Patient Record');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A24', 'Link Patient Information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A25', 'Cancel Pending Discharge');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A26', 'Cancel Pending Transfer');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A27', 'Cancel Pending Admit');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A28', 'Add person information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A29', 'Delete person information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A30', 'Merge Patient information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A31', 'Update person information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A32', 'Cancel patient arriving');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A33', 'Cancel patient departing');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A34', 'Merge patient information - patient ID only');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A35', 'Merge patient information - account number only');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A36', 'Merge patient information - pat ID and account number');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('A37', 'unlink patient information');
    oEvent.Messages.Add('ADT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('M01', 'Master files change not otherwise specified (for backwards comp.)');
    oEvent.Messages.Add('MFN', '?', 'MFK', '?');
    oEvent.Messages.Add('MFD', '?', 'ACK', 'ACK');
    oEvent.Messages.Add('MFQ', '?', 'MFR', '?');
  oEvent := oEvents.Add('M02', 'Master files change - Staff Practitioneer');
    oEvent.Messages.Add('MFN', '?', 'MFK', '?');
    oEvent.Messages.Add('MFD', '?', 'ACK', 'ACK');
    oEvent.Messages.Add('MFQ', '?', 'MFR', '?');
  oEvent := oEvents.Add('M03', 'Master files change - Test/Observation');
    oEvent.Messages.Add('MFN', '?', 'MFK', '?');
    oEvent.Messages.Add('MFD', '?', 'ACK', 'ACK');
    oEvent.Messages.Add('MFQ', '?', 'MFR', '?');
  oEvent := oEvents.Add('N01', 'Network Management Data');
    oEvent.Messages.Add('NMD', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('N02', 'Network Management Query');
    oEvent.Messages.Add('NMQ', '?', 'NMR', '?');
  oEvent := oEvents.Add('O01', 'Order Message');
    oEvent.Messages.Add('ORM', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('O02', 'Response Message');
    oEvent.Messages.Add('ORR', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('P01', 'Add and Update Patient Accounts');
    oEvent.Messages.Add('BAR', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('P02', 'Purge Patient Accounts');
    oEvent.Messages.Add('BAR', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('P03', 'Post Detail Financial Transactions');
    oEvent.Messages.Add('DFT', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('P04', 'Generate bills and A/R statements');
    oEvent.Messages.Add('QRY', '?', 'DSR', '?');
  oEvent := oEvents.Add('Q01', 'A Query is made for immediate Display Response');
    oEvent.Messages.Add('QRY', '?', 'DSR', '?');
  oEvent := oEvents.Add('Q02', 'A Query is Sent for Deferred Response');
    oEvent.Messages.Add('QRY', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('Q03', 'Deferred Response to A Query');
    oEvent.Messages.Add('DSR', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('Q05', 'Unsolicited Display Update Message');
    oEvent.Messages.Add('UDM', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('R01', 'Unsolicited Transmission Of Requested Information');
    oEvent.Messages.Add('ORU', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('R02', 'Query for results of observation');
    oEvent.Messages.Add('QRY', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('R03', 'Display-oriented results, query/unsol. update');
    oEvent.Messages.Add('DSR', '?', 'ACK', 'ACK');
  oEvent := oEvents.Add('R04', 'Response to query; transmission of requested observation');
    oEvent.Messages.Add('ORF', '?', 'ACK', 'ACK');
End;



End.


