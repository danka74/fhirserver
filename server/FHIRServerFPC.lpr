program FHIRServerFPC;

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

uses
  {$IFDEF WINDOWS}
  FastMM4,
  FastMM4Messages,
  Windows,
  {$ENDIF}
  {$IFDEF LINUX}
  cthreads, cmem,
  {$ENDIF}
  Classes, SysUtils,
  Interfaces,
  IdGlobal,
  RegularExpressions,
  IOUtils,
  fhir_common,
  fhir_factory,
  
  fhir_narrative,
  fhir_objects,
  fhir_parser,
  fhir_pathengine,
  fsl_scim,
  fhir_utilities,
  fhir_validator,
  fhir_xhtml,
  FHIR.CdsHooks.Server,
  FHIR.CdsHooks.Service,
  fhir_cdshooks,
  fhir_client,
  fhir_client_http,
  fhir_client_threaded,
  FHIR.Database.Dialects,
  FHIR.Database.Logging,
  FHIR.Database.Manager,
  FHIR.Database.ODBC,
  FHIR.Database.ODBC.Headers,
  FHIR.Database.ODBC.Objects,
  fpcodbc,
  FHIR.Database.SQLite,
  FHIR.Database.SQLite3.Objects,
  FHIR.Database.SQLite3.Utilities,
  FHIR.Database.SQLite3.Wrapper,
  FHIR.Loinc.Importer,
  FHIR.Loinc.Publisher,
  FHIR.Loinc.Services,
  fsl_npm_cache,
  fsl_npm,
  fsl_npm_client,
  fsl_npm_spider,
  fsl_npm_tests,
  fsl_twilio,
  fhir2_client,
  fhir2_common,
  fhir2_constants,
  fhir2_context,
  fhir2_elementmodel,
  fhir2_factory,
  fhir2_json,
  fhir2_narrative,
  fhir2_opbase,
  fhir2_operations,
  fhir2_parser,
  fhir2_parserBase,
  fhir2_pathengine,
  fhir2_pathnode,
  fhir2_profiles,
  fhir2_resources,
  fhir2_resources_base,
  fhir2_resources_admin,
  fhir2_resources_canonical,
  fhir2_resources_clinical,
  fhir2_resources_other,
  fhir2_types,
  fhir2_utilities,
  fhir2_validator,
  fhir2_xml,
  fhir3_base,
  fhir3_client,
  fhir3_common,
  fhir3_constants,
  fhir3_context,
  fhir3_elementmodel,
  fhir3_factory,
  fhir3_json,
  fhir3_narrative,
  fhir3_opbase,
  fhir3_operations,
  fhir3_parser,
  fhir3_parserBase,
  fhir3_pathengine,
  fhir3_pathnode,
  fhir3_profiles,
  fhir3_resources,
  fhir3_resources_base,
  fhir3_resources_admin,
  fhir3_resources_canonical,
  fhir3_resources_clinical,
  fhir3_resources_other,
  fhir3_turtle,
  fhir3_types,
  fhir3_utilities,
  fhir3_validator,
  fhir3_xml,
  fhir4_authmap,
  fhir4_base,
  fhir4_client,
  fhir4_common,
  fhir4_constants,
  fhir4_context,
  fhir4_elementmodel,
  fhir4_factory,
  fhir4_indexinfo,
  fhir4_json,
  fhir4_maputils,
  fhir4_narrative,
  fhir4_narrative2,
  fhir4_opbase,
  fhir4_operations,
  fhir4_parser,
  fhir4_parserBase,
  fhir4_pathengine,
  fhir4_pathnode,
  fhir4_profiles,
  fhir4_questionnaire,
  fhir4_resources,
  fhir4_resources_base,
  fhir4_resources_admin,
  fhir4_resources_canonical,
  fhir4_resources_clinical,
  fhir4_resources_financial,
  fhir4_resources_medications,
  fhir4_resources_other,
  fhir4_turtle,
  fhir4_types,
  fhir4_utilities,
  fhir4_validator,
  fhir4_xml,
  FHIR.Scim.Search,
  FHIR.Scim.Server,
  FHIR.Server.AccessControl,
  FHIR.Server.AuthMgr,
  FHIR.Server.ClosureMgr,
  FHIR.Server.Constants,
  FHIR.Server.DBInstaller,
  FHIR.Server.Database,
  FHIR.Server.GraphDefinition,
  FHIR.Server.Jwt,
  FHIR.Server.Kernel,
  FHIR.Server.MpiSearch,
  FHIR.Server.ObsStats,
  FHIR.Server.ReverseClient,
  FHIR.Server.Search,
  FHIR.Server.SearchSyntax,
  FHIR.Server.Security,
  FHIR.Server.Session,
  FHIR.Server.Storage,
  FHIR.Server.Subscriptions,
  FHIR.Server.UserMgr,
  FHIR.Server.Utilities,
  FHIR.Server.Web,
  FHIR.Server.WebSource,
  FHIR.Server.XhtmlComp,
  fhir_oauth,
  FHIR.Snomed.Analysis,
  FHIR.Snomed.Expressions,
  FHIR.Snomed.Importer,
  FHIR.Snomed.Publisher,
  FHIR.Snomed.Services,
  fsl_base,
  fsl_crypto,
  fsl_collections,
  fsl_fpc,
  fsl_json,
  fsl_logging,
  fsl_xml,
  {$IFDEF MSWINDOWS}
  fsl_msxml,
  fsl_service_win,
  fsl_shell,
  {$ELSE}
  fsl_service,
  {$ENDIF}
  fsl_openssl,
  fsl_stream,
  fsl_threads,
  fsl_turtle,
  fsl_utilities,
  FHIR.Tools.CodeGen,
  FHIR.Tools.DiffEngine,
  FHIR.Tools.GraphQL,
  FHIR.Tools.Indexing,
  FHIR.Tools.Search,
  FHIR.Tx.ACIR,
  FHIR.Tx.CountryCode,
  FHIR.Tx.Iso4217,
  FHIR.Tx.Lang,
  FHIR.Tx.Manager,
  FHIR.Tx.MimeTypes,
  FHIR.Tx.Operations,
  FHIR.Tx.RxNorm,
  FHIR.Tx.Server,
  FHIR.Tx.Service,
  FHIR.Tx.Unii,
  FHIR.Tx.Uri,
  FHIR.Tx.UsState,
  FHIR.Tx.Web,
  FHIR.Ucum.Base,
  FHIR.Ucum.Expressions,
  FHIR.Ucum.Handlers,
  fhir_ucum,
  FHIR.Ucum.Search,
  FHIR.Ucum.Services,
  FHIR.Ucum.Validators,
  fsl_scrypt,
  fsl_oauth,
  fsl_fetcher,
  fsl_graphql,
  fhir_htmlgen,
  fsl_http,
  fsl_rdf,
  fsl_websocket,
  fsl_wininet,
  FHIR.XVersion.ConvBase,
  FHIR.Server.Tags,
  FHIR.Tools.CodeSystemProvider,
  FHIR.Tools.ValueSets,
  FHIR.Server.Context,
  FHIR.Server.Indexing,
  fhir2_indexinfo,
  fhir3_indexinfo,
  fhir2_authmap,
  fhir3_authmap,
  fhir4_graphdefinition,
  fhir_graphdefinition,
  FHIR.Server.BundleBuilder,
  FHIR.Server.IndexingR4,
  FHIR.Server.IndexingR3,
  FHIR.Server.IndexingR2,
  FHIR.Server.OperationsR2,
  FHIR.Server.OperationsR3,
  FHIR.Server.OperationsR4,
  FHIR.Server.SubscriptionsR2,
  FHIR.Server.SubscriptionsR3,
  FHIR.Server.SubscriptionsR4,
  fhir2_questionnaire,
  fhir2_narrative2,
  fhir3_questionnaire,
  fhir3_narrative2,
  FHIR.XVersion.Convertors,
  FHIR.XVersion.Conv_30_40,
  FHIR.Tools.NDJsonParser,
  FHIR.Server.Factory,
  FHIR.Server.ValidatorR4,
  FHIR.Server.ValidatorR2,
  FHIR.Server.ValidatorR3,
  FHIR.Server.SessionMgr,
  FHIR.Snomed.Combiner,
  FHIR.Support.Lang,
  FHIR.Server.v2Server,
  v2_protocol,
  v2_objects,
  v2_message,
  cda_narrative,
  cda_base,
  cda_objects,
  cda_types,
  fhir_oids,
  fhir_elementmodel,
  FHIR.Server.ConsentEngine,
  FHIR.Tx.NDC,
  FHIR.Server.IndexingR5,
  FHIR.Server.OperationsR5,
  FHIR.Server.SubscriptionsR5,
  FHIR.Server.ValidatorR5,
  fhir5_base,
  fhir5_constants,
  fhir5_enums,
  fhir5_factory,
  fhir5_indexinfo,
  fhir5_json,
  fhir5_pathengine,
  fhir5_pathnode,
  fhir5_profiles,
  fhir5_resources,
  fhir5_resources_base,
  fhir5_resources_admin,
  fhir5_resources_canonical,
  fhir5_resources_clinical,
  fhir5_resources_financial,
  fhir5_resources_medications,
  fhir5_resources_other,
  fhir5_tags,
  fhir5_turtle,
  fhir5_types,
  fhir5_utilities,
  fhir5_validator,
  fhir5_xml,
  fhir5_context,
  fhir5_parserBase,
  fhir5_parser,
  fhir5_elementmodel,
  fhir5_common,
  fhir5_opbase,
  fhir5_operations,
  fhir5_authmap,
  fhir5_client,
  fhir5_narrative,
  fhir5_questionnaire,
  fhir5_narrative2,
  fhir5_graphdefinition,
  fhir5_maputils,
  FHIR.Server.Packages,
  FHIR.Server.Covid,
  fhir4_liquid,
  FHIR.Server.Twilio,
  FHIR.Server.WebBase,
  FHIR.Server.TestRegistry,
  FHIR.Server.Kernel.Testing,
  FHIR.Server.ClientCacheManager,
  fsl_tests,
  fsl_testing,
  fsl_tests_console,
  fsl_comparisons,
  FHIR.Tx.IETFLang.Tests,
  FHIR.Tests.IdUriParser,
  FHIR.Ucum.Tests,
  FHIR.Snomed.Tests,
  v2_tests,
  fsl_tests_web,
  v2_base,
  v2_dictionary,
  v2_dictionary_Database,
  FHIR.Database.Tests,
  FHIR.Tx.HGVS,
  cda_documents,
  cda_writer,
  cda_parser,
  {$IFNDEF NO_JS}
  Compat,
  ChakraCore,
  ChakraCommon,
  ChakraDebug,
  ChakraCoreUtils,
  ChakraCoreClasses,
  fhir_javascript,
  fsl_javascript,
  fhir_tests_javascript,
  fhir_js_client,
  fhir2_javascript,
  fhir3_javascript,
  fhir4_javascript,
  fhir5_javascript,
  v2_javascript,
  FHIR.Server.EventJs,
  FHIR.Server.Javascript,
  {$ENDIF}
  cda_tests,
  fhir4_tests_Parser,
  fhir4_tests_Utilities,
  fhir4_tests_Client,
  fhir4_tests_Context,
  fhir4_tests_Liquid,
  fhir4_tests_PathEngine,
  fhir4_tests_worker,
  fsl_tests_scrypt;

{$R *.res}

begin
  isMultiThread := true;
  ExecuteFhirServer;
end.

