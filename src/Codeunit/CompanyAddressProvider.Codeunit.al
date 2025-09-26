codeunit 51149 "AMM CompanyAddressProvider" implements "AMM IAddressProvider"
{
    procedure GetAddress(): Text;
    begin
        exit('Company address \ Denmark 2800')
    end;
}