#!/usr/bin/env perl

# Debugging with Data::Dumper
# not so useful for scalars but highly usefull for arrays, and other complicated
# data structures

use strict;
use warnings;
use Data::Dumper;

my $a = 'hello';
my $b = 1.22;

print Dumper($a, $b);
# $VAR1 = 'hello';
# $VAR2 = '1.22';

1;
