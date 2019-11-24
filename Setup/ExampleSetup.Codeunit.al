codeunit 50000 "Example Setup"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Company-Initialize", 'OnCompanyInitialize', '', false, false)]
    local procedure CreateExampleSetup()
    var
        ExampleSetup: Record "Example Setup";
    begin
        with ExampleSetup do
            InitSetupRecord;
    end;

    procedure GetExampleEnabled() IsEnabled: Boolean
    var
        ExampleSetup: Record "Example Setup";
    begin
        with ExampleSetup do begin
            Get;
            exit("Example Enabled");
        end;
    end;

}