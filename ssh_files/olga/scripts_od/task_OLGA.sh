#!/bin/bash

date=$(date +'%d.%m.%y')

task_dir="/opt/111124-ptm/olga"

cd "$task_dir"

for i in {1..10}; do
	touch "${i}_${date}"
done
