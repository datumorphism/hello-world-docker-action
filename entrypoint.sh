#!/bin/sh -l

# $1:bib-path
# $2:metadata-path
# $3:connections-path
# $4: map-path

echo "Using bib path $1; metadata path: $2; connections path: $3; map path: $4"
time=$(date)
echo "Starting at $time"
echo "Calculating connections from bib file..."
kirsche connections -sb $1 -c $3
echo "Visualizing ..."
kirsche visualization -sc $3 -th $4
echo "Finished"

