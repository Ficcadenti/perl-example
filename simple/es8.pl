#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 

$date = `date +%d/%m/%y`;
# @linee = `cat processi.txt | grep root | grep 63 | sort `;
@linee = `cat processi.txt `;
@pippo=(1,2,3,4,5,6,7,8,9,10,11,12);

# print "DATA=$date\n";
# print @linee;

open (OUT, "| more") || die "Errore \n\n";
foreach $riga(@linee)
{
	print OUT $riga;
}
close(OUT);