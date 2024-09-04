#! /bin/env sh


if [ $# -ne 2 ]
then
  echo "the number of arguments needs to be two: <directory> <search string>"
  exit 1
fi


file=$1
string=$2


if [ ! -d "$file" ]
then
  echo "is not a directory"
  exit 1
fi



num_files=$(find "$file" -type f | wc -l)


matching_lines=$(grep -rI "$string" "$file" | wc -l)



echo "The number of files are $num_files and the number of matching lines are $matching_lines"
