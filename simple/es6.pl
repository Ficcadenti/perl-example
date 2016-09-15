#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 

$ARGV[0] || die "non è stata specificata la stringa da cercare!!!\n\n";

@file = `ls`;
chop(@file);

print "CVSROOT = $ENV{CVSROOT} \n";
print "TERM    = $ENV{TERM} \n";
print "PATH    = $ENV{PATH} \n";

print "PID               = $$ \n";
print "NOME PROCESSO     = $0 \n";
print "USER ID EFFETTIVO = $> \n";
print "USER ID REALE     = $< \n";
foreach $file (@file)
{
	-T $file || next;
	open (IN, "< $file");
	{
		while ($r=<IN>)
		{
			$r =~ /$ARGV[0]/ && print "$file: $r";
		}
		close(IN);
	}
}