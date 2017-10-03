#!/bin/bash

# The ratio for this is 1 to 5. It will generate a recon all for 5 subjects per lines. Therefore 250 subjects is 50 (250/5) and then add on the jump required.
for n in {1..50} ;do
echo time recon-all -subject "cut_${n} -all ;"  time recon-all -subject "cut_$((n+50)) -all ;" time recon-all -subject "cut_$((n+100))-all ; " time recon-all -subject "cut_$((n+150)) -all ;" time recon-all -subject " cut_$((n+200)) -all ;"  >> output.txt
done




