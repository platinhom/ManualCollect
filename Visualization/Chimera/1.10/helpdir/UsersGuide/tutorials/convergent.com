#
#  commands for Chimera image tutorial: Similar Binding Sites
#   (additional stuff to be done interactively: defining ribbon style,
#    generating positions, adding 2D labels, saving images)
#
windowsize 831 544
open 1exp
open 1cel
delete :.b
preset apply int 1
~disp 
color gold #0
color cyan #1
background solid white
alias site1 #0:84,126,233,171,205
alias site2 #1:367,141,217,145,228
alias both site1 | site2
disp both
match iterate 2.0 site2 site1
focus both
color byhet
set subdivision 10
transparency 75,r
set flatTransparency
repr wire @ca
