pageextension 51149 "AMM CustListExt" extends "Customer List"
{

    trigger OnOpenPage()
    var
        ifoo: Interface "AMM IFoo";
        e: enum "AMM SomeEnum";
    begin
        e := "AMM SomeEnum"::Yes;
        ifoo := e;
        ifoo.Foo(); // => YesFooImpl specified in Implementation on Yes value

        e := "AMM SomeEnum"::No;
        ifoo := e;
        ifoo.Foo(); // => DefaultFooImpl specified in DefaultImplementation

        e := 2; // No enum value matches this.
        ifoo := e;
        ifoo.Foo(); // => UnknownFooImpl specified in UnknownImplementation
    end;
}