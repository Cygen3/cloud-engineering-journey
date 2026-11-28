#!/usr/bin/env bash

echo "Enter Your age"
read age

echo "Checking Age...."

if [ "$age" -ge 18 ]; then
	echo "Access granted."
fi

echo "Program Completed."
