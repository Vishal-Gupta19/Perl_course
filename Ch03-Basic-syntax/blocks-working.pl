#!/usr/bin/perl             << Shebang line
# blocks-working.pl          

use 5.18.0;                 # Perl version
use warnings;               # Issue warnings (best practice)

my $alpha = 'alpha';
my $beta = 'beta';
my $charlie = 'charlie';

sub func() {
    foreach my $x ($alpha, $beta, $charlie) {
        say $x;
    }
}

func();
