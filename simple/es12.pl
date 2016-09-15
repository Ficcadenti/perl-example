#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

print "Code e Stack con ARRAY e HASH\n";

@nomi=("Valeria","Sofia","Maria","Gabriele","Raffaele");

unshift @nomi, "Francesco";
push @nomi, "Matteo";

# @nomi = sort @nomi;

# shift @nomi;
# pop @nomi;
@nomi = reverse @nomi;

for($i=0; $i<scalar(@nomi); $i++)
{
	print "$nomi[$i]\n";
}