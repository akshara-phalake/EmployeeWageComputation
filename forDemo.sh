#!/bin/bash

for (( count=1; count<=10; count++ ))
do
	var=$(( count*2 ))
	echo $var
done
