#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

print "REFERENCE SCALAR\n";

$a="raffaele";
$ra=\$a;
$ref_str=ref $ra;

print "$ref_str\n";
print $ra."\n";
print $a."\n";

${$ra}="valeria";
print $$ra."\n";
print ${$ra}."\n";
print $a."\n";
print $ra."\n";
