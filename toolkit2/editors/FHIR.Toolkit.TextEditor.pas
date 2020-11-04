unit FHIR.Toolkit.TextEditor;

{$i fhir.inc}

interface

uses
  Classes, SysUtils,
  Controls, ComCtrls, Menus, SynEdit, SynEditHighlighter,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Stream, FHIR.Support.Logging,
  FHIR.Toolkit.Context, FHIR.Toolkit.BaseEditor;

type

  { TTextEditor }

  TTextEditor = class (TBaseEditor)
  protected
    procedure getNavigationList(navpoints : TStringList); override;
  public
    procedure newContent(); override;
    function FileExtension : String; override;
    procedure validate(validate : boolean; inspect : boolean; cursor : TSourceLocation; inspection : TStringList); override;
  end;


implementation


procedure TTextEditor.getNavigationList(navpoints: TStringList);
begin
end;

procedure TTextEditor.newContent();
begin
  Session.HasBOM := false;
  Session.EndOfLines := slCRLF;
  Session.Encoding := senASCII;

  TextEditor.Text := 'A text file'+#13#10;
  updateToolbarButtons;
end;

function TTextEditor.FileExtension: String;
begin
  result := 'txt';
end;

procedure TTextEditor.validate(validate : boolean; inspect : boolean; cursor : TSourceLocation; inspection : TStringList);
var
  i : integer;
  s : String;
  t : QWord;
begin
  if validate then
  begin
    updateToContent;
    t := StartValidating;
    try
      for i := 0 to TextEditor.lines.count - 1 do
      begin
        s := TextEditor.lines[i];
        checkForEncoding(s, i);
      end;
    finally
      finishValidating(validate, t);
    end;
  end;
end;

end.

