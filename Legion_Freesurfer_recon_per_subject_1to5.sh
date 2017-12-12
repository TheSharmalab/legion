#!/bin/bash

# The ratio for this is 1 to 5. It will generate a recon all for 5 subjects per lines. Therefore 250 subjects is 50 (250/5) and then add on the jump required.
# The output file is $SUBJECTS_DIR/catch_errors.txt. 
# The error catch is   "&& echo cut_${n} "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_${n} "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt "

for n in {1..50} ;do
echo time recon-all -subject "cut_${n} -all && echo cut_${n} "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_${n} "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt ; "  time recon-all -subject "cut_$((n+50)) -all && echo cut_$((n+50)) "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_$((n+50) "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt;" time recon-all -subject "cut_$((n+100))-all && echo cut_$((n+100)) "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_$((n+100) "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt; " time recon-all -subject "cut_$((n+150)) -all && echo cut_$((n+150)) "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_$((n+150) "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt ; " time recon-all -subject " cut_$((n+200)) -all && echo cut_$((n+200)) "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_$((n+200))"has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt "  
done




