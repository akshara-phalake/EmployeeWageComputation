#!/bin/bash

isPresent=1
empRatePerHr=20
isFullTime=8
randomCheck=$(( RANDOM%2 ))
if [ $randomCheck -eq $isPresent ]
then
	salary=$(($empRatePerHr * $isFullTime ))
else
	salary=0
fi
echo "Salary = "$salary
