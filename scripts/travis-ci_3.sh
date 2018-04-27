#!/bin/bash
user_array=("CSB" "LMK" "KSB")
for user in ${user_array[@]}
do
  for index in $(seq 5)
  do
    cd ..
    CURRENT=$TRAVIS_BUILD_DIR/${!user}/$WEEK/level_$index.py
    echo -e "compliing: $CURRENT\n"
    python $CURRENT
  done
  echo -e "finished: ${!user}"
done
