#!/bin/bash
# ___ Home work 17 ___
# скрипт, который будет бесконечно пинговать указанный адрес (переменная или ввод пользователя) с интервалом 1 секунда между попытками. Если время пинга превышает 100 мс или не удается выполнить пинг в течение 3 последовательных отправок пакетов, скрипт просто выведет сообщения об этом.
for ((i=0; i<50; i++)); do echo -ne "\e[33m.\e[m"; done; echo

# Requesting an address from the user: --> lms.itcareerhub.de
read -p "Enter the address to ping: " address
for ((i=0; i<50; i++)); do echo -ne "\e[33m.\e[m"; done; echo

# Initializing the failed ping counter:
fail_count=0

while true; do
	# Perform a ping and extract the ping time:
	ping_result=$(ping -c 1 $address | grep 'time=' | awk -F'time=' '{print $2}' | awk '{print $1}')
	if [[ -z $ping_result ]]; then
        ((fail_count++))
        	echo -e "\e[31mFailed\e[m to ping Number of failed attempts: \e[31m$fail_count\e[m"
	else
	# Reset the counter of unsuccessful attempts if the ping is successful
		fail_count=0

	# Checking ping time:
		if (( $(echo "$ping_result > 100" | bc -l) )); then
            		echo -e "Ping time exceeds 100 ms: \e[33m$ping_result\e[m ms"
		else
            		echo -e "Ping time is normal: \e[32m$ping_result\e[m ms"
		fi
	fi

	# If the number of unsuccessful attempts reaches 3, we display a message and exit the loop:
	if [ $fail_count -ge 3 ]; then
		for ((i=0; i<50; i++)); do echo -ne "\e[0m_\e[m"; done; echo
        	echo -e "Ping failed 3 times in a row. \e[31mScript terminated.\e[m"
		break
	fi

	# Wait 1 second before trying again:
	sleep 1
done
for ((i=0; i<50; i++)); do echo -ne "\e[0m_\e[m"; done; echo

