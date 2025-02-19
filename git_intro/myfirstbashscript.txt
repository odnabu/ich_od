#!/bin/bash
#
# ------------------------ Task 3 ------------------------
USER=OLGA
#
# ----------------------- Task 4.a -----------------------
DATE=`date '+%d-%m-%y'`
echo "    Today is:  $DATE"
echo
#
# ----------------------- Task 4.b -----------------------
echo "    Hello  $USER!"
echo
#
# ----------------------- Task 4.c -----------------------
echo "    You are here now:" `pwd`
echo
#
# ----------------------- Task 4.d -----------------------
ps -ef | grep -wv '^bioset' | wc -l | awk '{printf "    The NUMBER of processes running under the name _bioset_: %s.\n", $1}'
echo
#
# ----------------------- Task 4.e -----------------------
ls -la /etc/passwd | grep -w 'passwd$' | awk '{printf "    The access permissions and the special mode flags of the file _passwd_: %s.\n", $1}'
echo
#
