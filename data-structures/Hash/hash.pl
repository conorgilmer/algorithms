# hash.pl
#!/usr/bin/perl

## Using a Perl Hash Table

print "Perl example of a Hash Table \n";
print "Irish Political Parties\n";

# Initializing a hash using the "correspond" operator to make easy reading

%hash = ( 
          "ff"  =>  "Fianna Fail:70",
          "fg"  => "Fine Gael:50",
          "lab" => "Labour:20",
          "pds" => "Progressive Democrats:8",
          "sf"  => "Sinn Fein":4");

print "Traversing list:\n";
$next = "ff";
while ($next !~ "Null")
  { @data = split(/:/, $hash{$next});
    print "$next  $data[0] \n";
    $next = $data[1];
  }

 print "\n\n";
 

print "*** The End ***\n";
