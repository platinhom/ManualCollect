#
#  Chimera command script showing green fluorescent protein (PDB 1gfl)
#
#  input file: 1gfl (fetched from PDB)
#
#  Movie-recording commands commented out with ##.
#  Recording will slow script execution.
#
2dlabels create lab1 text 'Green Fluorescent Protein' color light sea green size 26 xpos .03  ypos .92 visibility show
open noprefs 1gfl; del ~ :.a; del solvent; window; rep stick; rainbow; wait
#
#  Set Chimera display frame rate to match movie frame rate 
#  (see movie encode below) so that script execution speed 
#  will be as similar as possible to movie playback speed.
#
set maxframerate 25
##movie record
wait 50
chain @n,ca,c,o
wait 50
~disp; ribbon
2dlabels change lab1 visibility hide frames 90
2dlabels delete lab1
roll y 2 180; wait
ribrepr edged
roll y 1 90; wait
ribbackbone; repr sphere :1.a,230.a@ca; color white,a :1.a,230.a@ca; disp :1.a,230.a@ca
roll y 1 90; wait
scale 1.015 20; wait
disp :65-67.a; color byatom :65-67.a; repr cpk :65-67.a
clip hither -0.8 25; wait
wait 75
clip hither 0.8 25; wait
scale 0.98 10
disp :99.a,153.a,163.a,167.a,202.a,203.a,222.a;repr bs :99.a,153.a,163.a,167.a,202.a,203.a,222.a; ribsc licorice; ribrep smooth
wait 25
roll y 1 180; wait
wait 25
##movie stop
##movie encode framerate 25 output ~/Desktop/mymovie.mov
#
#  Go back to faster Chimera display frame rate.
#
set maxframerate 60
