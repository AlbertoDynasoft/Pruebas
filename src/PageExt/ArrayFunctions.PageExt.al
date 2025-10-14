pageextension 51154 "AMM Array Functions" extends "AMM Functionalities"
{
    actions
    {
        addafter("Array Data Type"){
            action(ArrayLen){
                ApplicationArea = All;
                ToolTip = 'Runs the ArrayLen action';
                Image = Process;
                trigger OnAction()
                var
                    Length: Integer;
                    SaleAmount: array[10] of Integer;
                begin
                    Length := ArrayLen(SaleAmount);
                    Message('%1', Length);
                    // Displays : 10

                    SaleAmount[1] := 1;
                    SaleAmount[2] := 2;
                    SaleAmount[3] := 3;
                    SaleAmount[1] := 10;

                    Length := ArrayLen(SaleAmount);
                    Message('%1', Length);
                    // Displays : 10
                end;
            }
            action(CompressArray){
                ApplicationArea = All;
                ToolTip = 'Runs the CompressArray action';
                Image = Process;
                trigger OnAction()
                var
                    MyArray: array[4] of Text[20];
                    index: Integer;
                    values: Text;
                begin
                    MyArray[1] := 'Paris';
                    MyArray[2] := 'Rome';
                    MyArray[3] := '';
                    MyArray[4] := 'New York City';

                    Clear(index);
                    Clear(values);
                    repeat
                        index := index + 1;
                        values := values + ',' + Format(MyArray[index]);
                    until index >= ArrayLen(MyArray);
                    Message(values);

                    CompressArray(MyArray);

                    Clear(index);
                    Clear(values);
                    repeat
                        index := index + 1;
                        values := values + ',' + Format(MyArray[index]);
                    until index >= ArrayLen(MyArray);
                    Message(values);

                    /* Results:
                    MyArray[1] = 'Paris';
                    MyArray[2] = 'Rome';
                    MyArray[3] = 'New York City';
                    MyArray[4] = '';
                    */
                end;
            }
            action(CopyArray){
                ApplicationArea = All;
                ToolTip = 'Runs the CopyArray action';
                Image = Process;
                trigger OnAction()
                var
                    MyArray1: array[10] of Integer;
                    MyArray2: array[5] of Integer;
                    index: Integer;
                    values: Text;
                begin
                    MyArray1[1] := 1;
                    MyArray1[2] := 2;
                    MyArray1[3] := 3;
                    MyArray1[4] := 4;
                    MyArray1[5] := 5;
                    MyArray1[6] := 6;
                    MyArray1[7] := 7;
                    MyArray1[8] := 8;
                    MyArray1[9] := 9;
                    MyArray1[10] := 10;

                    Clear(index);
                    Clear(values);
                    repeat
                        index := index + 1;
                        values := values + ',' + Format(MyArray1[index]);
                    until index >= ArrayLen(MyArray1);
                    Message(values);

                    CopyArray(MyArray2, MyArray1, 6, 5);

                    Clear(index);
                    Clear(values);
                    repeat
                        index := index + 1;
                        values := values + ',' + Format(MyArray2[index]);
                    until index >= ArrayLen(MyArray2);
                    Message(values);
                    /* Results:
                    MyArray2[1] = 6;
                    MyArray2[2] = 7;
                    MyArray2[3] = 8;
                    MyArray2[4] = 9;
                    MyArray2[5] = 10;
                    */
                end;
            }
        }
    }
}