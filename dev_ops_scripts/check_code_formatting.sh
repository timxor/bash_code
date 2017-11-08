#!/bin/bash
################################
# check_code_formatting.sh
################################

# remove path and extension from filename
get_base_name () {
  eval "basename $1"
}

# download google java format library
if [ -e google-java-format-1.5-all-deps.jar ]
then
else
  echo "downloading google java format library"
  wget -N https://github.com/google/google-java-format/releases/download/google-java-format-1.5/google-java-format-1.5-all-deps.jar
fi

# gather the changed files to test
files=( $(git show --pretty="format:" --name-only) )

# for loop over files
for i in $files; do

  # get file names and paths
  file_name=$(get_base_name "$i")
  full_file_name="$(pwd -P)/$i"
  formated_file="$(pwd -P)/Formated_$file_name"

  # run formatter on file and write to new file
  java -jar google-java-format-1.5-all-deps.jar $full_file_name > $formated_file

  # run diff
  if ! cmp $full_file_name $formated_file >/dev/null 2>&1
  then
    echo "Incorrect code formatting detected in file: $file_name"
    exit 1
  fi

done
exit 0
