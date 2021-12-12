#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;

my $filename = "linesfile.txt";

# open the file with simple error reporting
my $fh = IO::File->new($filename, "r");
if (!$fh) {
    print("Cannot open $filename ($1)\n");
    exit;
}

#count the lines
my $count = 0;
while($fh->getline) {
    $count++;
}

#close and print
$fh->close;
say "Using IO::File class";
print("There are $count lines in $filename\n");

=pod

OUTPUT:
----------
Using IO::File class
There are 50 lines in linesfile.txt

=cut