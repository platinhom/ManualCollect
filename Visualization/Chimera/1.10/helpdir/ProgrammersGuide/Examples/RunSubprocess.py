#     Class 'CountAtoms' assigns two attributes, "numAtoms" and "numHetatms",
#     to a molecule by exporting the molecule as a PDB file and running
#     the "grep" program twice.  The "grep" invocations are run in the
#     background so that Chimera stays interactive while they execute.
class CountAtoms:

    #    The constructor sets up a temporary file for the PDB output,
    #    and a Chimera task instance for showing progress to the user.
    def __init__(self, m, grepPath):

	#    Generate a temporary file name for PDB file.
	#    We use Chimera's 'osTemporaryFile' function
	#    because it automatically deletes the file when
	#    Chimera exits.
	import OpenSave
	self.pdbFile = OpenSave.osTemporaryFile(suffix=".pdb", prefix="rg")
	self.outFile = OpenSave.osTemporaryFile(suffix=".out", prefix="rg")

	#    Write molecule in to temporary file in PDB format.
	self.molecule = m
	import Midas
	Midas.write([m], None, self.pdbFile)

	#    Set up a task instance for showing user our status.
	from chimera import tasks
	self.task = tasks.Task("atom count for %s" % m.name, self.cancelCB)

	#    Start by counting the ATOM records first.
	self.countAtoms()

    #    'cancelCB' is called when user cancels via the task panel
    def cancelCB(self):
	self.molecule = None

    #    'countAtoms' uses "grep" to count the number of ATOM records.
    def countAtoms(self):
	from chimera import SubprocessMonitor as SM
	self.outF = open(self.outFile, "w")
	self.subproc = SM.Popen([ grepPath, "-c", "^ATOM", self.pdbFile ], stdout=self.outF)
	SM.monitor("count ATOMs", self.subproc, task=self.task, afterCB=self._countAtomsCB)

    #    '_countAtomsCB' is the callback invoked when the subprocess
    #    started by 'countAtoms' completes.
    def _countAtomsCB(self, aborted):

	#    Always close the open file created earlier
	self.outF.close()

	#    If user canceled the task, do not continue processing.
	if aborted or self.molecule is None:
	    self.finished()
	    return

	#    Make sure the process exited normally.
	if self.subproc.returncode != 0 and self.subproc.returncode != 1:
	    self.task.updateStatus("ATOM count failed")
	    self.finished()
	    return

	#    Process exited normally, so the count is in the output file.
	#    The error checking code (in case the output is not a number)
	#    is omitted to keep this example simple.
	f = open(self.outFile)
	data = f.read()
	f.close()
	self.molecule.numAtoms = int(data)

	#    Start counting the HETATM records
	self.countHetatms()

    #    'countHetatms' uses "grep" to count the number of HETATM records.
    def countHetatms(self):
	from chimera import SubprocessMonitor as SM
	self.outF = open(self.outFile, "w")
	self.subproc = SM.Popen([ grepPath, "-c", "^HETATM", self.pdbFile ], stdout=self.outF)
	SM.monitor("count HETATMs", self.subproc, task=self.task, afterCB=self._countHetatmsCB)

    #    '_countHetatmsCB' is the callback invoked when the subprocess
    #    started by 'countHetatms' completes.
    def _countHetatmsCB(self, aborted):

	#    Always close the open file created earlier
	self.outF.close()

	#    If user canceled the task, do not continue processing.
	if aborted or self.molecule is None:
	    self.finished()
	    return

	#    Make sure the process exited normally.
	if self.subproc.returncode != 0 and self.subproc.returncode != 1:
	    self.task.updateStatus("HETATM count failed")
	    self.finished()
	    return

	#    Process exited normally, so the count is in the output file.
	#    The error checking code (in case the output is not a number)
	#    is omitted to keep this example simple.
	f = open(self.outFile)
	data = f.read()
	f.close()
	self.molecule.numHetatms = int(data)

	#    No more processing needs to be done.
	self.finished()

    #    'finished' is called to clean house.
    def finished(self):

	#    Temporary files will be removed when Chimera exits, but
	#    may be removed here to minimize their lifetime on disk.
	#    The task instance must be notified so that it is labeled
	#    completed in the task panel.
	self.task.finished()

	#    Set instance variables to None to release references.
	self.task = None
	self.molecule = None
	self.subproc = None

#    Below is the main program.  First, we find the path to
#    the "grep" program.  Then, we run CountAtoms for each molecule.
from CGLutil import findExecutable
grepPath = findExecutable.findExecutable("grep")
if grepPath is None:
    from chimera import NonChimeraError
    raise NonChimeraError("Cannot find path to grep")

#    Add "numAtoms" and "numHetatms" attributes to all open molecules.
import chimera
from chimera import Molecule
for m in chimera.openModels.list(modelTypes=[Molecule]):
    CountAtoms(m, grepPath)
