#!/bin/bash

# Memory Threshold (% of Memory). Allows to tweak the threshold above which chrome tabs will be killed
MT=2

#Approach 1: To test on run time, works without checks
kill -9 $(ps -awxm -o %mem,cpu,pid,rss,vsz,comm | sort -nr | grep 'Google Chrome Helper' | awk -v mt=$MT '{if ($1 > mt ) print $3}')

#Approach 2: Works only when not on AC power
#if ! pmset -g batt | grep 'AC Power'
#then
#kill -9 $(ps -awxm -o %mem,cpu,pid,rss,vsz,comm | sort -nr | grep 'Google Chrome Helper' | awk -v mt=$MT '{if ($1 > mt ) print $3}')
#fi
