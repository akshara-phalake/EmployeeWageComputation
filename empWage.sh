#!/bin/bash

empRatePerHr=20
isFullTime=1
isPartTime=2
maxWorkingDays=20
totalSalary=0
for (( days=1;days<$maxWorkingDays; days++ ))
do
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
	totalSalary=$(( $totalSalary+$salary ))
done
echo "Total Salary = "$totalSalary
