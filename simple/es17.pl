#!/usr/bin/perl -w
# 
# Il nostro primo script in Perl 
# 


print "Subroutine array e hash\n";

sub mysub
{
  my @a = @_;
  print @a;
}

sub mysub_ref
{
  my $aref = shift @_;
  my @a = @$aref;
  print @a;
}

sub cubo
{
  my $n = shift @_;
  if($n == 0)
  {
    return;
  }
  my $c = $n ** 3;
  return $c;
}

sub printk
{
   my ($this, $level, @rest ) = @_;

   printf ($level);
   if ( $level <= 3 )
   {
      printf (@rest);
   }
}


@b=(1,2,3,4,5,6,7,8,9,10);

mysub(@b);
print "\n";
mysub_ref(\@b);
print "\n";

$n=12345;
$result=cubo($n);
printf("\nIl CUBO di $n è: $result\n");

@spacies = glob "*.pl";
foreach $s(@spacies)
{
  printf("%s\n",$s);
}


printk(2,2,"%s: ....................... Checking %s: Error\n", "dsadsd", "dsadsd");

