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
library fhirnpp;

{$R 'helloworldres.res' 'helloworldres.rc'}

uses
  FastMM4 in '..\Libraries\FMM\FastMM4.pas',
  FastMM4Messages in '..\Libraries\FMM\FastMM4Messages.pas',
  SysUtils,
  Classes,
  Types,
  Windows,
  Messages,
  nppplugin in 'npplib\nppplugin.pas',
  SciSupport in 'npplib\SciSupport.pas',
  NppForms in 'npplib\NppForms.pas' {NppForm},
  NppDockingForms in 'npplib\NppDockingForms.pas' {NppDockingForm},
  FHIRPlugin in 'FHIRPlugin.pas',
  SettingsForm in 'SettingsForm.pas' {SettingForm},
  FHIRToolboxForm in 'FHIRToolboxForm.pas' {FHIRToolbox},
  FHIRPluginSettings in 'FHIRPluginSettings.pas',
  FHIRValidator in '..\reference-platform\dstu3\FHIRValidator.pas',
  StringSupport in '..\reference-platform\Support\StringSupport.pas',
  MathSupport in '..\reference-platform\Support\MathSupport.pas',
  AdvObjects in '..\reference-platform\Support\AdvObjects.pas',
  AdvExceptions in '..\reference-platform\Support\AdvExceptions.pas',
  AdvFactories in '..\reference-platform\Support\AdvFactories.pas',
  FileSupport in '..\reference-platform\Support\FileSupport.pas',
  MemorySupport in '..\reference-platform\Support\MemorySupport.pas',
  DateSupport in '..\reference-platform\Support\DateSupport.pas',
  ErrorSupport in '..\reference-platform\Support\ErrorSupport.pas',
  SystemSupport in '..\reference-platform\Support\SystemSupport.pas',
  ThreadSupport in '..\reference-platform\Support\ThreadSupport.pas',
  EncodeSupport in '..\reference-platform\Support\EncodeSupport.pas',
  AdvControllers in '..\reference-platform\Support\AdvControllers.pas',
  AdvPersistents in '..\reference-platform\Support\AdvPersistents.pas',
  AdvFilers in '..\reference-platform\Support\AdvFilers.pas',
  ColourSupport in '..\reference-platform\Support\ColourSupport.pas',
  CurrencySupport in '..\reference-platform\Support\CurrencySupport.pas',
  AdvPersistentLists in '..\reference-platform\Support\AdvPersistentLists.pas',
  AdvObjectLists in '..\reference-platform\Support\AdvObjectLists.pas',
  AdvItems in '..\reference-platform\Support\AdvItems.pas',
  AdvCollections in '..\reference-platform\Support\AdvCollections.pas',
  AdvIterators in '..\reference-platform\Support\AdvIterators.pas',
  AdvClassHashes in '..\reference-platform\Support\AdvClassHashes.pas',
  AdvHashes in '..\reference-platform\Support\AdvHashes.pas',
  HashSupport in '..\reference-platform\Support\HashSupport.pas',
  AdvStringHashes in '..\reference-platform\Support\AdvStringHashes.pas',
  AdvProfilers in '..\reference-platform\Support\AdvProfilers.pas',
  AdvStringIntegerMatches in '..\reference-platform\Support\AdvStringIntegerMatches.pas',
  AdvStreams in '..\reference-platform\Support\AdvStreams.pas',
  AdvParameters in '..\reference-platform\Support\AdvParameters.pas',
  AdvExclusiveCriticalSections in '..\reference-platform\Support\AdvExclusiveCriticalSections.pas',
  AdvThreads in '..\reference-platform\Support\AdvThreads.pas',
  AdvSignals in '..\reference-platform\Support\AdvSignals.pas',
  AdvIntegerMatches in '..\reference-platform\Support\AdvIntegerMatches.pas',
  AdvBuffers in '..\reference-platform\Support\AdvBuffers.pas',
  BytesSupport in '..\reference-platform\Support\BytesSupport.pas',
  AdvStringBuilders in '..\reference-platform\Support\AdvStringBuilders.pas',
  AdvFiles in '..\reference-platform\Support\AdvFiles.pas',
  AdvLargeIntegerMatches in '..\reference-platform\Support\AdvLargeIntegerMatches.pas',
  AdvStringLargeIntegerMatches in '..\reference-platform\Support\AdvStringLargeIntegerMatches.pas',
  AdvStringLists in '..\reference-platform\Support\AdvStringLists.pas',
  AdvCSVFormatters in '..\reference-platform\Support\AdvCSVFormatters.pas',
  AdvTextFormatters in '..\reference-platform\Support\AdvTextFormatters.pas',
  AdvFormatters in '..\reference-platform\Support\AdvFormatters.pas',
  AdvCSVExtractors in '..\reference-platform\Support\AdvCSVExtractors.pas',
  AdvTextExtractors in '..\reference-platform\Support\AdvTextExtractors.pas',
  AdvExtractors in '..\reference-platform\Support\AdvExtractors.pas',
  AdvCharacterSets in '..\reference-platform\Support\AdvCharacterSets.pas',
  AdvOrdinalSets in '..\reference-platform\Support\AdvOrdinalSets.pas',
  AdvStreamReaders in '..\reference-platform\Support\AdvStreamReaders.pas',
  AdvStringStreams in '..\reference-platform\Support\AdvStringStreams.pas',
  AdvGenerics in '..\reference-platform\Support\AdvGenerics.pas',
  AdvJSON in '..\reference-platform\Support\AdvJSON.pas',
  AdvVCLStreams in '..\reference-platform\Support\AdvVCLStreams.pas',
  AdvStringObjectMatches in '..\reference-platform\Support\AdvStringObjectMatches.pas',
  AdvNameBuffers in '..\reference-platform\Support\AdvNameBuffers.pas',
  AdvMemories in '..\reference-platform\Support\AdvMemories.pas',
  FHIRBase in '..\reference-platform\support\FHIRBase.pas',
  DecimalSupport in '..\reference-platform\Support\DecimalSupport.pas',
  GUIDSupport in '..\reference-platform\Support\GUIDSupport.pas',
  HL7V2DateSupport in '..\reference-platform\Support\HL7V2DateSupport.pas',
  AdvNames in '..\reference-platform\Support\AdvNames.pas',
  AdvStringMatches in '..\reference-platform\Support\AdvStringMatches.pas',
  FHIRUtilities in '..\reference-platform\dstu3\FHIRUtilities.pas',
  OIDSupport in '..\reference-platform\Support\OIDSupport.pas',
  TextUtilities in '..\reference-platform\Support\TextUtilities.pas',
  FHIRSupport in '..\reference-platform\dstu3\FHIRSupport.pas',
  JWT in '..\reference-platform\Support\JWT.pas',
  HMAC in '..\reference-platform\Support\HMAC.pas',
  libeay32 in '..\reference-platform\Support\libeay32.pas',
  SCIMObjects in '..\reference-platform\support\SCIMObjects.pas',
  FHIRResources in '..\reference-platform\dstu3\FHIRResources.pas',
  FHIRTypes in '..\reference-platform\dstu3\FHIRTypes.pas',
  FHIRConstants in '..\reference-platform\dstu3\FHIRConstants.pas',
  FHIRSecurity in '..\reference-platform\support\FHIRSecurity.pas',
  FHIRTags in '..\reference-platform\dstu3\FHIRTags.pas',
  FHIRLang in '..\reference-platform\support\FHIRLang.pas',
  AfsResourceVolumes in '..\reference-platform\Support\AfsResourceVolumes.pas',
  AfsVolumes in '..\reference-platform\Support\AfsVolumes.pas',
  AfsStreamManagers in '..\reference-platform\Support\AfsStreamManagers.pas',
  AdvObjectMatches in '..\reference-platform\Support\AdvObjectMatches.pas',
  FHIRParser in '..\reference-platform\support\FHIRParser.pas',
  FHIRParserXml in '..\reference-platform\dstu3\FHIRParserXml.pas',
  FHIRParserJson in '..\reference-platform\dstu3\FHIRParserJson.pas',
  FHIRParserTurtle in '..\reference-platform\dstu3\FHIRParserTurtle.pas',
  FHIRParserBase in '..\reference-platform\support\FHIRParserBase.pas',
  MsXmlParser in '..\reference-platform\Support\MsXmlParser.pas',
  XMLBuilder in '..\reference-platform\Support\XMLBuilder.pas',
  AdvWinInetClients in '..\reference-platform\Support\AdvWinInetClients.pas',
  MXmlBuilder in '..\reference-platform\support\MXmlBuilder.pas',
  AdvXmlBuilders in '..\reference-platform\Support\AdvXmlBuilders.pas',
  AdvXMLFormatters in '..\reference-platform\Support\AdvXMLFormatters.pas',
  AdvXMLEntities in '..\reference-platform\Support\AdvXMLEntities.pas',
  FHIRProfileUtilities in '..\reference-platform\dstu3\FHIRProfileUtilities.pas',
  AdvZipReaders in '..\reference-platform\Support\AdvZipReaders.pas',
  AdvZipDeclarations in '..\reference-platform\Support\AdvZipDeclarations.pas',
  AdvZipParts in '..\reference-platform\Support\AdvZipParts.pas',
  AdvZipUtilities in '..\reference-platform\Support\AdvZipUtilities.pas',
  AdvZipWorkers in '..\reference-platform\Support\AdvZipWorkers.pas',
  kCritSct in '..\reference-platform\Support\kCritSct.pas',
  FHIRPluginValidator in 'FHIRPluginValidator.pas',
  FHIRClient in '..\reference-platform\dstu3\FHIRClient.pas',
  NewResourceForm in 'NewResourceForm.pas' {ResourceNewForm},
  FHIRNarrativeGenerator in '..\reference-platform\dstu3\FHIRNarrativeGenerator.pas',
  NewServerForm in 'NewServerForm.pas' {RegisterServcdshoo
  erForm},
  ParseMap in '..\reference-platform\Support\ParseMap.pas',
  SmartOnFhirUtilities in '..\reference-platform\support\SmartOnFhirUtilities.pas',
  FetchResourceForm in 'FetchResourceForm.pas' {FetchResourceFrm},
  VirtualTrees in '..\..\Components\treeview\Source\VirtualTrees.pas',
  FHIRPath in '..\reference-platform\dstu3\FHIRPath.pas',
  FHIRPathDocumentation in 'FHIRPathDocumentation.pas' {FHIRPathDocumentationForm},
  MimeMessage in '..\reference-platform\Support\MimeMessage.pas',
  PathDialogForms in 'PathDialogForms.pas' {PathDialogForm},
  ValidationOutcomes in 'ValidationOutcomes.pas' {ValidationOutcomeForm},
  FHIRVisualiser in 'FHIRVisualiser.pas' {FHIRVisualizer},
  FHIRPathDebugger in '..\reference-platform\dstu3\FHIRPathDebugger.pas' {FHIRPathDebuggerForm},
  WelcomeScreen in 'WelcomeScreen.pas' {WelcomeScreenForm},
  nppbuildcount in 'nppbuildcount.pas',
  UpgradePrompt in 'UpgradePrompt.pas' {UpgradePromptForm},
  PluginUtilities in 'PluginUtilities.pas',
  CDSHooksUtilities in '..\reference-platform\support\CDSHooksUtilities.pas',
  MarkdownDaringFireball in '..\..\markdown\source\MarkdownDaringFireball.pas',
  MarkdownProcessor in '..\..\markdown\source\MarkdownProcessor.pas',
  ShellSupport in '..\reference-platform\Support\ShellSupport.pas',
  CDSBrowserForm in 'CDSBrowserForm.pas' {CDSBrowser},
  RDFUtilities in '..\reference-platform\support\RDFUtilities.pas',
  FHIRMetaModel in '..\reference-platform\dstu3\FHIRMetaModel.pas',
  FHIRXhtml in '..\reference-platform\support\FHIRXhtml.pas',
  InternetFetcher in '..\reference-platform\support\InternetFetcher.pas',
  FHIRContext in '..\reference-platform\dstu3\FHIRContext.pas',
  FHIRStructureMapUtilities in '..\reference-platform\dstu3\FHIRStructureMapUtilities.pas',
  DifferenceEngine in '..\reference-platform\support\DifferenceEngine.pas',
  ResDisplayForm in 'ResDisplayForm.pas' {ResourceDisplayForm},
  GraphQL in '..\reference-platform\support\GraphQL.pas',
  MXML in '..\reference-platform\support\MXML.pas',
  ParserSupport in '..\reference-platform\support\ParserSupport.pas',
  AdvZipWriters in '..\reference-platform\support\AdvZipWriters.pas',
  MarkdownCommonMark in '..\..\markdown\source\MarkdownCommonMark.pas',
  CodeGenerationForm in 'CodeGenerationForm.pas' {CodeGeneratorForm},
  FHIRCodeGenerator in '..\reference-platform\support\FHIRCodeGenerator.pas',
  TurtleParser in '..\reference-platform\support\TurtleParser.pas',
  SmartOnFhirLogin in '..\reference-platform\support\SmartOnFhirLogin.pas' {SmartOnFhirLoginForm},
  CDSHooksClientManager in '..\reference-platform\support\CDSHooksClientManager.pas';

{$R *.res}

{$Include 'npplib\NppPluginInclude.pas'}

begin
  FHIRExeModuleName := 'fhirnpp.dll';

  { First, assign the procedure to the DLLProc variable }
  DllProc := @DLLEntryPoint;
  { Now invoke the procedure to reflect that the DLL is attaching to the process }
  DLLEntryPoint(DLL_PROCESS_ATTACH);
end.
