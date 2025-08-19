#!/bin/bash
echo "What's your name?"
read username
echo "Hello, $username"
read -p "Enter your age: " user_age
echo "You are $user_age years old"
read -s -p "Enter password: " password
echo 
echo "Password entered (hidden)"
