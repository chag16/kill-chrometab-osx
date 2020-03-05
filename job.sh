#!/bin/bash

# Memory Threshold (% of Memory). Allows to tweak the threshold above which chrome tabs will be killed
MT=2

kill -9 $(ps -awxm -o %mem,cpu,pid,rss,vsz,comm | sort -nr | grep 'Google Chrome Helper' | awk -v mt=$MT '{if ($1 > mt ) print $3}')
