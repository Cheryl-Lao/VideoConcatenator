#!/bin/bash
for f in ./$1/*; do echo "file '$f'" >> filesToConcatenate.txt; done
ffmpeg -f concat -safe 0 -i filesToConcatenate.txt -c copy $1Concatenated.mp4
