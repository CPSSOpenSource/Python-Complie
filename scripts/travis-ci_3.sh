#!/bin/bash
user_array=("CSB" "LMK" "KSB")
for user in ${user_array[@]}
do
  for index in $(seq 5)
  do
    cd ..
    PATH="$TRAVIS_BUILD_DIR/${!user}/$WEEK/level_$index.py"
    echo -e "compliing: $FILE_PATH"
    python $FILE_PATH
  done
  echo -e "finished: ${!user}"
done
