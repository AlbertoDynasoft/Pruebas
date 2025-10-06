codeunit 51157 "AMM Circle" implements "AMM IShape"
{
    procedure GetArea(): Decimal
    var
        Radius: Decimal;
    begin
        Radius := 5; // Example radius
        exit(3.14 * Radius * Radius); // Area of a circle: πr²
    end;
}