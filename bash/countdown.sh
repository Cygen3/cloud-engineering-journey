	#!/usr/bin/env bash

number=5

while [ "$number" -ge 1 ]
do
	echo "Countdown: $number"

	number=$((number - 1))
done

echo "Loop Complete."
