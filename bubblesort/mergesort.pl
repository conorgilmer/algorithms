# Perl Merge Sort
# By Conor Gilmer

#!/usr/local/bin/perl

# Merge Sort subroutine
sub merge_sort {
    my @x = @_;
    return @x if @x < 2;
    my $m = int @x / 2;
    my @a = merge_sort(@x[0 .. $m - 1]);
    my @b = merge_sort(@x[$m .. $#x]);
    for (@x) {
        $_ = !@a            ? shift @b
           : !@b            ? shift @a
           : $a[0] <= $b[0] ? shift @a
           :                  shift @b;
    }
    @x;
}
 
# Main Program
sub main () {
    print "*** Merge Sort ***\n";
    my @narray = (34, 4, 3, 65, 42, -21, 0, 9, 2, 83, 72, 1);
    print "Before \n";
    print "@narray\n";
    @narray = merge_sort @narray;
    print "After  \n";
    print "@narray\n";
    print "*** End of Merge Sort ***\n";
}

#Run Program
main();
