codeunit 51158 "AMM Square" implements "AMM IShape"
{
    procedure GetArea(): Decimal
    var
        SideLength: Decimal;
    begin
        SideLength := 4; // Example side length
        exit(SideLength * SideLength); // Area of a square: side²
    end;
}