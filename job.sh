#!/bin/bash

kill -9 $(ps -awxm -o %mem,cpu,pid,rss,vsz,comm | sort -nr | grep 'Google Chrome Helper' | awk '{if ($1 > 2 ) print $3}')
