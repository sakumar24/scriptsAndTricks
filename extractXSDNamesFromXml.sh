#!/bin/bash

files=`find ../conf -name '*.xml' -type f`
count=0
for f in $files
do
	count=$((count+1))
	xsd=`cat $f | grep -P -o '(?<=schemaLocation="http://xmlns.ciphercloud.com/).*(?=")'`
	echo -e $f"="$xsd >> xsdFile.txt
done
echo "Processed "$count" files."
