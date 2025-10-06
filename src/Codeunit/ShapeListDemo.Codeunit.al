codeunit 51159 ShapeListDemo
{
    trigger OnRun()
    var
        CircleShape: Codeunit "AMM Circle";
        SquareShape: Codeunit "AMM Square";
        ShapeList: List of [Interface "AMM IShape"];
        Shape: Interface "AMM IShape";
    begin
        // Add instances of Circle and Square to the list
        ShapeList.Add(CircleShape);
        ShapeList.Add(SquareShape);

        // Iterate through the list and display the area of each shape

        foreach Shape in ShapeList do
            Message('The area of the shape is: %1', Shape.GetArea());
    end;
}