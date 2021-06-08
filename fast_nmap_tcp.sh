#!/bin/bash

if [ $# -ne 2 ]
then
	echo "No target supplied or output file supplied.";
	echo "$0 <target> <output file>"
	exit 1;
fi

TARGET=$1
OUTPUT_FILE=$2
commonports=$(nmap --min-rate=1000 -T4 -Pn $TARGET | grep "^[0-9]" | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//);
echo "COMMON PORT SCAN FOUND PORTS: $commonports"
ports=$(nmap -p- --min-rate=1000 -T4 -Pn $TARGET | grep "^[0-9]" | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//);
echo "DETAILED SCAN FOUND PORTS: $ports"
nmap -p$ports -oN "$OUTPUT_FILE" -Pn -sV --script=default $TARGET;
