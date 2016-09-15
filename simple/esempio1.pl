#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 

print "Funziona1! \n";
print `date`;
print `ls`;

$a="/home/raffo/agile.tar";

$b= -s $a;

print "$a \n";
print "$b \n";


