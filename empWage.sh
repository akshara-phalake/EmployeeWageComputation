#!/bin/bash 

empRatePerHr=20
isFullTime=1
isPartTime=2
totalWorkingDays=1
totalWorkingHrs=0
maxWorkingDays=20
totalSalary=0
maxWorkingHrs=100
declare -A dailyWage

function getWorkingHr(){
	 case $1 in
      $isFullTime)   empHrs=8
                  ;;
      $ispartTime)   empHrs=4
                  ;;
                *)   empHrs=0
                  ;;
   esac
	echo $empHrs
}

function getEmpWagePerDay(){
	echo $(($1 * $empRatePerHr))
}
while [[ $totalWorkingHrs -lt $maxWorkingHrs &&  $totalWorkingDays -le $maxWorkingDays ]]
do
	empCheck=$(( RANDOM%3))
	empHrs=$( getWorkingHr $empCheck )
	totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))
	dailyWage["day" $totalWorkingDays]=$(getEmpWagePerDay $empHrs)
	((totalWorkingDays++))
done
totalSalary=$(( $totalWorkingHrs * $empRatePerHr ))
echo "Total Salary = "$totalSalary

for ((day=1;day<=20;day++))
do
		echo day $day:${dailyWage[day $day]}
done
