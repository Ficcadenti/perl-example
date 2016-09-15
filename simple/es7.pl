#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

@pippo=(1,2,3,4,5,6,7,8,9,10,11,12);

sub stampa
{
	local($n);
	foreach $n (@_)
	{
		print "$n\n";
	}
}

sub somma
{
	local($n,$somma);
	foreach $n (@_)
	{
		$somma+=$n;
	}
	return($somma);
}

sub media_eval
{
	
	$str_media="(";
	$str_media .=join('+',@_);
	$str_media .=")/($#_+1)";
# 	print $str_media;
	return(eval($str_media));
}

sub media
{
	
	foreach $n (@_)
	{
		$somma+=$n;
	}
	$media=$somma/($#_+1);
	return($media);
}




sub fattoriale_1
{
	local($n,$i,$f);
	$n=shift(@_);
	$f=$n;
	for($i=$n-1; $i>1; $i--)
	{
		$f=$f*$i;
	}
	return($f);
}

sub fattoriale_2
{
	local($n);
	$n=shift(@_);
	($n==1) && return(1);
	return($n*fattoriale_2($n-1));
}




$s=somma(@pippo);
$m=media_eval(@pippo);

$n=@ARGV[0];
$f1=fattoriale_1($n);
$f2=fattoriale_2($n);


# &stampa(@pippo);
print "la somma del vettore è: $s\n";
print "la media del vettore è: $m\n";
print "il fattoriale iterativo di $n è $f1.\n";
print "il fattoriale iterativo di $n è $f2.\n";