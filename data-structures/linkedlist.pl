#!/usr/bin/perl

# Linked Lists
@list = ( ["Tom  ", "Null"], ["Dick ", "Null"], ["Harry", "Null" ]);

# print list subroutine
sub print_list {
  $max = $_[0];
  for ($i=0; $i<$max; $i++)
  {
    print "$i.  $list[$i][0]\t $list[$i][1]\n";
  }
}

# traverse_list subroutine
sub traverse_list
{
$next = 0;

#Step through Linked List
print "Traversing list:\n";
while ($next !~ "Null"){
  print "$list[$next][0] \n";
  $next = $list[$next][1];
}
}


# main function
sub main {
print "Making Linked Lists\n";

$max = $#list + 1;

print "Initial Values\n";
print_list($max);

print "\n\n";

# Create Some Links
$list[0][1] = 2;
$list[2][1] = 1;
# This is a classic example 0 linking to 2 linking to 1 linking to NULL(end)
#i.e Tom -> Harry -> Tom -> the end
# one point has to be set to null so as it is the end point

print "Made Links\n";
print_list($max);

print "\n\n";
print "*** The End ***";
print "\n\n";

}

# call main sub routine
main ();
