#!/bin/bash
# Authors : Matthew Wu
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter File Name: "
read fileName	#stores input
echo "Enter a regular expression: "
read pattern	#stores input

#Problem 2
grep -E $pattern $fileName	#execute grep using user input

#Problem 3
echo "Number of phone numbers:"
grep -c '^\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' regex_practice.txt	#call grep using regex for phone numbers and print count

#Problem 4.1
echo "Number of emails:"
grep -E -o -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{3}\b" regex_practice.txt	#call grep using regex for emails and print count

#Problem 4.2
echo "Phone numbers with 303 area code:"
grep -o '^\((303)\|303\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' regex_practice.txt	#call grep using regex for 303 phone numbers and print results

#Problem 4.3
grep -E "\b[A-Za-z0-9._%+-]+@geocities.com" regex_practice.txt >> email_results.txt #call grep to find all geocities emails and store in email_results.txt

#Problem 5
git add "email_results.txt"	#stage file of email results

#Problem 6
git commit -m "Emails from geocities.com"	#commit file
echo "test"


