#!/usr/bin/env perl

# Data Types - Arrays
#
# array: a data type that hold ordered list of values
# values can be: numbers, strings and references
#
# list vs array:
#   list: the data the you assign to array
#   array: the actual variable

use strict;
use warnings;
use Data::Dumper;

# -- empty list
my @test = ();
print Dumper(@test); # prints nothing if array is empty


# -- non-empty list
my @test2 = (
    22,
    'hello',
    1.22
);
print Dumper(@test2) . "\n"; # prints nothing if array is empty
# $VAR1 = 22;
# $VAR2 = 'hello';
# $VAR3 = '1.22';


# -- shorter syntax for list of string (quoted words)
my @listOfWords = qw/ one two three /;
print Dumper(@listOfWords) . "\n";
# $VAR1 = 'one';
# $VAR2 = 'two';
# $VAR3 = 'three';


# -- shorter syntax for list of numbers/chars
my @numbers = (11 .. 30);
print Dumper(@numbers) . "\n";
# $VAR1 = 11;
# $VAR2 = 12;
# $VAR3 = 13;
# ...
# $VAR18 = 28;
# $VAR19 = 29;
# $VAR20 = 30;

my @chars = ('a' .. 'z');
print Dumper(@chars) . "\n";
# $VAR1 = 'a';
# $VAR2 = 'b';
# $VAR3 = 'c';
# ...
# $VAR24 = 'x';
# $VAR25 = 'y';
# $VAR26 = 'z';

# -- accessing an element inside array (scalar -> $)
print Dumper($listOfWords[0]) . "\n";
# $VAR1 = 'one';

print $listOfWords[-1] . "\n\n"; # accessing the last element
# three

$listOfWords[6] = 'overrided';  # access out of bound adds undefined elements to the array
print Dumper(@listOfWords) . "\n";
# $VAR1 = 'one';
# $VAR2 = 'two';
# $VAR3 = 'three';
# $VAR4 = undef;
# $VAR5 = undef;
# $VAR6 = undef;
# $VAR7 = 'overrided';

my $size = @listOfWords;  # get number of elements in the list
print $size . "\n\n";
# 7

my $last_index = $#listOfWords; # get the last index of an array
print $last_index . "\n\n";
# 6


# -- slice
my @numbers2 = ( 1, 2, 3, 4, 5, 6 );
print Dumper(@numbers2[2 .. 3]) . "\n";
# $VAR1 = 3;
# $VAR2 = 4;
# $VAR3 = 5;


# -- methods:

# push, pop, shift, unshift
my @arr = (1, 2, 3);
push @test, 20; # arr = (1, 2, 3, 20) -- add one element to the end
my $last_elem = pop @arr; # last_elem = 20, arr = (1, 2, 3) -- remove one element from end
my $first_elem = shift @arr; # first_elem = 1, arr = (2, 3) -- remove one element from the beginnig and shift the whole thing to left
unshift @test, 4; # arr = (4, 2, 3) -- add one element to the beginning and shift the whole thing to the right

# sort
# by default works on strings (lexiographic and not numeric)

@arr = qw/ h o p m l a b c /;
my @sorted = sort @arr;
print Dumper(@sorted) . "\n";

@numbers = (4, 2, 10, 22, 30);
my @sorted_nums = sort  @numbers;  # lexiographic sort
print Dumper(@sorted_nums) . "\n";
# {...} : explicit sort routine
@sorted_nums = sort {$a <=> $b}  @numbers;  # numeric sort
@sorted_nums = sort {$b <=> $a}  @numbers;  # numeric sort (reverse)
print Dumper(@sorted_nums) . "\n";

1;
