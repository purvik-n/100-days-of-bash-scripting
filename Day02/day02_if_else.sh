#!/bin/bash
age=18
if [ $age -ge 18 ]; then
	echo "You are an adult"
else
	echo "You are minor"
fi
score=85
if [ $score -ge 90 ]; then
	echo "Grade: A"
elif [ $score -ge 80 ]; then
	echo "Grade: B"
elif [ $score -ge 70 ]; then
	echo "Grade: C"
else
	echo "Grade: F"
fi
username="admin"
if [ "$username" = "admin" ]; then
	echo "Welcome, administrator!"
else
	echo "Regular user access"
fi
