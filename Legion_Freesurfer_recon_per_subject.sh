#!/bin/bash
SUBJECTS_DIR=/scratch/scratch/rmjlns1/shared/freesurfer_subjects/subjects
for n in {1..250} ;do
echo "time recon-all -subject cut_${n} -all && echo cut_${n} "is processed" >> $SUBJECTS_DIR/catch_errors.txt || echo cut_${n} "has CRASHED" >> $SUBJECTS_DIR/catch_errors.txt
done

