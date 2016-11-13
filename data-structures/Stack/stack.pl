# stack.pl
#!/usr/bin/perl

## A Stack - Last in First Out (LIFO)

print "Perl example of a  Stack\n";
@stack = qw( nixon ford carter regan bush clinton );
print "US Presidents\n";
print "Initial stack:\n  @stack \n";
push (@stack, "bush");
print "Push item onto stack:\n  @stack \n";
$item = "Obama";
push (@stack, $item);
print "Push item onto stack:\n  @stack \n";
$top = pop @stack;
print "Popping item from stack:  $top\n";
print "Final stack:\n  @stack \n\n";
print "*** The End ***\n";
