#!/bin/bash

# Определяем директорию:
task_dir="/opt/111124-ptm"
cd "$task_dir" || { echo "Не удалось перейти в директорию $task_dir"; exit 1; }

for FILE in *; do
    # Проверяем, является ли файл .sh файлом:
    if [[ "$FILE" == *.sh ]]; then
        # Добавляем права на исполнение, если они не установлены:
        if [[ -x "$FILE" ]]; then
            echo "File is executable: $FILE"
        else
            chmod a+x "$FILE"
            echo "Changed permissions to execute for: $FILE"
        fi
    fi
done

