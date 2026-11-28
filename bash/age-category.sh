#!/usr/bin env bash
read -r -p "Enter Your Age: " age
if [ "$age" -lt 13 ]; then
	echo "You are child."
elif [ "$age" -lt 18 ]; then
	echo "You are teenager."
else
	echo "You are Adualt."
fi

