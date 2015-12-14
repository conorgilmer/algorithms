# Perl Euclids Algorithm/ Greates Common Divisor
# Program gcd.pl
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

}


    # recursive implementation
    sub gcd #(int p, int q) 
    {
	my $p = shift;
	my $q = shift;
        if ($q == 0) {
		return $p;
	}
        else
	{ 
		return gcd($q, $p % $q);
	}
    }

    # non-recursive implementation
    sub gcd2 #(int p, int q) 
    {
	my $p = shift;
	my $q = shift;
	my $temp;
        while ($q != 0) {
            $temp = $q;
            $q = $p % $q;
            $p = $temp;
        }
        return $p;
    }


# main routine
sub main
{
print "Perl Greatest Common Divisor\n";

my $p = 45;
my $q = 441;
my $d  = gcd($p, $q);
my $d2 = gcd2($p, $q);
print ("gcd ($p , $q) =  $d \n");
print ("gcd ($p , $q) =  $d2 \n");

print "The  End\n";
}

#Run Program
main();
