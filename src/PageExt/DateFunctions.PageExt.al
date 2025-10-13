pageextension 51152 "AMM Date Functions" extends "AMM Functionalities"
{
    actions
    {
        addafter("Date Data Type"){
            action(Date){
                ApplicationArea = All;
                ToolTip = 'Runs the Date action';
                Image = Process;
                trigger OnAction()
                var
                    Date1: Date;
                begin
                    Date1 := 20251013D;
                    Message(Format(Date1));
                end;
            }
            action(Date2DMY){
                ApplicationArea = All;
                ToolTip = 'Runs the Date2DMY action';
                Image = Process;
                trigger OnAction()
                var
                    Date: Record Date;
                    OptionsLbl: Label 'Today,Day Number,Month Number,Year Number';
                    OptionsQst: Label 'Choose an action:';
                    Period: Integer;
                    MyDatePart: Integer;
                begin
                    Period := StrMenu(OptionsLbl,1,OptionsQst);
                    case Period of
                        // 13/10/2025 (Monday)
                        1:
                            if Date.Get(Date."Period Type"::Date, Today) then
                                Message('Today is %1', Format(Today));
                        2:
                            begin
                                MyDatePart := Date2DMY(Today(), 1);
                                Message('%1', MyDatePart);
                                // Displays : 13
                            end;
                        3:
                            begin
                                MyDatePart := Date2DMY(Today(), 2);
                                Message('%1', MyDatePart);
                                // Displays : 10
                            end;
                        4:
                            begin
                                MyDatePart := Date2DMY(Today(), 3);
                                Message('%1', MyDatePart);
                                // Displays : 2025
                            end;
                    end;
                end;
            }
            action(Date2DWY){
                ApplicationArea = All;
                ToolTip = 'Runs the Date2DWY action';
                Image = Process;
                trigger OnAction()
                var
                    Date: Record Date;
                    OptionsLbl: Label 'Today,Day Number of the Week,Week Number,Year Number';
                    OptionsQst: Label 'Choose an action:';
                    Period: Integer;
                    MyDatePart: Integer;
                begin
                    Period := StrMenu(OptionsLbl,1,OptionsQst);
                    case Period of
                        // 13/10/2025 (Monday)
                        1:
                            if Date.Get(Date."Period Type"::Date, Today) then
                                Message('Today is %1', Format(Today));
                        2:
                            begin
                                MyDatePart := Date2DWY(Today(), 1);
                                Message('%1', MyDatePart);
                                // Displays : 1
                            end;
                        3:
                            begin
                                MyDatePart := Date2DWY(Today(), 2);
                                Message('%1', MyDatePart);
                                // Displays : 42
                            end;
                        4:
                            begin
                                MyDatePart := Date2DWY(Today(), 3);
                                Message('%1', MyDatePart);
                                // Displays : 2025
                            end;
                    end;
                end;
            }
            action(CalcDate){
                ApplicationArea = All;
                ToolTip = 'Runs the CalcDate action';
                Image = Process;
                trigger OnAction()
                begin
                    // TODAY IS 13/10/2025
                    Message('%1', Today());
                    // Displays : 13/10/25

                    Message('%1', CalcDate('<1W>', Today()));
                    // Displays : 20/10/25
                end;
            }
        }
    }
}