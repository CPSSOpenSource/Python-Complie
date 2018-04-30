user_array=("CSB" "LMK" "KSB")
file_list=("prime" "fibo" "fileio")
for user in ${user_array[@]}
do
  for filename in ${file_list[@]}
  do
    echo -e "compling ${!user}/$filename.py"
    python "$TRAVIS_BUILD_DIR/${!user}/$WEEK/$filename.py"
  done
  echo -e "finished: ${!user}"
done
