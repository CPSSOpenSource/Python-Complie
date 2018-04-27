user_array=("CSB" "LMK" "KSB")
for user in ${user_array[@]}
do
  for index in $(seq 2)
  do
    echo -e "compling ${!user}/level_$index.py"
    python "$TRAVIS_BUILD_DIR/${!user}/$WEEK/level_$index.py"
  done
  echo -e "finished: ${!user}"
done
