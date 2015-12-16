
# Define the coloring procedure:
proc tutorialcoloring {} {
  
  # Get the molIDs of the first 2 molecules.
  set mol1 [lindex [molinfo list] 0]
  set mol2 [lindex [molinfo list] 1]  
  
  # Create our two sels
  set sel0 [atomselect $mol1 "alpha and protein"]   ;# crystal
  set sel1 [atomselect $mol2 "alpha and protein"]   ;# simulation

  # Create an empty list (for all the displacements)
  set mylist {} 
  
  # loop over the position vectors v1 and v2 for each atom:
  foreach v0 [$sel0 get {x y z}] v1 [$sel1 get {x y z}] {
    puts "$v0, $v1"
    puts "[lindex $v0 0] - [lindex $v1 0]"
    set dx [expr [lindex $v0 0] - [lindex $v1 0]]
    set dy [expr [lindex $v0 1] - [lindex $v1 1]]
    set dz [expr [lindex $v0 2] - [lindex $v1 2]]
    
    # Calculate displacement for a given atom
    set disp [expr ($dx*$dx + $dy*$dy + $dz*$dz)]
    
    #Add to big list
    lappend mylist $disp
  }
  
  # Assign the displacements to beta values of the crystal molecule  
  $sel0 set beta $mylist
  
}


# Run the procedure here
tutorialcoloring
