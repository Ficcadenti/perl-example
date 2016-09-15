#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

print "REFERENCE ARRAY e HASH\n";

@a=(1,2,3);
%b=(	"a"	=> "bianco",
	"b"	=> "grigio");

$ra=\@a;
$rb=\%b;

print $ra."\n";
print $rb."\n";

print scalar @$ra;
print scalar keys %$rb;

print $ra->[1];
print $rb->{"b"};

print $$ra[1];
print $$rb{"b"};


