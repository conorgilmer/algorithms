# Perl Bubble Sort
# By Conor Gilmer

#!/usr/local/bin/perl

# Bubble Sort subroutine
sub bubbleSort
{
my @array    = @_;
my @newarray = ();
my $n = $#array;
my $itertion =0;

    # sort process
    #iterate through and sort array
    for ($c = 0; $c <= ( $n - 1 ); $c++) {
      for ($d = 0; $d <= $n - $c - 1; $d++) {
	$iteration++;
#	print "Iteration $iteration \n";
        if ($array[$d] > $array[$d+1]) # For descending order use 
        {
          $swap        = $array[$d];
          $array[$d]   = $array[$d+1];
          $array[$d+1] = $swap;
        }
      }
    }

	print "Iterations = $iteration \n";
return @array;
}

# Display the array as dashes subroutine
sub displayArray
{
my @sarray = @_;
my @newarray = ();
my $o = 0;
my $p = 0;
my $i = 0;
print "Display Array\n";
print "@sarray\n";

my $slength = $#sarray + 1;

print "The Array is of length $sample_length\n";

for ($i=0; $i < $slength; $i++)
{
   print $i+1 . " " . $sarray[$i];
   for ($j=0; $j < $sarray[$i]; $j++)
   {
        print "*";
   }
   print "\n";
}



#for ($o=0; $o < ($#sarray + 1); $o++) {
#   print "$sarray[$o];
#}
#return @newarray;
}


# main routine
sub main
{
print "Perl Bubble Sort\n";
@sample_array = (9,22,12,15,7,4,18,10,3,5);

$sample_length = $#sample_array + 1;

#print "The Array is of length $sample_length\n";
#print "@sample_array\n";

displayArray(@sample_array);
print "Sort Array\n";
displayArray(bubbleSort(@sample_array));
print "The  End\n";
}

#Run Program
main();
