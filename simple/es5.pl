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

print "Stringa da sostituire: ";
$sost = <STDIN>;
chop($sost);


open(IN,"< $file") || die "Impossibile aprire il file \'$file\' !!!\n\n";
open(OUT,"> $file.new") || die "Impossibile creare il file \'$file.new\' !!!\n\n";

while($r =<IN>)
{
	$r=~ s/$stringa/$sost/g;
	print OUT $r;
}

close(IN);
close(OUT);