#!/bin/bash

function add() {
	a=$1
	b=$2
	c=$(($a+$b))
	echo $c
}

a=$1
b=$2
result="$( add $a $b )"		#calling statement
echo "Addition = "$result
