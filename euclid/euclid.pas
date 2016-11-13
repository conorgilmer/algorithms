{* euclid.pas *}

program euclid;

var a,b,result:integer;


{* Greatest Common Divisor Function*}
function GCD(a, b : integer) : integer;

var t, r : integer;

begin
 if (a < b) then
    begin
      t := a; a := b; b := t
    end;

 repeat
    r := a mod b; {* modulus *}
    a := b;
    b := r
 until r = 0;

 GCD := a;
end;

{* Main Function *}
begin

writeln('Greatest Common Divisor (GCD)');
writeln('using Euclid Algorithm');
write('Enter number A:'); readln(a);
write('Enter number B:'); readln(b);

result:= GCD(a,b);

writeln(' GCD = ', result);

end.
