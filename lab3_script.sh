#!/bin/bash
# Authors : Matthew Wu
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter File Name: "
read fileName
echo "Enter a regular expression: "
read pattern

#Problem 2
grep -E $pattern $fileName

#Problem 3
echo "Number of phone numbers:"
grep -c '^\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' regex_practice.txt

#Problem 4.1
echo "Number of emails:"
grep -E -o -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{3}\b" regex_practice.txt
#grep -E -o -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]\{3\}\b" regex_practice.txt

#Problem 4.2
echo "Phone numbers with 303 area code"
grep -c -o '^\((303)\|303\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' regex_practice.txt

#Problem 4.3
grep -E "\b[A-Za-z0-9._%+-]+@geocities.com" regex_practice.txt >> email_results.txt

#Problem 5
git add "email_results.txt"

#Problem 6
git commit -m "Emails from geocities.com"


