#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 

sub incrementa{
  print "$_[0]\n";
  print "$_[1]\n";
  
  my $r_num=shift @_;
  my $inc=shift @_;
  $$r_num+=$inc;
}
