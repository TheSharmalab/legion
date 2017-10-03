#!/bin/bash

for n in {1..250} ;do
echo "time recon-all -subject cut_${n} -all" >> output.txt
done

