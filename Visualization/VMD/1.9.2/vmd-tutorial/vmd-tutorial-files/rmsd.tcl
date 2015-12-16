# This script compares the rmsd between frames in a trajectory with respect to the first.

set outfile [open rmsd.dat w];                                             

set nf [molinfo top get numframes]
set frame0 [atomselect top "protein and backbone and noh" frame 0]

# rmsd calculation loop
for {set i 1 } {$i < $nf } { incr i } {
    set sel [atomselect top "protein and backbone and noh" frame $i]
    set all [atomselect top all frame $i]
    $all move [measure fit $sel $frame0]
    puts $outfile "[measure rmsd $sel $frame0]"
}

close $outfile

