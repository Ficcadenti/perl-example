#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

print "\Uciao \Eraffaele\n";
$a=1;
$b=1;

print $a++."\n";
print ++$b."\n";

$s1="pr";
$s2="questa è una ${s1}ova\n";

$s3=$s1 x 3;

print $s3."\n";

unless ($a!=2) 
{
	print "allora \$a = 2\n";
}
