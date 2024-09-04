#! /bin/env sh

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required: <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")
if [ ! -d "$writedir" ]; then
    mkdir -p "$writedir"
    if [ $? -ne 0 ]; then
        echo "Error: Directory '$writedir' could not be created."
        exit 1
    fi
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: File '$writefile' could not be created or written to."
    exit 1
fi

echo "File '$writefile' successfully created and written to."

