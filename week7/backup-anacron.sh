#!/bin/bash
rm /home/rinri/edu/sna/funny-dir_*
FNAME="$(date '+/home/rinri/edu/sna/funny-dir_%b_%d_%Y_%H_%M_%S.tar.gz')"
tar caf "$FNAME" /home/rinri/edu/sna/funny-dir
