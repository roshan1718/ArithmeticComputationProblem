#!/bin/bash -x

# @Description : Arithmatic Computation Problem
# @Author :  Roshan Balkrushna Shinde
# @Since : 18-03-2020 
function input()
{
	read -p "Enter First Number" numberOne
	read -p "Enter Second Number" numberTwo
	read -p "Enter Third Number" numberThree
}

function firstEquation()
{
	#Expression a+b*c
	input
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
	echo "a+b*c result is ::"$firstEquationResult
}
firstEquation
