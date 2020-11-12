uses
  System.StartUpCopy,
  FMX.Forms,
  FHIR.Version.Client in '..\..\..\..\version\FHIR.Version.Client.pas',
  FHIR.Version.Context in '..\..\..\..\version\FHIR.Version.Context.pas',
   in '..\..\..\..\support\.pas',
  FHIR.Support.Osx in '..\..\..\..\support\FHIR.Support.Osx.pas',
   in '..\..\..\..\support\.pas',
  fsl_base in '..\..\..\..\support\fsl_base.pas',
  fsl_stream in '..\..\..\..\support\fsl_stream.pas',
  fsl_collections in '..\..\..\..\support\fsl_collections.pas',
  fsl_utilities in '..\..\..\..\support\fsl_utilities.pas',
  fsl_json in '..\..\..\..\support\fsl_json.pas',
  FHIR.Version.Parser in '..\..\..\..\version\FHIR.Version.Parser.pas',
  fhir4_xml in '..\..\..\..\r4\fhir4_xml.pas',
  fhir_parser in '..\..\..\..\base\fhir_parser.pas',
  fsl_xml in '..\..\..\..\support\fsl_xml.pas',
  fsl_turtle in '..\..\..\..\support\fsl_turtle.pas',
  fhir_objects in '..\..\..\..\base\fhir_objects.pas',
  fhir_common in '..\..\..\..\base\fhir_common.pas',
  fhir_utilities in '..\..\..\..\base\fhir_utilities.pas',
  fhir4_utilities in '..\..\..\..\r4\fhir4_utilities.pas',
  fsl_http in '..\..\..\..\support\fsl_http.pas',
  fsl_fetcher in '..\..\..\..\support\fsl_fetcher.pas',
  fhir4_context in '..\..\..\..\r4\fhir4_context.pas',
  fhir4_types in '..\..\..\..\r4\fhir4_types.pas',
  fhir4_resources in '..\..\..\..\r4\fhir4_resources.pas',
  fsl_scim in '..\..\..\..\base\fsl_scim.pas',
  fhir4_constants in '..\..\..\..\r4\fhir4_constants.pas',
  fhir4_tags in '..\..\..\..\r4\fhir4_tags.pas',
  FHIR.Base.Lang in '..\..\..\..\base\FHIR.Base.Lang.pas',
  fhir_xhtml in '..\..\..\..\base\fhir_xhtml.pas',
  fhir4_json in '..\..\..\..\r4\fhir4_json.pas',
  fhir4_turtle in '..\..\..\..\r4\fhir4_turtle.pas',
  fhir4_elementmodel in '..\..\..\..\r4\fhir4_elementmodel.pas',
  fhir4_profiles in '..\..\..\..\r4\fhir4_profiles.pas',
  fsl_threads in '..\..\..\..\support\fsl_threads.pas',
  fhir4_pathengine in '..\..\..\..\r4\fhir4_pathengine.pas',
  fhir_cdshooks in '..\..\..\..\support\fhir_cdshooks.pas',
  FastMM4Messages in '..\..\..\..\..\dependencies\FMM\FastMM4Messages.pas',
  fhir4_indexinfo in '..\..\..\..\r4\fhir4_indexinfo.pas',
  FHIR.Tools.Indexing in '..\..\..\..\tools\FHIR.Tools.Indexing.pas',
  FHIR.Tools.DiffEngine in '..\..\..\..\tools\FHIR.Tools.DiffEngine.pas',
  fhir_client_registry in '..\..\..\..\client\fhir_client_registry.pas',
  FHIR.Client.ServerDialogFMX in '..\..\..\..\client\FHIR.Client.ServerDialogFMX.pas' {EditRegisteredServerForm},
  fhir_htmlgen in '..\..\..\..\Support\fhir_htmlgen.pas',
  FHIR.Client.ClientDialogFMX in '..\..\..\..\client\FHIR.Client.ClientDialogFMX.pas' {RegisterClientForm},
  FHIR.Support.Signatures in '..\..\..\..\support\FHIR.Support.Signatures.pas',
  fhir_ucum in '..\..\..\..\support\fhir_ucum.pas',
  fhir4_pathnode in '..\..\..\..\r4\fhir4_pathnode.pas',
  fsl_logging in '..\..\..\..\support\fsl_logging.pas',
  fhir4_questionnaire2 in '..\..\..\..\r4\fhir4_questionnaire2.pas',
  fhir4_base in '..\..\..\..\r4\fhir4_base.pas',
  fhir4_parserBase in '..\..\..\..\r4\fhir4_parserBase.pas',
  fhir4_parser in '..\..\..\..\r4\fhir4_parser.pas',
  fhir_client in '..\..\..\..\client\fhir_client.pas',
  fhir_client_http in '..\..\..\..\client\fhir_client_http.pas',
  fhir_client_threaded in '..\..\..\..\client\fhir_client_threaded.pas',
  fhir4_client in '..\..\..\..\r4\fhir4_client.pas',
  fsl_xml in '..\..\..\..\support\fsl_xml.pas',
  fsl_wininet in '..\..\..\..\support\fsl_wininet.pas',
  FHIR.Support.Certs in '..\..\..\..\support\FHIR.Support.Certs.pas',
  fsl_graphql in '..\..\..\..\support\fsl_graphql.pas',
  fhir_factory in '..\..\..\..\base\fhir_factory.pas',
  fhir_validator in '..\..\..\..\base\fhir_validator.pas',
  fhir_narrative in '..\..\..\..\base\fhir_narrative.pas',
  fhir_pathengine in '..\..\..\..\base\fhir_pathengine.pas',
  fhir4_common in '..\..\..\..\r4\fhir4_common.pas',
  fhir4_factory in '..\..\..\..\r4\fhir4_factory.pas',
  fhir4_narrative in '..\..\..\..\r4\fhir4_narrative.pas',
  fhir4_validator in '..\..\..\..\r4\fhir4_validator.pas',
  fhir_client_async in '..\..\..\..\client\fhir_client_async.pas',
  fsl_npm_cache in '..\..\..\..
pm\fsl_npm_cache.pas',
  fsl_shell in '..\..\..\..\support\fsl_shell.pas',
  FHIR.Tools.ValidationWrapper in '..\..\..\..\tools\FHIR.Tools.ValidationWrapper.pas',
  Unit1 in 'Unit1.pas' {Form1},
  FHIR.FMX.Ctrls in '..\FHIR.FMX.Ctrls.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
