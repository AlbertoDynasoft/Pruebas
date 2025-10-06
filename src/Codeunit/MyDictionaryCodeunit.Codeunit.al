codeunit 51156 "AMM MyDictionaryCodeunit"
{
    procedure MyProcedure(): Dictionary of [Integer, Interface "Barcode Font Provider"]
    var
        localDict: Dictionary of [Integer, Interface "Barcode Font Provider"];
        IProvider: Interface "Barcode Font Provider";
    begin
        localDict.Add(2, IProvider);
        exit(localDict);
    end;
}