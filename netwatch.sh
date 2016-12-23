#!/bin/bash

NET=$HOME/./net.sh

if [ -z $1 ]
	then watch -n 1 $NET
	else netstat $1
fi 
