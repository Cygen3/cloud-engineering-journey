
#!/usr/bin/env bash

read -r -p  "Enter a number: " limit

if [ "$limit" -ge 1 ]; then
	number=1
	while [ "$number" -le "$limit" ]; do

	if [ "$number" -eq 5 ]; then
		number=$((number + 1))
		continue
	fi

	if [ "$number" -eq 10 ]; then
		echo "Stopping at $number"
		break
	fi

	echo "Number: $number"

	number=$((number + 1))
done

else
echo "Please Enter a number gater than zero."
fi

echo "program completed."


