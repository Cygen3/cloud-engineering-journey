#!/usr/bin/env bash

for number in 1 2 3 4 5 6 
do
	if [ "$number" -eq 4 ]; then
		continue
	fi

	echo "Number: $number"
done
echo "Continue example completed"
