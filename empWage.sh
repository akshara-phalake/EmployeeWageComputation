#!/bin/bash 

empRatePerHr=20
isFullTime=1
isPartTime=2
totalWorkindDays=0
totalWorkingHrs=0
maxWorkingDays=20
totalSalary=0
maxWorkingHrs=100

function getWorkingHr(){
	 case $empCheck in
      $isFullTime)   empHrs=8
                  ;;
      $ispartTime)   empHrs=4
                  ;;
                *)   empHrs=0
                  ;;
   esac
	echo $empHrs
}

while [[ $totalWorkingHrs -lt $maxWorkingHrs &&  $totalWorkingDays -le $maxWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3))
	empHrs=$( getWorkingHr $empCheck )
	totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))
done	
totalSalary=$(( $totalWorkingHrs * $empRatePerHr))	
echo "Total Salary = "$totalSalary
