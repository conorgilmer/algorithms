# stack.pl
#!/usr/bin/perl

## A Queue - First in First Out (FIFO)

print "Perl example of a \"First In First Out\" Queue\n";
@queue = qw( nixon ford carter regan bush clinton bush obama );

print "Initial queue:\n  @queue \n";
unshift(@queue, "johnson");
print "Add item to queue:\n  @queue \n";
$item = "kennedy";
unshift(@queue, $item);
print "Add item to queue:\n  @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: $fifo\n"; 
print "Final queue:\n  @queue \n\n";




print "*** The End ***\n";
