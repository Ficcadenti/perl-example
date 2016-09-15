#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 


print "Subroutine\n";

sub pnome
{
  my $nome = shift @_;
  print "Nome: $nome\n";
}

sub pnome2
{
  my ($n1,$n2) = @_;
  print "Nome: $n1\n";
  print "Nome: $n2\n";
}


sub incrementa{
  print "$_[0]\n";
  print "$_[1]\n";
  
  my $r_num=shift @_;
  my $inc=shift @_;
  $$r_num+=$inc;
}


pnome2("Raffaele","Luca");
pnome("Valeria");
pnome("Sofia");
pnome("Maria");
pnome("Gabriele");
pnome("Francesco");

$a=10;
incrementa(\$a,4);
print "Incrementato: $a\n";

