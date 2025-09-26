codeunit 51150 "AMM PrivateAddressProvider" implements "AMM IAddressProvider"
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address \ Denmark 2800')
    end;
}