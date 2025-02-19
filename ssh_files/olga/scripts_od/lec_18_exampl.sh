#!/bin/bash

CURRENT_DIR$(pwd)
echo "Привет! Этот скрипт покажет информацию о каждом файле в текущем
каталоге."
cd $CURRENT_DIR
for FILE in *
do
# Проверяем, является ли файл директорией
if [ -d "$FILE" ]; then
echo "$FILE - это директория"
else
echo "$FILE - это файл"
fi
done

echo "Скрипт успешно выполнен!"
