#!/usr/bin/perl             << Shebang line
# hello-working.pl          

use 5.18.0;                 # Perl version
use warnings;               # Issue warnings (best practice)

say "Hello World";          # display text on console

my $x = 47;
say $x;
$x += 3;
say $x;
my @array = (1, 2, 3); # array
say foreach (@array); # print array
my $count = @array;
say "There are $count elements in the array";

my ($x, $y, $z) = (1, 2, 3); # compound assignment
say ($x, $y, $z);

