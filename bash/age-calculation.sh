#!/usr/bin/env bash

read -r -p "Enter Your Age: " age
if [ "$age" -ge 18 ]; then
	echo "Access granted"
else
	echo "Access Denied"
fi

echo "Program Finish"

