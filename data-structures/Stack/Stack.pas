{Program showing the Stack Data Structure - LIFO Last In First Out}
{ This is a stack of Integers }

Program Stack;
uses Crt; 

{ constants }
Const
	STACK_SIZE = 64;

{ variables }
Var
	myStack         : Array[1..STACK_SIZE] of Integer;
	topPointer      : Integer;
        i, temp, n, fmr : Integer;

{ initialize stack }
Procedure InitStack;
Begin
    topPointer := 0;
End;

{ check if stack is empty }
Function IsEmpty : Boolean;
Begin
    IsEmpty := false;
    If (topPointer = 0) then
        IsEmpty := true;
End;

{ check if stack is full }
Function IsFull : Boolean;
Begin
    IsFull := false;
    If ((topPointer + 1) = STACK_SIZE) then
        IsFull := true;
End;

{ Pop - remove an element from the stack, returns the removed element }
Function Pop : Integer;
Begin
    Pop := 0;

    If not IsEmpty then
    Begin
        Pop := myStack[topPointer];
        topPointer:= topPointer -1;
    End;
End;

{ push an element onto the stack }
Procedure Push(item :Integer);
Begin
    If not IsFull then
    Begin
        myStack[topPointer+1] := item;
        topPointer := topPointer + 1;
    End;
End;

{ get the size of the stack }
Function GetSize : Integer;
Begin
    GetSize := topPointer;
End;

{ main program }
Begin
    ClrScr;
    Writeln('Stack Data Structure');
    Writeln('Enter number (n) to add to stack');
    Readln(n);
    Writeln('Enter n stack elements.');
    For i := 1 To n Do
    Begin
        Readln(temp);
        Push(temp);
    End;

    Writeln();
    Writeln('Size of stack : ', GetSize);
    Writeln();
    Writeln('Erasing last element . . .');
    Writeln();
    fmr := Pop;
    Writeln('Removing ', fmr);
    Writeln('Stack without last element. ');
    For i := 1 to GetSize Do
        Writeln(myStack[i]);
    Readln;

End.
