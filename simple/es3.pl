#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 
print "Inserisci una stringa: ";
$a=<STDIN>;
chop($a);
print "Stringa = \'$a\'\n";

if($a =~ /^\d+\s.+/)
{
	print "Ok il formato della stringa è corretto.\n";
}
else
{
	print "Il formato della stringa non è quello desiderato.\n";
}