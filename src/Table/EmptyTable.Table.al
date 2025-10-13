table 51150 "AMM Empty Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; Integer)
        {
            DataClassification = ToBeClassified;
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