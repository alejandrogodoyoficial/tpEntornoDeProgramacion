#!/bin/bash

file=$1

sed 's/[A-Z]/\L&/g' <$file> /tmp/lowerCase

grep -E -o "\<[a-z]+\>" /tmp/lowerCase | sort | uniq > /tmp/temp

list=($(cat /tmp/temp))

for i in "${list[@]}"
do

    if [ ${#i} -gt 3 ]
    then


        amount=$(grep -E -o "\<$i\>" /tmp/lowerCase | wc -l) 
        echo "$amount-$i" >> /tmp/rep.txt
    fi
done

more /tmp/rep.txt | sort -n -r >> /tmp/rep

head -10 /tmp/rep

rm /tmp/rep /tmp/rep.txt /tmp/lowerCase /tmp/temp
unset list amount i
