#!/usr/bin/env perl

# Hash (funnel data structure!)
#
# set of key-value pairs
# valus: string, number, references
# excellent solution for fast lookup (if you know the key)

use strict;
use warnings;
use Data::Dumper;


# empty hash
my %map = ();
print Dumper(%map); # nothing

%map = (
    a => 20,
    b => 'hello',
    c => 11.22,
);
print Dumper(%map); # order is not preserved
# $VAR1 = 'b';
# $VAR2 = 'hello';
# $VAR3 = 'a';
# $VAR4 = 20;
# $VAR5 = 'c';
# $VAR6 = '11.22';

1;
