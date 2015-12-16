#    Function 'createWater' creates a water molecule.
def createWater():

    #    Import the object that tracks open models and several
    #    classes from the 'chimera' module.
    from chimera import openModels, Molecule, Element, Coord

    #    Create an instance of a Molecule
    m = Molecule()

    #    Molecule contains residues.  For our example, we will
    #    create a single residue of HOH.  The four arguments are:
    #    the residue type, chain identifier, sequence number and
    #    insertion code.  Note that a residue is created as part
    #    of a particular molecule.
    r = m.newResidue("HOH", " ", 1, " ")

    #    Now we create the atoms.  The newAtom function arguments
    #    are the atom name and its element type, which must be
    #    an instance of Element.  You can create an Element
    #    instance from either its name or atomic number.
    atomO = m.newAtom("O", Element("O"))
    atomH1 = m.newAtom("H1", Element(1))
    atomH2 = m.newAtom("H2", Element("H"))

    #    Set the coordinates for the atoms so that they can be displayed.
    from math import radians, sin, cos
    bondLength = 0.95718
    angle = radians(104.474)
    atomO.setCoord(Coord(0, 0, 0))
    atomH1.setCoord(Coord(bondLength, 0, 0))
    atomH2.setCoord(Coord(bondLength * cos(angle), bondLength * sin(angle), 0))

    #    Next, we add the atoms into the residue.
    r.addAtom(atomO)
    r.addAtom(atomH1)
    r.addAtom(atomH2)

    #    Next, we create the bonds between the atoms.
    m.newBond(atomO, atomH1)
    m.newBond(atomO, atomH2)

    #    Finally, we add the new molecule into the list of
    #    open models.
    openModels.add([m])

#    Call the function to create a water molecule.
createWater()
