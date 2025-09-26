enum 51151 "AMM SomeEnum" implements "AMM IFoo"
{
    Extensible = true;
    UnknownValueImplementation = "AMM IFoo" = "AMM ErrorFooImpl";
    DefaultImplementation = "AMM IFoo" = "AMM DefaultFooImpl";

    value(0; Yes)
    {
        Implementation = "AMM IFoo" = "AMM YesFooImpl";
    }
    value(1; No)
    {
        // Nothing specified. Using defaults
    }
}