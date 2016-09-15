#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

@nomi=("Valeria","Sofia","Maria","Gabriele","Raffaele");
@cognomi=qw(Greco Ficcadenti);
print "ARRAY e HASH\n";

@nomi = sort @nomi;

print scalar(@nomi)."\n";
$#nomi=10;
print $#nomi."\n";
$nomi[7]="Francesco";

for($i=0; $i<scalar(@nomi); $i++)
{
	print "$nomi[$i]\n";
}