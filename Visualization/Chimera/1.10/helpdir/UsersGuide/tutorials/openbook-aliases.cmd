#
# Chimera aliases used to test cutoff values for Opened Interface Image Tutorial
#
#  - save this file as plain text and open in Chimera to define the aliases
#  - note: alias commands are each one long line (careful if using copy/paste)
#
# for method 2 trials; assumes measure buriedArea calculation already done;
# example command-line usage: sesatest 1.5
#
alias ^sesatest color sea green #0.1; color medium purple #0.2; color yellow #0.1@/buriedSESArea>$1; color hot pink #0.2@/buriedSESArea>$1
alias ^sasatest color sea green #0.1; color medium purple #0.2; color yellow #0.1@/buriedSASArea>$1; color hot pink #0.2@/buriedSASArea>$1
#
# for method 3 trials; assumes saved position "closed" with bound configuration;
# example command-line usage: contest 3.0
#
alias ^contest ~color;color sea green #0.1;color medium purple #0.2;reset closed;measure contact #0.1 #0.2 $1 color yellow offset 0;measure contact #0.2 #0.1 $1 color hotpink offset 0
