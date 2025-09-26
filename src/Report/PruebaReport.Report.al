report 51149 "AMM Prueba Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    ProcessingOnly = false;
    
    dataset
    {
        dataitem("Bank Acc. Reconciliation";"Bank Acc. Reconciliation")
        {
            column(Bank_Account_Name;"Bank Account Name")
            {
                
            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    
                }
            }
        }
    }
    
    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    }
}