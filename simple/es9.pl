#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 

$indirizzo='rficcad@e-tech.net';

print $indirizzo."\n";

open(MAIL,"| /bin/mail $indirizzo") || die "Impossibile inviare il messaggio all'indirizzo $indirizzo \n";
print MAIL << "END";
Subject: Test email PERL
Lo script ti sta dicendo CIAOOOOO...
END
