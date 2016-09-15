#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 


print "Regular Expression\n";

$a="Prova";
$b="ova";
$c="Pro";
$d="vi";
$e="prova";

if($a =~ m/$b/)
{
    print "$a contiene '$b'\n";
}
else
{
    print "$a non contiene '$b'\n";
}

if($a =~ /^$c/)
{
    print "$a inizia con '$c'\n";
}
else
{
    print "$a non inizia '$c'\n";
}

if($a =~ /$d$/)
{
    print "$a finisce con '$d'\n";
}
else
{
    print "$a non finisce '$d'\n";
}

if($a =~ /^$e$/)
{
    print "$a == '$e'\n";
}
else
{
    print "$a != '$e'\n";
}

if($a eq $e)
{
    print "$a == '$e'\n";
}
else
{
    print "$a != '$e'\n";
}

if($a =~ /$b|$c/)
{
    print "$a contiene '$b' or '$c'\n";
}
else
{
    print "$a non contiene '$b' or '$c'\n";
}


