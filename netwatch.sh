#!/bin/bash

## This is basically a 'watch' wrapper for the 'net.sh' script.

NET=$HOME/./net.sh	# most likely you will need to make this right or change it

## Wrap the script in a watch command unless there is an argument in which case run 'netstat' with said argument.
if [ -z $1 ]
	then watch -n 1 $NET	# run the 'net.sh' script and refresh every second
	else netstat $1		# if an argument is present then append it to the 'netstat' command
fi 
