#!/bin/bash
user_array=("CSB" "LMK" "KSB")
for user in ${user_array[@]}
do
  for index in $(seq 5)
  do
    cd ..
    python "./${!user}/$WEEK/level_$index.py"
  done
  echo -e "finished: ${!user}"
done
