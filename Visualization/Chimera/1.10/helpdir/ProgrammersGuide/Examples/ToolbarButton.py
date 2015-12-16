#    Function 'mainchain' sets the display status of atoms
#    and requires no arguments.  The body of the function is
#    identical to the example described in
#    "Molecular Editing Using Python".
#
#    .. "Molecular Editing Using Python" MolecularEditing.html
def mainchain():
    #    Note that due to a fairly arcane Python behavior, we need to
    #    import modules used by a (script) function inside the function itself
    #    (the local scope) rather than outside the function (the
    #    global scope).  This is because Chimera executes scripts in a
    #    temporary module so that names defined by the script don't
    #    conflict with those in Chimera's main namespace.  When the
    #    temporary module is deleted, Python sets all names in the
    #    module's global namespace to 'None'.  Therefore, by the time
    #    this function is executed (by the toolbar button callback)
    #    any modules imported in the global namespace would have the
    #    value 'None' instead of being a module object.

    #    The regular expression module, 're', is used for matching atom names.
    import re

    #    Import the object that tracks open models and the Molecule
    #    class from the 'chimera' module.
    from chimera import openModels, Molecule

    mainChain = re.compile("^(N|CA|C)$", re.I)
    for m in openModels.list(modelTypes=[Molecule]):
        for a in m.atoms:
            a.display = mainChain.match(a.name) != None

#    Need to import the 'chimera' module to access the function to
#    add the icon to the toolbar.
import chimera

#    Create a button in the toolbar.
#    The first argument to 'chimera.tkgui.app.toolbar.add' is the icon,
#    which is either the path to an image file, or the name of a standard
#    Chimera icon (which is the base name of an image file found in the
#    "share/chimera/images" directory in the Chimera installation directory).
#    In this case, since 'ToolbarButton.tiff' is not an absolute path, the
#    icon will be looked for under that name in both the current directory
#    and in the Chimera images directory.
#    The second argument is the Python function to be called when the button
#    is pressed (a.k.a., the "callback function").
#    The third argument is a short description of what the button does
#    (used typically as balloon help).
#    The fourth argument is the URL to a full description.
#    For this example the icon name is 'ToolbarButton.tiff';
#    the Python function is 'mainchain';
#    the short description is "Show Main Chain";
#    and there is no URL for context help.
chimera.tkgui.app.toolbar.add('ToolbarButton.tiff', mainchain, 'Show Main Chain', None)

