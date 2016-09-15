#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 
print "Nome del file: ";
$file = <STDIN>;
chop($file);
-e $file || die "Il file \'$file\' non esiste!!!\n\n";
-T $file || die "Il file \'$file\' non non è di testo!!!\n\n";

print "Stringa da cercare: ";
$stringa = <STDIN>;
chop($stringa);

open(IN,"< $file") || die "Impossibile aprire il file \'$file\' !!!\n\n";

while($r =<IN>)
{
	$r=~ /$stringa/ && print $r;
}

close(IN);