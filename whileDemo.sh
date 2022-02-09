#!/bin/bash 

count=1
while [ $count -le 5 ]
do
	var=$(( $count*2 ))
	echo $var
	((count++))
done
