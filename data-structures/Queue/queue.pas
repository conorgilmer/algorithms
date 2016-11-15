(* QUEUE - Last In First Out (LIFO) *)
program queue;

uses crt;

var
Q : Array[1..10] of integer;

i,choice,item,rear,front:integer;


(* push onto queue *)
procedure push;
begin

clrscr;
writeln('ENTER THE NUMBER TO BE INSERTED ');
read(item);

if rear=10 then
    begin

    writeln(' QUEUE IS FULL ');

    front:=0;

    end
else
    begin

    rear:=rear+1;
    Q[rear]:=item;
    end;

for i:=front+1 to rear do
    write(' | ',q[i],' | ');

end; (* end of push *)

(* pop off queue *)
procedure pop;
begin

clrscr;

if front=rear then
    begin
    writeln('QUEUE IS EMPTY !');
    rear:=0;
    end
else
    begin
    front:=front+1;
    item:=Q[front];
    writeln('THE DELETED ELEMENT IS ',item);
    for i:=front+1 to rear do
        writeln('| ',q[i],' |');
    end;
end; (* end of pop *)

(* print Queue *)
procedure printQueue;
begin

    write(' head ');
    for i:=front+1 to rear do
        write('| ',q[i],' |');

    write(' tail ');
end;

(* Main Program *)
begin
clrscr;

(* initialise queue *)
front:=0;
rear:=0;

repeat

    writeln;
    writeln;

    writeln(' QUEUE MENU ');
    writeln(' 1. Insert element onto Queue ');
    writeln(' 2. Delete element from Queue ');
    writeln(' 3. Print Queue ');
    writeln(' 0. EXIT ');
    writeln;
    writeln(' ENTER YOUR CHOICE ');

    read(choice);

    case choice of

        1 : push;
        2 : pop;
        3 : printQueue;
        0 : exit;

    end;

until choice=0;

end. (* end of main program *) 
