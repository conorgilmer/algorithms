(* Single Linked List *) 

Program SingleLinkList;
uses CRT;
Type
    SLL=^data;
        data=record
            info:integer;
            next:SLL;
        end;
    List=SLL;
    Node=SLL;

var L         : list;
    choose    : char;
    sum,ElmIn : Integer;
    avg       : Real;

(* Create a List *)
Procedure CreateList (Var L:List);
begin
    L:=nil;
end;

(* Insert at the Head of the List *)
Procedure insertFirst (Var L:List; elm:integer);
var
  P:Node;
begin
    New(P);
    P^.info:=Elm;
    if L = nil then
    Begin
       L:=P;
       P^.next:=Nil;
    end
    else
    begin
        P^.next:=L;
        L:=P;
    end;
end;

(* Insert at the Tail of the List *)
Procedure insertLast (Var L:list;elm:integer);
var
   Pt,P : Node;
begin
     new(P);
    P^.info:=elm;
  if (L=Nil) then
  begin
     L:=P;
     P^.next:=nil;
  end
  else
  begin
    Pt:=L;
    while (Pt^.next<>Nil) do
      Pt:=Pt^.next;
    P^.next:=Nil;
    Pt^.next:=P;
  end;
end;

(* Delete the first (head) element of the list *)
procedure DeleteFirst(var L:List);
var P : Node;
begin
  if (L<>Nil) then
  begin
       if L^.next = nil then
       begin
          P:=L;
          dispose(P);
          L:=nil;
       end
       else
       begin
            P:=L;
            L:=L^.next;
            P^.next:=Nil;
            dispose(P);
       end;
  end;
end;

(* Delete the last (tail) element of the list *)
procedure DeleteLast(var L:List);
var Prec,Pt : Node;
begin

  if (L<>Nil) then
  begin
    Pt:=L;
    Prec:=Nil;
    while (Pt^.next<>Nil) do
    begin
      Prec:=Pt;
      Pt:=Pt^.next;
    end;
    if (Prec=Nil) then
    begin
        dispose(pt);
        L:=nil;
    end
    else
    begin
      Prec^.next:=Nil;
      dispose(Pt);
    end;
  end;
end;

(* Sumate the elements in the List *)
Procedure sumElements(var L:List; var sum: integer);
var pt: node;
begin
     Sum:=0;
     Pt:= L;
     Sum:=Sum+Pt^.info;
     while Pt^.next<>nil do
     begin
         Pt:=Pt^.next;
         Sum:=Sum+Pt^.info;
     end;
     writeln;
     write ('The elements in the list add up to ',sum,'');
     writeln;
end;

(* Calculate the Average of the elements in the List *)
Procedure avgElements(var L:List; var avg: real);
var pt: node;
    Counter: Integer;
    Sum    : Integer;
begin
     Sum:=0;
     Counter:=0;
     Pt:= L;
     Sum:=Sum+Pt^.info;
     Counter:=Counter+1;
     while Pt^.next<>nil do
     begin
         Pt:=Pt^.next;
         Sum:=Sum+Pt^.info;
         Counter:=Counter+1;
     end;
     avg := Sum / counter;  
     writeln;
     write ('The average elements is ',avg:5:2,'');
     writeln;
end;

(* Print the List *)
Procedure printList (Var L:List);
Var P:Node;
Begin
    clrscr;
    write('Head -> ');
    if L<> Nil then
    begin
        P:=L;
        write (P^.info);
        write (' -> ');
        P:=P^.next;
        while P<>nil do
        begin
            write (p^.info);
            write (' -> ');
            p:=P^.next;
        end;
    end;
    write('Tail');
    writeln;
end;

(* Main Function *)
begin
createlist(L);

(*repeat menu until exit choosen *) 
repeat 
begin
    clrscr;
    printList(L);
    writeln;
    writeln;
    writeln ('============== Program Single Linked List of Integers ==============');
    writeln;
    writeln('1. Insert First');
    writeln('2. Insert Last');
    writeln('3. Delete First element');
    writeln('4. Delete Last element');
    writeln('5. Sum Elements');
    writeln('6. Average Elements');
    writeln('0. Exit');
    write('Choose = ');
    readln(choose);

    case choose of
    '1' : begin
          write('Add an element to the start Single Linked List = ');
          Readln (ElmIn);
          insertFirst(L,ElmIn);
          printList(L);
          end;
    '2' : begin
          write('Add an element to the tail of a Single Linked List = ');
          Readln (ElmIn);
          insertlast(L,ElmIn);
          printList(L);
          end;
    '3' : begin
          deletefirst(L);
          printList(L);
          end;
    '4' : begin
          deletelast(L);
          printList(L);
          end;
    '5' : begin
          sumElements(L, sum);
          end;
    '6' : begin
          avgElements(L, avg);
          end;
    '0':  exit;
    end;
    writeln;
    writeln ('Press <enter> to run again');
    readln;
end;
until  choose = '0';

    writeln ('============== End of Program  ==============');

end.
