#!/bin/bash
#
#
echo "Bash Variables --> Local variables"
# https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html
# https://medium.com/@manyi.yim/the-date-command-in-bash-a8931cc4a5eb
#
STR1="______ Example "
STR2=" ______"
echo $STR1 1 $STR2
echo
date -d today
echo

echo $STR1 2 $STR2
echo
VAR1="I am"
VAR2="here!"
echo $VAR1 $VAR2
echo

echo $STR1 3 $STR2
echo
echo "We'll see again in 2 weeks, on: " 
date -d "today + 16 day"

echo $STR1 4 $STR2
echo
pwd
ls -lh
