page 51151 "AMM Functionalities"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Empty Table";
    
    layout
    {
        area(Content)
        {
            group(Data)
            {
                field(ID;Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field';
                }
            }
        }
    }
    actions{
        area(Navigation){
            group("Text Functions"){
                action("Text Data Type"){
                    ApplicationArea = All;
                    ToolTip = 'Runs the "Text Data Type" action';
                    Image = Change;
                    trigger OnAction()
                    begin
                        ;
                    end;
                }
            }
            group("Date Functions"){
                action("Date Data Type"){
                    ApplicationArea = All;
                    ToolTip = 'Runs the "Date Data Type" action';
                    Image = Change;
                    trigger OnAction()
                    begin
                        ;
                    end;
                }
            }
            group("Numeric Functions"){
                action("Numeric Data Type"){
                    ApplicationArea = All;
                    ToolTip = 'Runs the "Numeric Data Type" action';
                    Image = Change;
                    trigger OnAction()
                    begin
                        ;
                    end;
                }
            }
            group("Array Functions"){
                action("Array Data Type"){
                    ApplicationArea = All;
                    ToolTip = 'Runs the "Array Data Type" action';
                    Image = Change;
                    trigger OnAction()
                    begin
                        ;
                    end;
                }
            }
        }
    }
}