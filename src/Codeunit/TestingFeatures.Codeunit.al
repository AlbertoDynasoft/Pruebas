codeunit 51160 "AMM Testing Features"
{
    trigger OnRun()
    var
        OptionsLbl: Label 'Super,Admin,Basic User';
        OptionsQst: Label 'Choose a user:';
        User: Integer;
    begin
        User := StrMenu(OptionsLbl,1,OptionsQst);
        Message('%1', User);
    end;
}