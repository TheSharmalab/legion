#!/bin/bash

# The ratio for this is 1 to 5. It will generate a recon all for 5 subjects per lines. Therefore 250 subjects is 50 (250/5) and then add on the jump required.
for n in {1..50} ;do
echo time recon-all" cut_${n}_mprage.nii.gz ;" time recon-all" cut_$((n+50))_mprage.nii.gz ;" time recon-all" cut_$((n+100))_mprage.nii.gz ;" time recon-all" cut_$((n+150))_mprage.nii.gz ;" time recon-all" cut_$((n+200))_mprage.nii.gz ;"  >> output.txt
done