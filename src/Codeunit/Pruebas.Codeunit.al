codeunit 51154 "AMM Pruebas"
{
    trigger OnRun()
    var
        MyAction: Action;
        MyVariant: Variant;
        varResult: Boolean;
        Text000Qst: Label 'Does the variant contain an Action variable? %1.', Comment = '%1=varResult';
        Text001Qst: Label 'Does the variant contain a Code variable? %1.', Comment = '%1=varResult';
    begin
        MyVariant := MyAction;
        varResult := MyVariant.IsAction;
        Message(Text000Qst, varResult);
        varResult := MyVariant.IsCode;
        MyVariant := MyAction;
        varResult := MyVariant.IsAction;
        Message(Text001Qst, varResult);
    end;
}