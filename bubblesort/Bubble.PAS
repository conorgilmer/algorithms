program Bubble;
 const Max = 20;
 var numbers : array[1..Max] of integer;
 
 (* Randomize digits in the array *)
 procedure Randomize;
  var i : integer;
  begin
   for i := 1 to Max do
    numbers[i] := Random(100);
  end;
 
 (* Swap two values in the array *)
 procedure Swap(x, y : integer);
  begin
   numbers[x] := numbers[x] xor numbers[y];
   numbers[y] := numbers[x] xor numbers[y];
   numbers[x] := numbers[x] xor numbers[y];
  end;

(* Sort Procedure *) 
 procedure Sort;
  var i, j : integer;
  begin
   for i := 1 to Max - 1 do begin
    for j := i + 1 to Max do begin
     if numbers[i] > numbers[j] then
      Swap(i, j);
    end;
   end;
  end;
 
(* Print array *)
 procedure Print;
  var i : integer;
  begin
   for i := 1 to Max do begin
    Write(numbers[i]);
    Write(' ');
   end;
   Writeln;
  end;
 
 (* Main program starts here *)
 begin
  WriteLn('***     Bubble Sort    ***');
  Randomize;
  WriteLn(' Before Sort ');
  Print;
  Sort;
  WriteLn(' After Sort ');
  Print;
  WriteLn('*** End of Bubble Sort ***');
 end.
