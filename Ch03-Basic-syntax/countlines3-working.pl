#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;

main(@ARGV);

#entry point
sub main {
    my $filename = shift || "linesfile.txt";
    say $filename;
    my $count = countlines($filename);
    say "There are $count lines in $filename";
}

# countlines - count the lines of a file
sub countlines {
    my $filename = shift;
    error("countlines: missing filename") unless $filename; # post-fix conditional

    #open the file
    my $fh = IO::File->new($filename, "r") or 
    error("Cannot open $filename ($!)\n");

    #count the lines
    my $count = 0;
    $count++ while ($fh->getline);

    $fh->close;

    return $count;
}

sub error {
    my $e = shift || 'unknown error';
    say "$0: $e";
    exit 0;
}