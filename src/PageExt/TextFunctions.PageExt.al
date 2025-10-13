pageextension 51151 "AMM Text Functions" extends "AMM Functionalities"
{
    actions{
        addafter("Text Data Type"){
            action(ConvertStr){
                ApplicationArea = All;
                ToolTip = 'Runs the ConvertStr function';
                Image = Process;
                trigger OnAction()
                var
                    OriginalString: Text[30];
                    FromChars: Text[30];
                    ToChars: Text[30];
                    NewString: Text[30];
                    Text000Lbl: Label 'Do you want to leave without saving?';
                    Text001Lbl: Label 'lws';
                    Text002Lbl: Label 'LWS';
                    Text003Lbl: Label 'The original sentence is\\: %1', Comment = '%1=OriginalString';
                    Text004Lbl: Label 'The sentence is converted to:\\ %1', Comment = '%1=NewString';
                begin
                    OriginalString := CopyStr(Text000Lbl, 1, MaxStrLen(OriginalString));
                    FromChars := Text001Lbl;
                    ToChars := Text002Lbl;
                    NewString := ConvertStr(OriginalString, FromChars, ToChars);
                    Message(Text003Lbl, OriginalString);
                    Message(Text004Lbl, NewString);
                end;
            }
            action(CopyStr){
                ApplicationArea = All;
                ToolTip = 'Runs the CopyStr function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text[10];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    newString := CopyStr(MyLongString, 5, 10);
                    Message('%1', newString);  // Results in 'oWorldOfMa'
                end;
            }
            action(DelChr){
                ApplicationArea = All;
                ToolTip = 'Runs the DelChr function';
                Image = Process;
                trigger OnAction()
                var
                    String: Text;
                    Where: Text;
                    Which: Text;
                    NewString: Text;
                    Text000Txt: TextConst ENU='Windy West Solutions';
                    Text001Txt: TextConst ENU='>%1< is transformed to >%2<';
                begin
                    String := Text000Txt;
                    Where := '<>';
                    Which := 'Ws';
                    NewString := DelChr(String, Where, Which);
                    Message(Text001Txt, String, NewString); // Results in >Windy West Solutions< is transformed to >indy West Solution<

                    String := Text000Txt;
                    Where := '=';
                    Which := 'sx';
                    NewString := DelChr(String, Where, Which);
                    Message(Text001Txt, String, NewString); // Results in >Windy West Solutions< is transformed to >Windy Wet Solution<

                    String := Text000Txt + ' Tely';
                    Where := '>';
                    Which := 'Tely';
                    NewString := DelChr(String, Where, Which);
                    Message(Text001Txt, String, NewString); // Results in >Windy West Solutions Tely< is transformed to >Windy West Solutions<

                    String := 'This ' + Text000Txt;
                    Where := '<';
                    Which := 'This';
                    NewString := DelChr(String, Where, Which);
                    Message(Text001Txt, String, NewString); // Results in >This Windy West Solutions< is transformed to >Windy West Solutions<

                    String := Text000Txt;
                    Where := '<';
                    NewString := DelChr(String, Where);
                    Message(Text001Txt, String, NewString); // Results in >Windy West Solutions< is transformed to >Windy West Solutions<

                    String := Text000Txt;
                    NewString := DelChr(String);
                    Message(Text001Txt, String, NewString); // Results in >Windy West Solutions< is transformed to >WindyWestSolutions<
                end;
            }
            action(DelStr){
                ApplicationArea = All;
                ToolTip = 'Runs the DelStr function';
                Image = Process;
                trigger OnAction()
                var
                    Str: Text[40];
                    NewStr: Text[40];
                    Position: Integer;
                    Length: Integer;
                    Text000Txt: TextConst ENU='Adjusting prices - Please wait.';
                    Text001Txt: TextConst ENU='The original string:>%1<';
                    Text002Txt: TextConst ENU='The original modified:>%2<';
                begin
                    Str := CopyStr(Text000Txt, 1, MaxStrLen(Str));
                    Position := 11; // Remove the word 'prices' and a blank.
                    Length := 7;
                    NewStr := DelStr(Str, Position, Length);
                    Message(Text001Txt, Str);
                    Message(Text002Txt, NewStr);
                end;
            }
            action(IncStr){
                ApplicationArea = All;
                ToolTip = 'Runs the IncStr function';
                Image = Process;
                trigger OnAction()
                var
                    text000: Text;
                    text001: Text;
                    text002: Text;
                begin
                    text000 := 'Account no. 99 does not balance.';
                    text001 := 'Account no. 2342 shows a total of $-452.';

                    Message(IncStr(text000));
                    // Results in: 'Account no. 100 does not balance.'

                    Message(IncStr(text001));
                    // Results in: 'Account no. 2342 shows a total of $-453.'

                    text002 := 'Number 999';

                    Message(IncStr(text002,1000));
                    // Results in: 'Number 1999'
                end;
            }
            action(InsStr){
                ApplicationArea = All;
                ToolTip = 'Runs the InsStr function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text;
                begin
                    MyLongString := 'Press ENTER to continue.';
                    newString := InsStr(MyLongString, 'or ESC ', 13);
                    Message('%1', newString);  // Results in 'Press ENTER or ESC to continue.'
                end;
            }
            action(LowerCase){
                ApplicationArea = All;
                ToolTip = 'Runs the LowerCase function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('LOWERCASE: %1', LowerCase(MyLongString));
                    // Results in 'helloworldofmanymanycharacters'
                end;
            }
            action(MaxStrLen){
                ApplicationArea = All;
                ToolTip = 'Runs the MaxStrLen function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text[10];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('MAXSTRLEN: %1', MaxStrLen(MyLongString)); // Results in 50
                    newString := CopyStr(MyLongString, 5, MaxStrLen(newString));
                    Message('%1', newString);  // Results in 'oWorldOfMa'
                end;
            }
            action(PadStr){
                ApplicationArea = All;
                ToolTip = 'Runs the PadStr function';
                Image = Process;
                trigger OnAction()
                var
                    Str1: Text[30];
                    Str2: Text[30];
                    Len1: Integer;
                    Len2: Integer;
                    Text000Lbl: Label '13 characters';
                    Text001Lbl: Label 'Four';
                    Text002Lbl: Label 'Before PadStr is called:\\';
                    Text003Lbl: Label '>%1< has the length %2\\', Comment = '%1=Str1, %2=Len1';
                    Text004Lbl: Label '>%3< has the length %4\\', Comment = '%1=Str2, %2=Len2';
                    Text005Lbl: Label 'After PadStr is called:\\';
                begin
                    Str1 := Text000Lbl;
                    Str2 := Text001Lbl;
                    Len1 := StrLen(Str1);
                    Len2 := StrLen(Str2);
                    Message(Text002Lbl + Text003Lbl + Text004Lbl, Str1, Len1, Str2, Len2);
                    Str1 := PadStr(Str1, 5); // Truncate the length to 5
                    Str2 := PadStr(Str2, 15, 'w'); // Concatenate w until length = 15
                    Len1 := StrLen(Str1);
                    Len2 := StrLen(Str2);
                    Message(Text005Lbl + Text003Lbl + Text004Lbl, Str1, Len1, Str2, Len2);
                end;
            }
            action(SelectStr){
                ApplicationArea = All;
                ToolTip = 'Runs the SelectStr function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text;
                begin
                    MyLongString := 'This,is a comma,separated,string';
                    newString := SelectStr(2, MyLongString);
                    Message('%1', newString);  // Results in 'is a comma'
                end;
            }
            action(StrCheckSum){
                ApplicationArea = All;
                ToolTip = 'Runs the StrCheckSum function';
                Image = Process;
                trigger OnAction()
                var
                    StrNumber: Text[30];
                    Weight: Text[30];
                    Modulus: Integer;
                    Text000Lbl: Label 'The number: %1\\', Comment = '%1=StrNumber';
                    Text001Lbl: Label 'has the checksum: %2', Comment = '%1=CheckSum';
                    Text002Lbl: Label 'The EAN code: %1\\', Comment = '%1=StrNumber';
                    CheckSum: Integer;
                begin
                    StrNumber := '4378';
                    Weight := '1234';
                    Modulus := 7;
                    CheckSum := StrCheckSum(StrNumber, Weight, Modulus);
                    Message(Text000Lbl + Text001Lbl, StrNumber, CheckSum);

                    StrNumber := '577622135746';
                    Weight := '131313131313';
                    CheckSum := StrCheckSum(StrNumber, Weight);
                    Message(Text002Lbl + Text001Lbl, StrNumber, CheckSum);
                end;
            }
            action(StrLen){
                ApplicationArea = All;
                ToolTip = 'Runs the StrLen function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('STRLEN: %1', StrLen(MyLongString)); // Results in 30
                end;
            }
            action(StrPos){
                ApplicationArea = All;
                ToolTip = 'Runs the StrPos function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', StrPos(MyLongString, 'l'));  // Results in 3
                end;
            }
            action(StrSubstNo){
                ApplicationArea = All;
                ToolTip = 'Runs the StrSubstNo function';
                Image = Process;
                trigger OnAction()
                var
                    Str: Text[1024];
                    AccountNo: Integer;
                    Balance: Decimal;
                    Text000Lbl: Label 'The balance of account %1 is $ %2', Comment = '%1=AccountNo, %2=Balance';
                    Text001Lbl: Label 'The test string before StrSubstNo is called:\\%1', Comment = '%1=Str';
                    Text002Lbl: Label 'The string after StrSubstNo is called:\\%1', Comment = '%1=Str';
                begin
                    Str := Text000Lbl;
                    AccountNo := 3452;
                    Balance := 2345 + 5462;
                    Message(Text001Lbl, Str);
                    Str := StrSubstNo(Str, AccountNo, Balance);
                    Message(Text002Lbl, Str);
                end;
            }
            action(UpperCase){
                ApplicationArea = All;
                ToolTip = 'Runs the UpperCase function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('UPPERCASE: %1', UpperCase(MyLongString));
                    // Results in 'HELLOWORLDOFMANYMANYCHARACTERS'
                end;
            }
            action(Contains){
                ApplicationArea = All;
                ToolTip = 'Runs the Contains function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('Contains ''a'': %1', MyLongString.Contains('a'));
                    // Results in true
                    Message('Contains ''j'': %1', MyLongString.Contains('j'));
                    // Results in false
                end;
            }
            action(EndsWith){
                ApplicationArea = All;
                ToolTip = 'Runs the EndsWith function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('EndsWith ''ers'': %1', MyLongString.EndsWith('ers'));
                    // Results in true
                    Message('EndsWith ''sre'': %1', MyLongString.EndsWith('sre'));
                    // Results in false
                end;
            }
            action(IndexOf){
                ApplicationArea = All;
                ToolTip = 'Runs the IndexOf function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', MyLongString.IndexOf('l'));  // Results in 3
                end;
            }
            action(IndexOfAny){
                ApplicationArea = All;
                ToolTip = 'Runs the IndexOfAny function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    ListOfChar: List of [char];
                    Characters: Text;
                    ListOfChar2: List of [char];
                    i: Integer;
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    ListOfChar.Add('a');
                    ListOfChar.Add('e');
                    Message('%1', ListOfChar);
                    Message('%1', MyLongString.IndexOfAny(ListOfChar));

                    Characters := 'abcdefgh';
                    for i := 0 to 8 do
                        ListOfChar2.Add(Characters[i]);

                    Message('%1', ListOfChar2);
                    Message('%1', MyLongString.IndexOfAny(ListOfChar2));
                end;
            }
            action(LastIndexOf){
                ApplicationArea = All;
                ToolTip = 'Runs the LastIndexOf function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', MyLongString.LastIndexOf('t'));
                end;
            }
            action(PadLeft){
                ApplicationArea = All;
                ToolTip = 'Runs the PadLeft function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('PadLeft: %1', MyLongString.PadLeft(50,'2')); // Results in '22222222222222HelloWorldOfManyManyCharacters'
                    Message('PadLeft: %1', MyLongString.PadLeft(65,'-')); // Results in '----------------------HelloWorldOfManyManyCharacters'
                end;
            }
            action(PadRight){
                ApplicationArea = All;
                ToolTip = 'Runs the PadRight function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('PadLeft: %1', MyLongString.PadRight(45,'*')); // Results in 'HelloWorldOfManyManyCharacters*************'
                    Message('PadLeft: %1', MyLongString.PadRight(60,'·')); // Results in 'HelloWorldOfManyManyCharacters··························'
                end;
            }
            action(Remove){
                ApplicationArea = All;
                ToolTip = 'Runs the Remove function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', MyLongString.Remove(1,2));
                end;
            }
            action(Replace){
                ApplicationArea = All;
                ToolTip = 'Runs the Replace function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', MyLongString.Replace('a','e'));
                    Message('%1', MyLongString.Replace('Many','Tiny'));
                end;
            }
            action(Split){
                ApplicationArea = All;
                ToolTip = 'Runs the Split function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text;
                    newString2: List of [Text];
                    newString3: Text;
                    newString4: List of [Text];
                    String: Text;
                    String2: Text;
                    MylongStr: Text;
                    MylongStr2: Text;
                begin
                    MyLongString := 'This,is a comma,separated,string';
                    newString := MyLongString.Split(',').Get(2);
                    Message('%1', newString);  // Results in 'is a comma'

                    newString2 := MyLongString.Split(',');
                    foreach String in newString2 do
                        MylongStr += String + '/';
                    Message('%1', MylongStr);

                    newString3 := MyLongString.Split(',',' ').Get(3);
                    Message('%1', newString3);  // Results in 'a'

                    newString4 := MyLongString.Split(',',' ');
                    foreach String2 in newString4 do
                        MylongStr2 += String2 + '/';
                    Message('%1', MylongStr2);
                end;
            }
            action(StartsWith){
                ApplicationArea = All;
                ToolTip = 'Runs the StartsWith function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('%1', MyLongString.StartsWith('a')); // False
                    Message('%1', MyLongString.StartsWith('HelloWorld')); // True
                end;
            }
            action(Substring){
                ApplicationArea = All;
                ToolTip = 'Runs the Substring function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    newString: Text[10];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    newString := MyLongString.Substring(5, 10);
                    Message('%1', newString);  // Results in 'oWorldOfMa'
                end;
            }
            action(ToLower){
                ApplicationArea = All;
                ToolTip = 'Runs the ToLower function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('LOWERCASE: %1', MyLongString.ToLower());
                    // Results in 'helloworldofmanymanycharacters'
                end;
            }
            action(ToUpper){
                ApplicationArea = All;
                ToolTip = 'Runs the ToUpper function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                begin
                    MyLongString := 'HelloWorldOfManyManyCharacters';
                    Message('UPPERCASE: %1', MyLongString.ToUpper());
                    // Results in 'HELLOWORLDOFMANYMANYCHARACTERS'
                end;
            }
            action(Trim){
                ApplicationArea = All;
                ToolTip = 'Runs the Trim function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    result: Text;
                begin
                    MyLongString := 'Hello World Of Many Many Characters    a';
                    result := MyLongString.Trim();
                    Message('%1', MyLongString.Trim());
                    Message('%1', result);
                end;
            }
            action(TrimEnd){
                ApplicationArea = All;
                ToolTip = 'Runs the TrimEnd function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    Characters: Text;
                begin
                    MyLongString := 'Hellohh World Of Maany Many Characters  a   f';
                    Message('%1', MyLongString.TrimEnd());
                    Message('%1', MyLongString.TrimEnd('a'));

                    Characters := 'abcdefgh';
                    Message('%1', MyLongString.TrimEnd(Characters));
                end;
            }
            action(TrimStart){
                ApplicationArea = All;
                ToolTip = 'Runs the TrimStart function';
                Image = Process;
                trigger OnAction()
                var
                    MyLongString: Text[50];
                    Characters: Text;
                begin
                    MyLongString := 'h   g  Helloff Worlddd Of  Many Many Chaaaracters';
                    Message('%1', MyLongString.TrimStart());
                    Message('%1', MyLongString.TrimStart('a'));

                    Characters := 'abcdefgh';
                    Message('%1', MyLongString.TrimStart(Characters));
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        // TestingFeatures: Codeunit "AMM Testing Features";
    begin
        // TestingFeatures.Run();
    end;
}