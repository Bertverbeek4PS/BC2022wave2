codeunit 50103 Onboarding
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', true, true)]
    local procedure InsertIntoAssistedSetupOnRegisterAssistedSetup()
    var
        GuidedExperience: Codeunit "Guided Experience";
        AssistedSetupGroup: Enum "Assisted Setup Group";
        VideoCategory: Enum "Video Category";
        SetupShortTitle: text[50];
        SetupTitle: text[50];
        SetupDescription: text[50];
        IsPrimarySetup: boolean;
    begin
        IsPrimarySetup := true;
        GuidedExperience.InsertAssistedSetup(SetupTitle, SetupShortTitle, SetupDescription, 5, ObjectType::Page, Page::"My App Setup Wizard", AssistedSetupGroup::ReadyForBusiness, '', VideoCategory::ReadyForBusiness, '', IsPrimarySetup);
    end;
}