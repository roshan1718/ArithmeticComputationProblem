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

findResult
}

function findResult()
{	# Expression a+b*c
	firstEquationResult=`expr "scale=2; $numberOne + $numberTwo * $numberThree" | bc -l`
	storeResult[1]=$firstEquationResult

	# Expression a*b+c
	secondEquationResult=`expr "scale=2; $numberOne * $numberTwo + $numberThree " | bc -l`
	storeResult[2]=$secondEquationResult

	# Expression c+a/b
	thirdEquationResult=`expr "scale=2; $numberThree + $numberOne / $numberTwo " | bc -l`
	storeResult[3]=$thirdEquationResult

	# Expression a%b+c
	fourthEquationResult=`expr "scale=2; $numberOne % $numberTwo + $numberThree " | bc -l`
	storeResult[4]=$fourthEquationResult
}

function readValuesToArray()
{
	for ((index=0; index<=${#storeResult[@]}; index++ ))
	do
		arrayElements[index]=${storeResult[$index]}
	done
	echo "Array Element is ::"${arrayElements[@]}
}



function descendingSort()
{
	temp=0
	for ((index=0; index<${#arrayElements[@]}; index++ ))
	do
		for ((counter=index+1; counter<${#arrayElements[@]}; counter++ ))
		do
			if [[ ${arrayElements[index]%.*} -lt ${arrayElements[counter]%.*} ]]
			then
				temp=${arrayElements[index]}
				arrayElements[index]=${arrayElements[counter]}
				arrayElements[counter]=$temp
			fi
		done
	done
	echo Array In Descending Order..${arrayElements[@]}
}



getInputs
readValuesToArray
descendingSort
