#!/bin/bash
rm /home/rinri/edu/sna/nginx-www_*
FNAME="$(date '+/home/rinri/edu/sna/nginx-www_%b_%d_%Y_%H_%M_%S.tar.gz')"
tar caf "$FNAME" /var/www/
