#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 


print "HASH\n";
%contatto = ( 			"nome"		=> "Raffaele",
				"cognome"	=> "Ficcadenti",
				"telefono"	=> 340402010,
				"email"		=> "ficcadenti\@asdc.asi.it"
);

@k = keys %contatto;
@v = values %contatto;

foreach $v(@v)
{
	print "Values: $v\n";
}

foreach $k(@k)
{
	print "keys: $k\n";
}

print $contatto{nome}."\n";

$a="123 la mia stringa";

# 
# if($a==1) 
# { 
# 	print "\na vale 1!!\n";
# }
# 
# print "a vale 1!!\n" if $a==1;
# 
# $a==1 ? print "a vale 1!!\n" : print "a diverso 1!!\n"
# 
SWITCH: for ($a){
	/^\d+\s.+/ && do
		{
			print $a."\n";
			last SWITCH;
		};
		
	/^2/ && do
		{
			print "2\n";
			last SWITCH;
		};	
		
	print "altro valore\n";
}

