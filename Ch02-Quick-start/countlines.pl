#!/usr/bin/perl

use 5.18.0;
use warnings;

# use a scalar variable for the name of the file
my $filename = "linesfile.txt";

#open the file
open(FH, $filename);
#read the file
my @lines = <FH>;
#close the file
close(FH);

my $count = scalar @lines;
say "There are $count lines in $filename";


=pod

OUTPUT:
----------
There are 50 lines in linesfile.txt

=cut