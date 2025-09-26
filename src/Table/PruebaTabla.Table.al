table 51149 "AMM Prueba Tabla"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; MayorDeEdad; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(4; MyEnum; Enum "AMM Colors")
        {
            DataClassification = ToBeClassified;
        }
        field(5; MyOption; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Campo1,Campo2;
        }
    }
    
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}