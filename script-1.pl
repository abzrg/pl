#!/usr/bin/env perl

# Perl scalars
#
# scalars: single unit of data:
# - undefined
# - number
# - the small number
# - string
# - reference

use strict;
use warnings;


# numbers
my $test = 1;
my $decimal = 1.22;
#my $test = 2;  # warning: this declaration masks previous declaration of $test

# arithmetic operations: + - * /
print $test / $decimal . "\n"; # 2.22


# strings
# - single quote: literal
# - double quote: special behaviour of special characters
#   - \n, \t, $test,...
my $string = 'hello';
my $string2 = 'hello2';

print $string . $string2 . "\n"; # string concatenation

my $string3 = "hello $string2\n"; # string interpolation
print $string3;

print "I have \"\$2\"";  # -> I have "$2". (escape special chars)

1;

