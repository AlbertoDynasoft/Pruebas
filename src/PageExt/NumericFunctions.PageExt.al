pageextension 51153 "AMM Numeric Functions" extends "AMM Functionalities"
{   
    actions
    {
        addafter("Numeric Data Type"){
            action(Round){
                ApplicationArea = All;
                ToolTip = 'Runs the Round action';
                Image = Process;
                trigger OnAction()
                var
                    NewNumber: Decimal;
                begin
                    NewNumber := Round(1234.56789, 0.001, '>');
                    Message('%1', NewNumber);
                    // Displays : 1,234.568
                end;
            }
            action(Abs){
                ApplicationArea = All;
                ToolTip = 'Runs the Abs action';
                Image = Process;
                trigger OnAction()
                var
                    NewNumber: Decimal;
                begin
                    NewNumber := Abs(-10.235);
                    Message('\%1\', NewNumber);
                    // Displays : 10.235
                end;
            }
            action(Power){
                ApplicationArea = All;
                ToolTip = 'Runs the Power action';
                Image = Process;
                trigger OnAction()
                var
                    Number1: Decimal;
                    Power1: Decimal;
                    Result1: Decimal;
                    Text000Lbl: Label '%1 raised to the power of %2 = %3', Comment = '%1=Number1, %2=Power1, %3=Result1';
                begin
                    Number1 := 64;
                    Power1 := 0.5;
                    Result1 := Power(Number1, Power1);
                    Message(Text000Lbl, Number1, Power1, Result1);
                    // Displays : '64 raised to the power of 0.5 = 8'
                end;
            }
            action(Random){
                ApplicationArea = All;
                ToolTip = 'Runs the Random action';
                Image = Process;
                trigger OnAction()
                var
                    Number: Integer;
                    MaxNumber: Integer;
                begin
                    MaxNumber := 10;
                    Number := Random(MaxNumber);
                    Message('Random number: %1', Number);
                end;
            }
        }
    }
}