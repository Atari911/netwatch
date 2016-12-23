#!/bin/bash

## This is basically a 'watch' wrapper for the 'net.sh' script.

NET=$HOME/./net.sh	# most likely you will need to make this right or change it

if [ -z $1 ]
	then watch -n 1 $NET
	else netstat $1
fi 
