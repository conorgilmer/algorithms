#!/usr/bin/perl
# -------------------------------------- #
# Numerical Simulation of Equipotentials #
# using the Relaxation Algorithm         #
# for the Finite Difference Method       #
# to solve Laplaces Equation.            #
# 					 #
# Date: 11/11/99			 #
# 					 #
# by Conor Gilmer			 #
# -------------------------------------- # 

use strict;
use warnings;

# global variables
my @grid;
my $runs;
my $ch = 0;

# Initialisation sub routines
# Initialise the grid size $gridsize * $gridsize to $charge
sub setGrid
{	my $gridsize = shift;
	my $charge = shift;
	for (my $x=0; $x<$gridsize; $x++) {
		for (my $y=0; $y<$gridsize; $y++) {
			$grid[$x][$y] = $charge;
		}
	}
}

# initialize electrodes to $left and $right potential values
sub setElectrodes
{
	my $left = shift;
	my $right = shift;
#	print("Setting Electodes\n");
	for (my $x=35; $x<45; $x++) {
		$grid[50][$x]=$left;
	}
	for (my $x2=55; $x2<65; $x2++) {
		$grid[50][$x2]=$right;;
	}
}

# initialize the middle between the electrodes relative to their potentials
sub setMiddle
{
	my $left=shift;
	my $right=shift;
	my $charge=9;
	my $chargev;
#	print("Setting middle\n");
	$chargev=$charge/(abs($left)+abs($right));
	for (my $m=46; $m<56; $m++) {
		$charge=$charge-$chargev;
		$grid[50][$m]=$charge;
	}
}

# write the grid from (xstart, ystart) to (xstart+showsize, ystart*showsize) to file
sub printGridtoFile
{
	my $xstart = shift;
	my $ystart = shift;
	my $showsize = shift;
	my $rounded = 0;
	my $output = "output.txt";
	print ("write to file\n");
	open(FILEVAR,">$output") || die("This file will not open!");

	for (my $x=$xstart; $x<($showsize+$xstart); $x++) {
		for (my $y=$ystart; $y<($showsize+$ystart); $y++) {
			$rounded = int($grid[$x][$y]);
			print FILEVAR "$rounded ";
			#print FILEVAR "%.0f ",$grid[$x][$y] ;
		}
		print FILEVAR "\n";
	}

	close(FILEVAR);
}


# display the grid from (xstart, ystart) to (xstart+showsize, ystart*showsize)
sub printGrid
{
	my $xstart = shift;
	my $ystart = shift;
	my $showsize = shift;
	for (my $x=$xstart; $x<($showsize+$xstart); $x++) {
		for (my $y=$ystart; $y<($showsize+$ystart); $y++) {
			printf ("%.0f ",$grid[$x][$y] );
		} # for y
		print("\n");
	} # for x
}



# execute ther relaxation algorithm
sub relax
{	my $iterations = shift;
	my $NewVal = 0.0;
	my $absNewVal = 0.0;
	my $Delta = (18.0/10000.0);
	my $changes = 0;
#	print ("Running the Relaxation Algorithm \n");

	for (my $ix = 1;  $ix < 99; $ix++)
	   {
                for (my $iy = 1; $iy < 99; $iy++)
		{
                     $NewVal = ($grid[$ix-1][$iy] + $grid[$ix+1][$iy] + $grid[$ix][$iy-1] + $grid[$ix][$iy+1])/4;
		     $absNewVal = abs($NewVal);
                     if (($absNewVal-$grid[$ix][$iy]) >= $Delta) {
                         $changes = $changes +1;
                         $grid[$ix][$iy] = $NewVal;
		     }
	   	}
	   }

	print ("Relax Iteration $iterations, changes $changes \n");
	return $changes;
}

sub main
{
# Start the program here
	print "content-type: text/html \n\n"; #HTTP HEADER

	print("Numerical Simulation of Equipotentials\n");
	print("Initialise Grid\n");
	setGrid(100,0);
	print("Set Electodes\n");
	print("Set Middle\n");	
	# initialize electrodes to $left and $right potential values
	setElectrodes(+9,-9);
	setMiddle(+9,-9);
	printGrid(25,25,51);


	print ("Running the Relaxation Algorithm \n");
	$runs = 1000;
	$ch = 0;
	for (my $r=1; $r <$runs; $r ++){
		$ch = relax($r);
		setElectrodes(+9,-9);
		setMiddle(+9,-9);
		if ($ch eq 0) {
			print ("Reached zero so exit!\n");
			exit;
		}
	} #end for

	printGrid(35,35,31);
	# save output to a file
	printGridtoFile(35,35,31);
	print("The End\n");
}

# run main
main;
