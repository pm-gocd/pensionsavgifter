#!/usr/bin/env bash
set -e
mkdir -p output/arbetsgivaravgift_och_egenavgift
inkomst=$(cat upstream/output/lon/res.txt)
res=$(echo "scale=0; (${inkomst} * 0.1021) / 1" | bc -l)
echo ${res} > output/arbetsgivaravgift_och_egenavgift/res.txt
