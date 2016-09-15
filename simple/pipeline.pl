#!/usr/bin/perl
# 
# Il nostro primo script in Perl 
# 
print "Test PIPELINE NuCalcSaa\n";
#
#  Defaults
#


sub CompUL {
    my ( $string1, $string2 ) = @_;
    # The subroutine performs a insensitive case
    # compare of two strings. It returns
    # 1 if the strings are equal or 0 if not
    if ( lc($string1) eq lc($string2) ) { return 1; }
    return 0;
} # CompUL

%Default = (
	    DEFAULT         => "DEFAULT",
	    CALDB           => "CALDB",
	    NONE            => "NONE",
	    NOTVALDPARNUMB  => "-",
	    NOTVALDPARBOOL  => "yes",
	    NOTVALIDRADEC   => -91,
	    LLINE           => "------------------------------------------------------------\n",
	    LLINE2          => "============================================================\n",
	    ENDLINE         => "=============================================================================================\n",
	    ALLOBSMODES     => ["01", "02", "03", "04", "05", "06"],
	   );
	   
%Parms_bool = (
               # nucalcsaa task
	       tentacleregcut     => $Default{'NOTVALDPARBOOL'},
	       cleanup      => $Default{'NOTVALDPARBOOL'},
	      clobber      => $Default{'NOTVALDPARBOOL'},
	      history      => $Default{'NOTVALDPARBOOL'},
	      );

    %nucalcsaa = (
		  tentacleregcut        => $Parms_bool{tentacleregcut},	
		 optimizedsanitychecks => "STATUS==b000000000x0xx000\&\&SHIELD==0\&\&GRADE.LE.26",
		 tentaclesanitychecks  => "yes",
		 cleanup        =>  $Parms_bool{cleanup},
		 );
		 
     %nusplitsc = (
		  optimizedsanitychecks => "yes",
		  tentaclesanitychecks  => "yes",
		  cleanup        =>  $Parms_bool{cleanup},
		  clobber        =>  $Parms_bool{clobber},
		  history        =>  $Parms_bool{history},
		 );
    


$command = "nucalcsaa";
for $par ( keys %nucalcsaa ) { $command .= " $par=$nucalcsaa{$par}"; } 
print "Nucalcsaa command: [$command]\n";

$command1 = "nusplitsc";
for $par ( keys %nusplitsc ) { $command1 .= " $par=$nusplitsc{$par}"; } 
print "Nusplitsc command: [$command1]\n";

