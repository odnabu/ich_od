#!/bin/bash
# Separator for blocks of text:
for ((i=0; i<120; i++)); do echo -ne "\e[33m.\e[m"; done; echo
# Task:
echo -e "\t\033[33mCписок прав на файлы внутри директории /opt/111124-ptm, \n\tи если среди них есть файлы sh, то добавит им права на исполнение.\033[m\n"
# see Linux & Git 18: Работа со скриптами, Конспект урока -- Linux_LfS11.pdf

# Defining of Directory:
task_dir=/opt/111124-ptm

cd $task_dir

# Просматриваю права фалов в папке /opt/111124-ptm:
for FILE in $task_dir/*
#    do ls -l "$FILE"
    do ls -l "$FILE"/* | grep -E --color=always "x|-|m/" | awk '{printf "\033[36m%s\033[36m - %s \n", $1,$9}'
done

# Separator for text blocks:
for ((i=0; i<120; i++)); do echo -ne "\e[33m.\e[m"; done; echo

echo -e "\t<<<\t\e[33mCHANGING  PERMISSIONS:\e[m\t>>>\n"

for FILE in */*; do
   # Проверяем, является ли файл .sh файлом:
   if [[ $FILE == *.sh ]]; then
        # Проверяем, установлены ли права на исполнение:
        if [[ -x $FILE ]]; then
           echo -e "File is executable: \e[32m$FILE\e[m"
        else
           # Добавляем права на исполнение, если они установлены:
           chmod +x "$FILE"
           echo -e "Changed permissions to execute: \e[31m$FILE\e[m"
fi; fi
done;
#       echo "Changing permissions for .sh-files in directory $task_dir to execution state is done."
#           ls -l "$FILE"
#
