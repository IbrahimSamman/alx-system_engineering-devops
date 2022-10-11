#!/bin/bash

shebang='#!/bin/bash'
script="$1"

echo "script is ${script}"

fileName=$2

echo "file name is ${fileName}"

if [ -f $fileName ]; then
	rm $fileName
fi
		
fileText="${shebang}\n${script}\n"

echo "Full script is: ${fileText}"

printf "$fileText" > $fileName

chmod u+rx $fileName
