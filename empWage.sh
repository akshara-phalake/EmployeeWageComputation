#!/bin/bash

empRatePerHr=20
isFullTime=1
isPartTime=2
empCheck=$(( RANDOM%3 ))
case $empCheck in 
	$isFullTime)	empHrs=8
						;;
	$ispartTime)	empHrs=4
						;;
	          *)	empHrs=0
						;;
esac
salary=$(($empRatePerHr * $empHrs ))
echo "Salary = "$salary
