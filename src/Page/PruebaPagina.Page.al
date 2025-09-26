page 51149 "AMM Prueba Pagina"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Prueba Tabla";
    
    layout
    {
        area(Content)
        {
            repeater("Datos Prueba Tabla")
            {
                field(ID;Rec.ID)
                {
                    ToolTip = 'ID de prueba';
                }
                field(Nombre;Rec.Nombre)
                {
                    ToolTip = 'Nombre de prueba';
                }
                field(MayorDeEdad;Rec.MayorDeEdad)
                {
                    ToolTip = 'MayorDeEdad de prueba';
                }
                field(MyEnum;Rec.MyEnum)
                {
                    ToolTip = 'MyEnum de prueba';
                }
                field(MyOption;Rec.MyOption)
                {
                    ToolTip = 'MyOption de prueba';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        PruebaTabla: Record "AMM Prueba Tabla";
    begin
        if PruebaTabla.FindLast() then begin
            Rec.ID := PruebaTabla.ID + 1;
            Rec.Nombre := 'Alberto';
            Rec.MayorDeEdad := false or true;
            Rec.MyEnum := "AMM Colors"::Campo1 + 1;
            Rec.MyOption := "AMM Colors"::Campo1.AsInteger() + 1;
            Rec.Insert();
        end;
    end;
}