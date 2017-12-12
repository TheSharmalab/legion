#!/bin/bash -l

# Batch script to run a serial FreeSurfer job on Legion with the upgraded
# software stack under SGE. This version works with the modules
# environment upgraded in Oct 2015.

# FreeSurfer Version 5.3.0
# This version of FreeSurfer supports OpenMP

# 1. Force bash as the executing shell.
#$ -S /bin/bash

# 2. Request 1 hour of wallclock time (format hours:minutes:seconds).
#    Change this to suit your requirements.
#$ -l h_rt=48:00:0

# 3. Request 5G of RAM per core. Change this to suit your requirements.
#$ -l mem=8G

# 4. Set the name of the job. You can change this if you wish.
#$ -N FreeSurfer_job_1m

# 5. Select 4 threads (the most possible on the majority of Legion is 12). 
#$ -pe smp 4

# 7. Set the working directory to somewhere in your scratch space.  This is
# a necessary step with the upgraded software stack as compute nodes cannot
# write to your $HOME.
#
# NOTE: this directory must exist.
#
# Replace "<your_UCL_id>" with your UCL user ID :)
#$ -wd /home/rmjlns1/Scratch/FreeSurfer_output

# 8. Your work *must* be done in $TMPDIR 
cd $TMPDIR

# 9. Load FreeSurfer module and point to your subjects directory.
module load xorg-utils/X11R7.7
module load freesurfer/5.3.0
export SUBJECTS_DIR=/scratch/scratch/rmjlns1/shared/freesurfer_subjects/subjects

# 10. Run FreeSurfer programs - replace with your command(s)
#subject id is test_1
time recon-all -subject test_1 -all 
time recon-all -subject test_2 -all #......


