#!/bin/bash

# __ 1, 2 task - скрипт, который будет 10 раз с интервалом в 5 секунд писать дату в формате HH:MM:SS и количество процессов одним числом. 
TIME_NOW=$(date +"%H:%M:%S")
PROC_NUMB=$(ps -ef | wc -l)

echo -e "... Task 1, 2 ................................................\n"

for i in {1..5}
do
	# Time now and Number of processes:
	echo -e "  Time:  $TIME_NOW \tNumb. of proc.:  $PROC_NUMB"
	sleep 1
done
 echo -e ".............................................................\n"

# __ Task 3 - запишите в файл информацию о процессоре:
echo -e "... Task 3 ...................................................\n\nProcessor:\n..............................................................\n" > comp-sys-info.txt
cat /proc/cpuinfo >> comp-sys-info.txt

# __ Task 4 - запишите в файл информацию об операционной системе, но отфильтруйте информацию так, чтобы осталось только имя (NAME=Alpine Linux) - или другое имя, если работаете на сервере.
echo -e "... Task 4, 5 ................................................\n\nOperational system:\n..............................................................\n" >> comp-sys-info.txt
cat /etc/os-release | grep PRETTY_NAME |awk -F'"' '{print $1$2}'  >> comp-sys-info.txt

# __ Task 5 - Выполните прошлое действие, но так, чтобы слово NAME= не осталось, а было только имя в чистом виде (Alpine).
echo -e "=================\n\nName of OS:  " >> comp-sys-info.txt
cat /etc/os-release | grep PRETTY_NAME |awk -F'"' '{print $2}' >> comp-sys-info.txt
echo -e "=================\n" >> comp-s    ys-info.txt

# __ Task 6 - создайте 50 файлов с расширением txt и именами от 50.txt до 100.txt.
DIR_NAME="hw15_task6"

if [ -d "$DIR_NAME" ]; then
    # Если папка $DIR_NAME уже существует, очищаю её содержимое:
    rm -r "$DIR_NAME"/*
else
    # Если папка $DIR_NAME не существует, создаю её:
    mkdir "$DIR_NAME"
fi


echo -e "... Task 6 ...................................................\n\nCreating 10 files in directory hw15_task6... "
for i in {5..14}
do
	if [[ $i -lt 10 ]]; then
		touch /opt/111124-ptm/olga/scripts_od/hw15_task6/"0$i.txt"
		echo "File 0$i.txt created"
	else
		touch /opt/111124-ptm/olga/scripts_od/hw15_task6/"$i.txt"
		echo "File $i.txt created"
	fi
	#echo "File $i.txt created"
done
echo -e "------------------------------------\nEnd of tasks from script sleeper.sh\n------------------------------------\n"

