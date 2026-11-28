#!/usr/bin/env bash

number=1

while [ "$number" -le 5 ]
do
	echo "Number : $number"
	number=$((number + 1))
done

echo "Loop Complete."
