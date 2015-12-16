windowsize 250 200
set shadows
open pubchem:12123; rep bs; shape rectangle width 17 height 15 widthdiv 100 heightdiv 100 rotation 0,1,1,90 center 1,2,2 color light green; turn z 45; wait
movie record supersample 3
wait 10
move z .035 100 mod 0; move x -.035 100 mod 0; turn y .5 100 mod 0; wait
scale .99 25; wait
wait 10
turn x 1 360 center @c3 mod 0; wait
wait 10
movie stop
movie encode ~/Desktop/tumble.mov ~/Desktop/tumble.ogv ~/Desktop/tumble.webm ~/Desktop/tumble.mp4 
copy png file ~/Desktop/tumble.png
