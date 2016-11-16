Program randoms;
uses crt;
var runs,i :integer;
    rndnum :integer;
    narray :array[1..10] of integer;
begin
clrscr;

for i:= 1 to 10 do
begin
   narray[i] := 0;
end;

writeln('Generate Random Integers');
for runs := 1 to 50 do
begin
   rndnum := random(10) + 1;
   narray[rndnum] := narray[rndnum] + 1;
   writeln(runs, ' = ', rndnum);
end;
writeln(' ');
for i:= 1 to 10 do
begin
   writeln('number ', i, ' occurs ', narray[i], ' times');
end;

end.
