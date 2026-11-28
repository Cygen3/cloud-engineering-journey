#!/usr/bin/env bash

get_student_name(){
	echo "Rahul"
}

name=$(get_student_name)

echo "Student name: $name"

check_number(){
	return 1
}

check_number
status=$?

echo "Function Exit Status: $status"


