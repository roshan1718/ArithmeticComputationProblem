#!/bin/bash -x

# @Description : Arithmatic Computation Problem
# @Author :  Roshan Balkrushna Shinde
# @Since : 18-03-2020 

storeResult=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 )

function getInputs()
{
read -p "Enter First Number" numberOne
read -p "Enter Second Number" numberTwo
read -p "Enter Third Number" numberThree

firstEquation
secondEquation
thirdEquation
fourthEquation
}

function firstEquation()
{
	# Expression a+b*c
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
	storeResult[1]=$firstEquationResult
}

function secondEquation()
{
	# Expression a*b+c
	secondEquationResult=$(( $numberOne * $numberTwo + $numberThree ))
	storeResult[2]=$secondEquationResult
}

function thirdEquation()
{
	# Expression c+a/b
	thirdEquationResult=`expr "scale=2; $numberThree + $numberOne / $numberTwo "|bc`
	storeResult[3]=$thirdEquationResult
}

function fourthEquation()
{
	# Expression a%b+c
	fourthEquationResult=$(($numberOne % $numberTwo + $numberThree ))
	storeResult[4]=$fourthEquationResult
}


function readValuesToArray()
{
	for ((index=0; index<=${#storeResult[@]}; index++ ))
	do
		arrayElements[index]=${storeResult[$index]}
	done
}
getInputs
readValuesToArray
echo "-------------------------------"
echo "Dictionary Element is::"
echo ${!storeResult[@]}
echo ${storeResult[@]}
echo "-------------------------------"
echo "Array Element is ::"${arrayElements[@]}
echo "-------------------------------"
